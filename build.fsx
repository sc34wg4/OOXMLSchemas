#r "paket:
nuget Fake.IO.FileSystem
nuget System.Xml.Linq
nuget System.Xml.XPath
nuget Fake.Core.Target  //"
#load "./.fake/build.fsx/intellisense.fsx"


open Fake.Core
open Fake.IO.Globbing.Operators
open Fake.IO
open System.IO
open System.Xml
open System.Xml.Linq
open System.Xml.XPath


// Properties
let origRncDir = "./"
let origRngDir = "./rng/"
let rewrittenRngDir = "./rewrittenRng/"
let analysisDir = "./analysis/"
let javaCommand = "c:/Program Files (x86)/Common Files/Oracle/Java/javapath/java.exe"


let modifyAttributeNamesInRngSchema (sourceRngFile: string) (targetRngFile: string)  =
    let rng = XDocument.Load(sourceRngFile)
    let nav = rng.CreateNavigator()
    let manager = new XmlNamespaceManager(nav.NameTable)
    manager.AddNamespace("rng", "http://relaxng.org/ns/structure/1.0")
    rng.XPathSelectElements("//rng:attribute[@name]", manager)
    |> Seq.iter (fun att -> 
        let definedName = att.XPathSelectElement("ancestor::rng:define[@name]", manager).Attribute(XNamespace.None + "name").Value
        let attName = att.Attribute(XNamespace.None + "name").Value
        att.SetAttributeValue(XNamespace.None + "name", attName+"__"+definedName))
    rng.Save(targetRngFile)

let extractElemAttPairs (fanSchema: string) (pairsFileName: string) =
    let sw = new StreamWriter(File.Create(pairsFileName))
    let rng = XDocument.Load(fanSchema)
    let nav = rng.CreateNavigator()
    let manager = new XmlNamespaceManager(nav.NameTable)
    manager.AddNamespace("rng", "http://relaxng.org/ns/structure/1.0")
    rng.XPathSelectElements("//rng:attribute[@name]", manager)
    |> Seq.iter (fun att -> 
        let defineElement = att.XPathSelectElement("ancestor::rng:element[@name]", manager)
        let [|attLocalName; ruleName|] = att.Attribute(XNamespace.None + "name").Value.Split([|"__"|], System.StringSplitOptions.None)
        let attNsName = att.Attribute(XNamespace.None + "ns").Value
        let elemLocalName = defineElement.Attribute(XNamespace.None + "name").Value
        let elemNsName = defineElement.Attribute(XNamespace.None + "ns").Value
        fprintfn sw "%s,%s,%s,%s,%s" attNsName attLocalName ruleName elemNsName elemLocalName)
    sw.Close()

let parseLine (line:string) = 
    match line.Split(',') with
    | [|attNsName; attLocalName; ruleName; elemNsName; elemLocalName|] ->
        ((attNsName, attLocalName, ruleName), (elemNsName, elemLocalName))
    | _ -> failwith "incorrect line"

let group (pairs: seq<(string * string * string) * (string * string)>) =
    let keys = Set.ofSeq (Seq.map fst pairs)
    seq [for k in keys do
            let elems =
                seq [for (att, elem) in pairs do
                        if att = k then yield elem]
            yield (k,  Seq.sortWith compare elems)]
    |> Seq.sortWith (fun (atts1, elems1) (att2, elems2)  -> 
                        if Seq.length elems1 > Seq.length elems2 then -1
                        elif Seq.length elems1 < Seq.length elems2 then 1
                        else compare atts1 att2)

let writeDescriptors (tw: TextWriter) (desc : seq<(string * string * string) * seq<string * string>>) =
    tw.WriteLine("attribute description, element ns name, element local name")
    for ((attNsName, attLocalName, ruleName), elems) in desc do
        for (elemNs, elemLn) in elems do
            fprintfn tw "{%s}%s defined by %s,%s,%s" attNsName attLocalName ruleName elemNs elemLn

let analyze (pairsFileName: string)  (analysisFileName: string) = 
    let sr = new StreamReader(pairsFileName)
    let sw = new StreamWriter(File.Create(analysisFileName))
    seq [while not(sr.EndOfStream) do yield sr.ReadLine() |> parseLine]
    |> group
    |> writeDescriptors sw
    sw.Close()


// Targets
Target.create "Clean" (fun _ ->
  Shell.cleanDir origRngDir
  Shell.cleanDir rewrittenRngDir
  Shell.cleanDir analysisDir
  Shell.mkdir origRngDir
  Shell.mkdir rewrittenRngDir
  Shell.mkdir analysisDir
)

Target.create "Rnc2Rng" (fun _ ->
    !! (origRncDir+"*.rnc")
    |> Seq.iter (fun rnc ->
                  let rng = origRngDir + (rnc.Replace(".rnc", "").Split([|'.'; '\\' |]) |> Array.last) + ".rng"
                  let arg = sprintf "-jar e:/James/trang-20091111/trang.jar %s %s" rnc rng
                  if File.GetLastWriteTime(rng) < File.GetLastWriteTime(rnc) then
                    Trace.trace ("converting " + rnc)
                    CreateProcess.fromRawCommandLine javaCommand arg 
                    |> Proc.run |> ignore)
)


Target.create "Modify" (fun _ ->
    !! (origRngDir+"*.rng")
    |> Seq.iter (fun origRng ->
                    let rewrittenRng = rewrittenRngDir + (origRng.Split([|'\\' |]) |> Array.last)
                    if File.GetLastWriteTime(rewrittenRng) < File.GetLastWriteTime(origRng) then
                        Trace.trace ("modifying " + rewrittenRng)
                        modifyAttributeNamesInRngSchema  origRng rewrittenRng)
)

Target.create "FlattenAndNormalize" (fun _ ->
    let inputSchemaFile = rewrittenRngDir + "Everything.rng"
    let fanSchemaFile = analysisDir + "flattenedAndNormalizedSchema.rng"
    let latestTimeStamp = !! (rewrittenRngDir+"*.rng") |> Seq.map File.GetLastWriteTime |> Seq.max 
    if File.GetLastWriteTime(fanSchemaFile) < latestTimeStamp then
        Trace.trace "Flattening and Normalization"
        let arg = sprintf "-jar e:/James/jing-20091111/bin/jing.jar -s %s" inputSchemaFile
        let result =
            CreateProcess.fromRawCommandLine javaCommand arg 
            |> CreateProcess.redirectOutput
            |> Proc.run
        let sw = new StreamWriter(File.Create(fanSchemaFile))
        sw.Write(result.Result.Output)
        sw.Close()
    )
        
Target.create "EnumeratePairs" (fun _ -> 
    let fanSchemaFile = analysisDir + "flattenedAndNormalizedSchema.rng"
    let pairsFile = analysisDir + "attElemPairs.csv"
    if File.GetLastWriteTime(pairsFile) < File.GetLastWriteTime(fanSchemaFile) then
        Trace.trace ("Creating attElemPairs.csv")
        extractElemAttPairs fanSchemaFile pairsFile
)
Target.create "Analyze" (fun _ -> 
    let pairsFile = analysisDir + "attElemPairs.csv"
    let analysisFile = analysisDir + "report.csv"
    if File.GetLastWriteTime(analysisFile) < File.GetLastWriteTime(pairsFile) then
        Trace.trace ("Creating report.csv")
        analyze pairsFile analysisFile
)


// Dependencies
open Fake.Core.TargetOperators


"Rnc2Rng" ==> "Modify"
"Modify" ==> "FlattenAndNormalize"
"FlattenAndNormalize" ==> "EnumeratePairs"
"EnumeratePairs" ==> "Analyze"

// start build
Target.runOrDefault "Analyze"
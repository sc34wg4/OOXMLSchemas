while (<>) {
    $strict = "http://purl.oclc.org/ooxml/drawingml/chart";
    $transitional  = "http://schemas.openxmlformats.org/drawingml/2006/chart";
    s/$strict/$transitional/g;
    
    $strict = "http://purl.oclc.org/ooxml/drawingml/chartDrawing";
    $transitional  = "http://schemas.openxmlformats.org/drawingml/2006/chartDrawing";
    s/$strict/$transitional/g;
	
    $strict = "http://purl.oclc.org/ooxml/drawingml/diagram";
    $transitional  = "http://schemas.openxmlformats.org/drawingml/2006/diagram";
    s/$strict/$transitional/g;
    
    $strict = "http://purl.oclc.org/ooxml/drawingml/lockedCanvas";
    $transitional  = "http://schemas.openxmlformats.org/drawingml/2006/lockedCanvas";
    s/$strict/$transitional/g;
    
    $strict = "http://purl.oclc.org/ooxml/drawingml/main";
    $transitional  = "http://schemas.openxmlformats.org/drawingml/2006/main";
    s/$strict/$transitional/g;
    
    $strict = "http://purl.oclc.org/ooxml/drawingml/picture";
    $transitional  = "http://schemas.openxmlformats.org/drawingml/2006/picture";
    s/$strict/$transitional/g;
    
    $strict = "http://purl.oclc.org/ooxml/drawingml/spreadsheetDrawing";
    $transitional  = "http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing";
    s/$strict/$transitional/g;
    
    $strict = "http://purl.oclc.org/ooxml/drawingml/wordprocessingDrawing";
    $transitional  = "http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing";
    s/$strict/$transitional/g;
    
    $strict = "http://purl.oclc.org/ooxml/officeDocument/bibliography";
    $transitional  = "http://schemas.openxmlformats.org/officeDocument/2006/bibliography";
    s/$strict/$transitional/g;
    
    $strict = "http://purl.oclc.org/ooxml/officeDocument/characteristics";
    $transitional  = "http://schemas.openxmlformats.org/officeDocument/2006/characteristics";
    s/$strict/$transitional/g;
    
    $strict = "http://purl.oclc.org/ooxml/officeDocument/customProperties";
    $transitional  = "http://schemas.openxmlformats.org/officeDocument/2006/custom-properties";
    s/$strict/$transitional/g;
    
    $strict = "http://purl.oclc.org/ooxml/officeDocument/customXml";
    $transitional  = "http://schemas.openxmlformats.org/officeDocument/2006/customXml";
    s/$strict/$transitional/g;
    
    $strict = "http://purl.oclc.org/ooxml/officeDocument/docPropsVTypes";
    $transitional  = "http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes";
    s/$strict/$transitional/g;
    
    $strict = "http://purl.oclc.org/ooxml/officeDocument/extendedProperties";
    $transitional  = "http://schemas.openxmlformats.org/officeDocument/2006/extended-properties";
    s/$strict/$transitional/g;
    
    $strict = "http://purl.oclc.org/ooxml/officeDocument/math";
    $transitional  = "http://schemas.openxmlformats.org/officeDocument/2006/math";
    s/$strict/$transitional/g;
    
    $strict = "http://purl.oclc.org/ooxml/officeDocument/relationships";
    $transitional  = "http://schemas.openxmlformats.org/officeDocument/2006/relationships";
    s/$strict/$transitional/g;
    
    $strict = "http://purl.oclc.org/ooxml/officeDocument/sharedTypes";
    $transitional  = "http://schemas.openxmlformats.org/officeDocument/2006/sharedTypes";
    s/$strict/$transitional/g;
    
    $strict = "http://purl.oclc.org/ooxml/presentationml/main";
    $transitional  = "http://schemas.openxmlformats.org/presentationml/2006/main";
    s/$strict/$transitional/g;
    
    $strict = "http://purl.oclc.org/ooxml/schemaLibrary/main";
    $transitional  = "http://schemas.openxmlformats.org/schemaLibrary/2006/main";
    s/$strict/$transitional/g;
    
    $strict = "http://purl.oclc.org/ooxml/spreadsheetml/main";
    $transitional  = "http://schemas.openxmlformats.org/spreadsheetml/2006/main";
    s/$strict/$transitional/g;
    
    $strict = "http://purl.oclc.org/ooxml/wordprocessingml/main";
    $transitional  = "http://schemas.openxmlformats.org/wordprocessingml/2006/main";
    s/$strict/$transitional/g;

    print;
}

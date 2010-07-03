SAXON="c:/kuni-chihou-xml/tools/lib/saxon/saxon.jar"
MGDDIR="../"

java -jar  ${SAXON} ${MGDDIR}dml-chart.xsd extractStrict.xsl >  dml-chart.xsd
java -jar  ${SAXON} ${MGDDIR}dml-chartDrawing.xsd extractStrict.xsl >  dml-chartDrawing.xsd
java -jar  ${SAXON} ${MGDDIR}dml-diagram.xsd extractStrict.xsl >  dml-diagram.xsd
java -jar  ${SAXON} ${MGDDIR}dml-lockedCanvas.xsd extractStrict.xsl >  dml-lockedCanvas.xsd
java -jar  ${SAXON} ${MGDDIR}dml-main.xsd extractStrict.xsl >  dml-main.xsd
java -jar  ${SAXON} ${MGDDIR}dml-picture.xsd extractStrict.xsl >  dml-picture.xsd
java -jar  ${SAXON} ${MGDDIR}dml-spreadsheetDrawing.xsd extractStrict.xsl >  dml-spreadsheetDrawing.xsd
java -jar  ${SAXON} ${MGDDIR}dml-wordprocessingDrawing.xsd extractStrict.xsl >  dml-wordprocessingDrawing.xsd
java -jar  ${SAXON} ${MGDDIR}pml.xsd extractStrict.xsl >  pml.xsd
java -jar  ${SAXON} ${MGDDIR}shared-additionalCharacteristics.xsd extractStrict.xsl >  shared-additionalCharacteristics.xsd 
java -jar  ${SAXON} ${MGDDIR}shared-bibliography.xsd extractStrict.xsl >  shared-bibliography.xsd
java -jar  ${SAXON} ${MGDDIR}shared-commonSimpleTypes.xsd extractStrict.xsl >  shared-commonSimpleTypes.xsd 
java -jar  ${SAXON} ${MGDDIR}shared-customXmlDataProperties.xsd extractStrict.xsl >  shared-customXmlDataProperties.xsd 
java -jar  ${SAXON} ${MGDDIR}shared-customXmlSchemaProperties.xsd extractStrict.xsl >  shared-customXmlSchemaProperties.xsd
java -jar  ${SAXON} ${MGDDIR}shared-documentPropertiesCustom.xsd extractStrict.xsl >  shared-documentPropertiesCustom.xsd 
java -jar  ${SAXON} ${MGDDIR}shared-documentPropertiesExtended.xsd extractStrict.xsl >  shared-documentPropertiesExtended.xsd 
java -jar  ${SAXON} ${MGDDIR}shared-documentPropertiesVariantTypes.xsd extractStrict.xsl >  shared-documentPropertiesVariantTypes.xsd 
java -jar  ${SAXON} ${MGDDIR}shared-math.xsd extractStrict.xsl >  shared-math.xsd 
java -jar  ${SAXON} ${MGDDIR}shared-relationshipReference.xsd extractStrict.xsl >  shared-relationshipReference.xsd
java -jar  ${SAXON} ${MGDDIR}sml.xsd extractStrict.xsl >  sml.xsd 
java -jar  ${SAXON} ${MGDDIR}wml.xsd extractStrict.xsl >  wml.xsd 
SAXON="c:/kuni-chihou-xml/tools/lib/saxon/saxon.jar"
MGDDIR="../"

java -jar  ${SAXON} ${MGDDIR}dml-chart.xsd extractTransitional.xsl | perl tradify.pl > dml-chart.xsd
java -jar  ${SAXON} ${MGDDIR}dml-chartDrawing.xsd extractTransitional.xsl | perl tradify.pl > dml-chartDrawing.xsd
java -jar  ${SAXON} ${MGDDIR}dml-diagram.xsd extractTransitional.xsl | perl tradify.pl > dml-diagram.xsd
java -jar  ${SAXON} ${MGDDIR}dml-lockedCanvas.xsd extractTransitional.xsl | perl tradify.pl > dml-lockedCanvas.xsd
java -jar  ${SAXON} ${MGDDIR}dml-main.xsd extractTransitional.xsl | perl tradify.pl > dml-main.xsd
java -jar  ${SAXON} ${MGDDIR}dml-picture.xsd extractTransitional.xsl | perl tradify.pl > dml-picture.xsd
java -jar  ${SAXON} ${MGDDIR}dml-spreadsheetDrawing.xsd extractTransitional.xsl | perl tradify.pl > dml-spreadsheetDrawing.xsd
java -jar  ${SAXON} ${MGDDIR}dml-wordprocessingDrawing.xsd extractTransitional.xsl | perl tradify.pl > dml-wordprocessingDrawing.xsd
java -jar  ${SAXON} ${MGDDIR}pml.xsd extractTransitional.xsl | perl tradify.pl > pml.xsd
java -jar  ${SAXON} ${MGDDIR}shared-additionalCharacteristics.xsd extractTransitional.xsl | perl tradify.pl > shared-additionalCharacteristics.xsd 
java -jar  ${SAXON} ${MGDDIR}shared-bibliography.xsd extractTransitional.xsl | perl tradify.pl > shared-bibliography.xsd
java -jar  ${SAXON} ${MGDDIR}shared-commonSimpleTypes.xsd extractTransitional.xsl | perl tradify.pl > shared-commonSimpleTypes.xsd 
java -jar  ${SAXON} ${MGDDIR}shared-customXmlDataProperties.xsd extractTransitional.xsl | perl tradify.pl > shared-customXmlDataProperties.xsd 
java -jar  ${SAXON} ${MGDDIR}shared-customXmlSchemaProperties.xsd extractTransitional.xsl | perl tradify.pl > shared-customXmlSchemaProperties.xsd
java -jar  ${SAXON} ${MGDDIR}shared-documentPropertiesCustom.xsd extractTransitional.xsl | perl tradify.pl > shared-documentPropertiesCustom.xsd 
java -jar  ${SAXON} ${MGDDIR}shared-documentPropertiesExtended.xsd extractTransitional.xsl | perl tradify.pl > shared-documentPropertiesExtended.xsd 
java -jar  ${SAXON} ${MGDDIR}shared-documentPropertiesVariantTypes.xsd extractTransitional.xsl | perl tradify.pl > shared-documentPropertiesVariantTypes.xsd 
java -jar  ${SAXON} ${MGDDIR}shared-math.xsd extractTransitional.xsl | perl tradify.pl > shared-math.xsd 
java -jar  ${SAXON} ${MGDDIR}shared-relationshipReference.xsd extractTransitional.xsl | perl tradify.pl > shared-relationshipReference.xsd
java -jar  ${SAXON} ${MGDDIR}sml.xsd extractTransitional.xsl | perl tradify.pl > sml.xsd 
java -jar  ${SAXON} ${MGDDIR}wml.xsd extractTransitional.xsl | perl tradify.pl > wml.xsd 
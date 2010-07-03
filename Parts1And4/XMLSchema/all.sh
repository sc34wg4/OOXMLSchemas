SCHEMADIFF="./SchemaDiff.exe"
SDIR="../../Part1/OfficeOpenXML-XMLSchema-Strict/"
TDIR="../../Part4/OfficeOpenXML-XMLSchema-Transitional/"

${SCHEMADIFF} ${SDIR}dml-chart.xsd ${TDIR}dml-chart.xsd dml-chart.xsd
${SCHEMADIFF} ${SDIR}dml-chartDrawing.xsd ${TDIR}dml-chartDrawing.xsd dml-chartDrawing.xsd
${SCHEMADIFF} ${SDIR}dml-diagram.xsd ${TDIR}dml-diagram.xsd dml-diagram.xsd
${SCHEMADIFF} ${SDIR}dml-lockedCanvas.xsd ${TDIR}dml-lockedCanvas.xsd dml-lockedCanvas.xsd
${SCHEMADIFF} ${SDIR}dml-main.xsd ${TDIR}dml-main.xsd dml-main.xsd
${SCHEMADIFF} ${SDIR}dml-picture.xsd ${TDIR}dml-picture.xsd dml-picture.xsd
${SCHEMADIFF} ${SDIR}dml-spreadsheetDrawing.xsd ${TDIR}dml-spreadsheetDrawing.xsd dml-spreadsheetDrawing.xsd
${SCHEMADIFF} ${SDIR}dml-wordprocessingDrawing.xsd ${TDIR}dml-wordprocessingDrawing.xsd dml-wordprocessingDrawing.xsd
${SCHEMADIFF} ${SDIR}pml.xsd ${TDIR}pml.xsd pml.xsd
${SCHEMADIFF} ${SDIR}shared-additionalCharacteristics.xsd ${TDIR}shared-additionalCharacteristics.xsd shared-additionalCharacteristics.xsd
${SCHEMADIFF} ${SDIR}shared-bibliography.xsd ${TDIR}shared-bibliography.xsd shared-bibliography.xsd
${SCHEMADIFF} ${SDIR}shared-commonSimpleTypes.xsd ${TDIR}shared-commonSimpleTypes.xsd shared-commonSimpleTypes.xsd
${SCHEMADIFF} ${SDIR}shared-customXmlDataProperties.xsd ${TDIR}shared-customXmlDataProperties.xsd shared-customXmlDataProperties.xsd
${SCHEMADIFF} ${SDIR}shared-customXmlSchemaProperties.xsd ${TDIR}shared-customXmlSchemaProperties.xsd shared-customXmlSchemaProperties.xsd
${SCHEMADIFF} ${SDIR}shared-documentPropertiesCustom.xsd ${TDIR}shared-documentPropertiesCustom.xsd shared-documentPropertiesCustom.xsd
${SCHEMADIFF} ${SDIR}shared-documentPropertiesExtended.xsd ${TDIR}shared-documentPropertiesExtended.xsd shared-documentPropertiesExtended.xsd
${SCHEMADIFF} ${SDIR}shared-documentPropertiesVariantTypes.xsd ${TDIR}shared-documentPropertiesVariantTypes.xsd shared-documentPropertiesVariantTypes.xsd
${SCHEMADIFF} ${SDIR}shared-math.xsd ${TDIR}shared-math.xsd shared-math.xsd
${SCHEMADIFF} ${SDIR}shared-relationshipReference.xsd ${TDIR}shared-relationshipReference.xsd shared-relationshipReference.xsd
${SCHEMADIFF} ${SDIR}sml.xsd ${TDIR}sml.xsd sml.xsd
${SCHEMADIFF} ${SDIR}wml.xsd ${TDIR}wml.xsd wml.xsd
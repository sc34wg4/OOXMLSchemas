# Licensed under the MIT license: http://www.opensource.org/licenses/mit-license.php
# MURATA Makoto
# 2015-11-19

SDIR=../../Part1/OfficeOpenXML-XMLSchema-Strict/
TDIR=../../Part4/OfficeOpenXML-XMLSchema-Transitional/
SXSD = $(wildcard $(SDIR)*.xsd)
LOCALXSD = $(notdir $(SXSD))
SCHEMADIFF="./SchemaDiff.exe"

.SUFFIXES:	.xsd

all: ${LOCALXSD}

%.xsd:
	${SCHEMADIFF} ${SDIR}$@  ${TDIR}$@  $@;echo

clean:
	rm -f $(LOCALXSD)

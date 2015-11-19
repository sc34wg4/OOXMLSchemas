# Licensed under the MIT license: http://www.opensource.org/licenses/mit-license.php
# MURATA Makoto
# 2015-11-19

SDIR=../../../Part1/OfficeOpenXML-XMLSchema-Strict/
SXSD = $(wildcard $(SDIR)*.xsd)
LOCALXSD = $(notdir $(SXSD))
SAXON="E:\RenderX\XEP\lib\saxon.jar"

.SUFFIXES:	.xsd

all: ${LOCALXSD}

%.xsd:
	java -jar ${SAXON} ../$@  extractStrict.xsl > $@;echo

clean:
	rm -f $(LOCALXSD)






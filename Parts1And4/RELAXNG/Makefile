# Licensed under the MIT license: http://www.opensource.org/licenses/mit-license.php
# MURATA Makoto
# 2015-11-19

SDIR=../../Part1/OfficeOpenXML-RELAXNG-Strict/
TDIR=../../Part4/OfficeOpenXML-RELAXNG-Transitional/
SRNC = $(wildcard $(SDIR)*.rnc)
LOCALRNC = $(notdir $(SRNC))
DIFF = $(LOCALRNC:.rnc=.diff)

.SUFFIXES:	.rnc .diff

all: ${DIFF}

%.diff:
	diff --strip-trailing-cr ${SDIR}${@:diff=rnc}  ${TDIR}${@:diff=rnc} > $@;echo
#diff -U 10000 

clean:
	rm -f $(LOCALRNC) $(DIFF)

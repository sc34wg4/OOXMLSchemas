<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
  xmlns:foo="http://www.itscj.ipsj.or.jp/sc34/wg4/schemaHacking">
<xsl:template match="* | @* | text()">
  <xsl:copy>
    <xsl:apply-templates select="text() | @* | *"/>
  </xsl:copy>
</xsl:template>
  <xsl:template match="foo:strictOnly">
      <xsl:apply-templates select="text() | *"/>
  </xsl:template>
  <xsl:template match="foo:transitionalOnly">
  </xsl:template>
</xsl:stylesheet>

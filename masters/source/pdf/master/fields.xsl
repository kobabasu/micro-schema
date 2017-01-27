<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  >


  <!-- fields -->

  <xsl:template name="master-fields">
    <fo:table-row
      xsl:use-attribute-sets="gBorder"
      >

      <xsl:if test="position() mod 2 = 0">
        <xsl:attribute name="background-color">
          <xsl:text>#FAFAFA</xsl:text>
        </xsl:attribute>
      </xsl:if>

      <xsl:for-each select="field">
        <xsl:call-template name="master-fields-row" />
      </xsl:for-each>

    </fo:table-row>
  </xsl:template>


  <!-- template -->

  <xsl:template name="master-fields-row">
    <fo:table-cell xsl:use-attribute-sets="tablePad">
      <fo:block>
        <xsl:value-of select="." />
      </fo:block>
    </fo:table-cell>
  </xsl:template>

</xsl:stylesheet>

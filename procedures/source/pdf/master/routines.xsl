<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  >


  <!-- fields -->

  <xsl:template name="master-routines">
    <fo:table
      margin-bottom="3mm"
      >
      <fo:table-column column-width="15%" />

      <!-- table-header -->

      <fo:table-header>
        <fo:table-row
          xsl:use-attribute-sets="gBorderBold"
          color="#9C9C9C"
          font-size="7pt"
          font-weight="bold"
          >
          <fo:table-cell xsl:use-attribute-sets="tablePad">
            <fo:block>character_set_client</fo:block>
          </fo:table-cell>
        </fo:table-row>
      </fo:table-header>

      <!-- table-body -->

      <fo:table-body>
        <xsl:for-each
          select="."
          >
          <xsl:call-template name="master-routines-row" />
        </xsl:for-each>
      </fo:table-body>

    </fo:table>
  </xsl:template>


  <!-- template -->

  <xsl:template name="master-routines-row">

    <fo:table-row
      xsl:use-attribute-sets="gBorder"
      >

      <xsl:if test="position() mod 2 = 0">
        <xsl:attribute name="background-color">
          <xsl:text>#FAFAFA</xsl:text>
        </xsl:attribute>
      </xsl:if>

      <fo:table-cell xsl:use-attribute-sets="tablePad">
        <fo:block>
          <xsl:value-of select="." />
        </fo:block>
      </fo:table-cell>

    </fo:table-row>
  </xsl:template>

</xsl:stylesheet>

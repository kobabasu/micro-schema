<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  >


  <!-- master -->

  <xsl:template name="master-body">
    <xsl:call-template name="master-body-page" />
  </xsl:template>

  <!-- template -->

  <xsl:template name="master-body-page">


    <!-- body -->

      <fo:block
        margin="0mm 3mm 1mm 3mm"
        margin-top="3mm"
        margin-bottom="1mm"
        font-size="9pt"
        font-weight="bold"
        >
        <xsl:value-of select="./@Procedure" />
        procedure
      </fo:block>

      <fo:block
        margin="0mm 3mm"
        line-height="4mm"
        font-size="7pt"
        font-family="Yu Gothic"
        wrap-option="wrap"
        white-space="pre"
        >
        <xsl:value-of select="." />
      </fo:block>

  </xsl:template>

</xsl:stylesheet>

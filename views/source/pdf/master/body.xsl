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

    <!-- columns -->
    <fo:block
      margin-top="3mm"
      margin-bottom="1mm"
      font-size="9pt"
      font-weight="bold"
      >
      columns
    </fo:block>

    <xsl:call-template name="master-columns" />

  </xsl:template>

</xsl:stylesheet>

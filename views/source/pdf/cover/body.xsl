<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  >


  <!-- cover -->

  <xsl:template name="cover-body">

  <!-- toc -->

  <fo:block-container
    absolute-position="absolute"
    top="0mm"
    left="0mm"
    width="85.5mm"
    height="83.5mm"
    display-align="after"
    >
    <xsl:call-template name="cover-toc" />
  </fo:block-container>

  <!-- history -->

  <fo:block-container
    absolute-position="absolute"
    top="40mm"
    left="181.5mm"
    >
    <xsl:call-template name="cover-history" />
  </fo:block-container>

  </xsl:template>

</xsl:stylesheet>

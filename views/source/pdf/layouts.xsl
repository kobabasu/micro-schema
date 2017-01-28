<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  >


  <!-- layout-cover (landscape) -->

  <xsl:template name="layout-cover">
    <fo:simple-page-master
      master-name="layout-cover"
      page-height="21.0cm"
      page-width="29.7cm"
      margin="0"
      >
      <fo:region-body
        margin="103.25mm 15mm 22.5mm 15mm"
        />
      <fo:region-before />
    </fo:simple-page-master>
  </xsl:template>


  <!-- layout-master (landscape) -->

  <xsl:template name="layout-master">
    <fo:simple-page-master
      master-name="layout-master"
      page-height="21.0cm"
      page-width="29.7cm"
      margin="0"
      >
      <fo:region-body
        margin="44.5mm 19.5mm 16.5mm 19.5mm"
        />
      <fo:region-before />
    </fo:simple-page-master>
  </xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  >


  <!-- include -->

  <xsl:include href="body.xsl" />
  <xsl:include href="background.xsl" />
  <xsl:include href="bookmark.xsl" />

  <xsl:include href="toc.xsl" />
  <xsl:include href="history.xsl" />


  <!-- sequence -->

  <xsl:template name="cover">
    <fo:page-sequence
      master-reference="layout-cover"
      id="id0"
      >

      <!-- background -->

      <fo:static-content flow-name="xsl-region-before">
        <fo:block>
          <xsl:for-each select="/mysqldump/doc/config">
            <xsl:call-template name="cover-background" />
          </xsl:for-each>
        </fo:block>
      </fo:static-content>

      <!-- body -->

      <fo:flow flow-name="xsl-region-body">
        <fo:block
          font-size="7.5pt"
          font-family="Yu Gothic"
          >
          <xsl:call-template name="cover-body" />
        </fo:block>
      </fo:flow>
    </fo:page-sequence>
  </xsl:template>

</xsl:stylesheet>

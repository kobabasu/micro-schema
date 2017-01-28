<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  >


  <!-- include -->

  <xsl:include href="body.xsl" />
  <xsl:include href="options.xsl" />
  <xsl:include href="background.xsl" />
  <xsl:include href="bookmark.xsl" />


  <!-- sequence -->

  <xsl:template name="master">
  <xsl:for-each
    select="/mysqldump/database/routines/routine">

    <fo:page-sequence
      master-reference="layout-master"
      id="{concat('id',position())}"
      >

      <!-- background -->

      <fo:static-content flow-name="xsl-region-before">
        <fo:block>
          <xsl:call-template name="master-background" />
        </fo:block>
      </fo:static-content>

      <!-- body -->

      <fo:flow flow-name="xsl-region-body">

        <!-- options -->

        <fo:block span="all">
          <xsl:call-template name="master-options" />
        </fo:block>

        <!-- body -->

        <fo:block-container
          border-left="solid 0.1mm #999999"
          >
          <xsl:call-template name="master-body" />
        </fo:block-container>

      </fo:flow>

    </fo:page-sequence>

  </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>

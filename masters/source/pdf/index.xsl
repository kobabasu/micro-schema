<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  >
  <xsl:output method="xml" indent="yes"/>


  <!-- include common -->

  <xsl:include href="parser.xsl" />
  <xsl:include href="attr.xsl" />
  <xsl:include href="layouts.xsl" />
  <xsl:include href="meta.xsl" />

  <!-- include sequence -->

  <xsl:include href="master/index.xsl" />
  <xsl:include href="cover/index.xsl" />


  <!-- root -->

  <xsl:template match="/">
  <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">


    <!-- layout -->

    <fo:layout-master-set>
      <xsl:call-template name="layout-cover" />
      <xsl:call-template name="layout-master" />
    </fo:layout-master-set>

    <xsl:for-each select="/mysqldump/doc/config">
      <xsl:call-template name="meta" />
    </xsl:for-each>

    <fo:bookmark-tree>
      <xsl:call-template name="bookmark-cover" />

      <xsl:for-each
        select="/mysqldump/database/table_data"
        >
        <xsl:if test="count(./row/field) > 0">
          <xsl:call-template name="bookmark-master" />
        </xsl:if>
      </xsl:for-each>
    </fo:bookmark-tree>

    <!-- sequence -->

    <xsl:call-template name="cover" />
    <xsl:call-template name="master" />

  </fo:root>
  </xsl:template>

</xsl:stylesheet>

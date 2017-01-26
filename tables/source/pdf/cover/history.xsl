<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  >


  <!-- history -->

  <xsl:template name="cover-history">
    <fo:block margin-bottom="4mm">改訂履歴</fo:block>

    <fo:table
      border-top="solid 0.55mm #999999"
      >
      <fo:table-column column-width="23mm" />
      <fo:table-column column-width="13.25mm" />
      <fo:table-column column-width="auto" />

      <fo:table-body>
        <xsl:for-each select="/mysqldump/doc/history/row">
          <xsl:call-template name="history-row" />
        </xsl:for-each>
      </fo:table-body>
    </fo:table>
  </xsl:template>


  <!-- template -->

  <xsl:template name="history-row">
    <fo:table-row xsl:use-attribute-sets="gBorder">
      <fo:table-cell xsl:use-attribute-sets="tablePad">
        <fo:block><xsl:value-of select="@date" /></fo:block>
      </fo:table-cell>
      <fo:table-cell xsl:use-attribute-sets="tablePad">
        <fo:block><xsl:value-of select="@ver" /></fo:block>
      </fo:table-cell>
      <fo:table-cell xsl:use-attribute-sets="tablePad">
        <fo:block><xsl:value-of select="@desc" /></fo:block>
      </fo:table-cell>
    </fo:table-row>
  </xsl:template>

</xsl:stylesheet>

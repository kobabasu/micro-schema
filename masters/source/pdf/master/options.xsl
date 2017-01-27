<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  >

  <xsl:template name="master-options">

    <fo:table
      margin-bottom="6mm"
      >
      <fo:table-column column-width="18%" />
      <fo:table-column column-width="18%" />
      <fo:table-column column-width="18%" />
      <fo:table-column column-width="auto" />
      <fo:table-column column-width="auto" />

      <!-- table-body -->

      <fo:table-body
        border="solid 0.2mm #9C9C9C"
        >
        <xsl:for-each
          select="."
          >
          <xsl:call-template name="master-options-row" />
        </xsl:for-each>
      </fo:table-body>
    </fo:table>

  </xsl:template>

  <!-- template -->

  <xsl:template name="master-options-row">

    <fo:table-row>
      
      <fo:table-cell xsl:use-attribute-sets="bigTableTd">
        <fo:block>
          <fo:inline
              xsl:use-attribute-sets="bigTableTdInline"
            >レコード数:</fo:inline>
          <xsl:value-of select="@Rows" />
        </fo:block>
      </fo:table-cell>

      <fo:table-cell xsl:use-attribute-sets="bigTableTd">
        <fo:block>
          <fo:inline
              xsl:use-attribute-sets="bigTableTdInline"
            >エンジン:</fo:inline>
          <xsl:value-of select="@Engine" />
        </fo:block>
      </fo:table-cell>

      <fo:table-cell xsl:use-attribute-sets="bigTableTd">
        <fo:block>
          <fo:inline
              xsl:use-attribute-sets="bigTableTdInline"
            >エンジンバージョン:</fo:inline>
          <xsl:value-of select="@Version" />
        </fo:block>
      </fo:table-cell>

      <fo:table-cell xsl:use-attribute-sets="bigTableTd">
        <fo:block>
          <fo:inline
              xsl:use-attribute-sets="bigTableTdInline"
            >文字コード:</fo:inline>
          <xsl:value-of select="@Collation" />
        </fo:block>
      </fo:table-cell>

      <fo:table-cell xsl:use-attribute-sets="bigTableTd">
        <fo:block>
          <fo:inline
              xsl:use-attribute-sets="bigTableTdInline"
            >作成日:</fo:inline>
          <xsl:value-of select="@Create_time" />
        </fo:block>
      </fo:table-cell>

    </fo:table-row>
  </xsl:template>

</xsl:stylesheet>

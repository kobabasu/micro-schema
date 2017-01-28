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
      <fo:table-column column-width="auto" />
      <fo:table-column column-width="auto" />
      <fo:table-column column-width="auto" />

      <!-- table-body -->

      <fo:table-body
        border="solid 0.2mm #9C9C9C"
        >
        <xsl:call-template name="master-options-row" />
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
            >クエリ送信時文字コード:</fo:inline>
          <xsl:value-of select="@character_set_client" />
        </fo:block>
      </fo:table-cell>

      <fo:table-cell xsl:use-attribute-sets="bigTableTd">
        <fo:block>
          <fo:inline
              xsl:use-attribute-sets="bigTableTdInline"
            >作成時文字照合:</fo:inline>
          <xsl:value-of select="@collation_connection" />
        </fo:block>
      </fo:table-cell>

      <fo:table-cell xsl:use-attribute-sets="bigTableTd">
        <fo:block>
          <fo:inline
              xsl:use-attribute-sets="bigTableTdInline"
            >データベース文字照合:</fo:inline>
          <xsl:value-of select="@Database_Collation" />
        </fo:block>
      </fo:table-cell>

    </fo:table-row>
  </xsl:template>

</xsl:stylesheet>

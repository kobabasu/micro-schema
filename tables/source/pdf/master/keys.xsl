<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  >


  <!-- keys -->

  <xsl:template name="master-keys">
    <fo:table
      margin-bottom="3mm"
      >
      <fo:table-column column-width="17%" />
      <fo:table-column column-width="10%" />
      <fo:table-column column-width="5%" />
      <fo:table-column column-width="5%" />
      <fo:table-column column-width="5%" />
      <fo:table-column column-width="5%" />
      <fo:table-column column-width="5%" />
      <fo:table-column column-width="13%" />
      <fo:table-column column-width="20%" />
      <fo:table-column column-width="15%" />

      <!-- table-header -->

      <fo:table-header>
        <fo:table-row
          xsl:use-attribute-sets="gBorderBold"
          color="#9C9C9C"
          font-size="7pt"
          font-weight="bold"
          >
          <fo:table-cell xsl:use-attribute-sets="tablePad">
            <fo:block>key</fo:block>
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="tablePad">
            <fo:block>column</fo:block>
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="tablePad">
            <fo:block>seq</fo:block>
          </fo:table-cell>
          <fo:table-cell
            text-align="center"
            xsl:use-attribute-sets="tablePad"
            >
            <fo:block>collation</fo:block>
          </fo:table-cell>
          <fo:table-cell
            text-align="center"
            xsl:use-attribute-sets="tablePad"
            >
            <fo:block>cardinality</fo:block>
          </fo:table-cell>
          <fo:table-cell
            text-align="center"
            xsl:use-attribute-sets="tablePad"
            >
            <fo:block>null</fo:block>
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="tablePad">
            <fo:block>&#160;</fo:block>
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="tablePad">
            <fo:block>type</fo:block>
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="tablePad">
            <fo:block>index comment</fo:block>
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="tablePad">
            <fo:block>comment</fo:block>
          </fo:table-cell>
        </fo:table-row>
      </fo:table-header>

      <!-- table-body -->

      <fo:table-body>
        <xsl:for-each
          select="key"
          >
          <xsl:call-template name="master-keys-row" />
        </xsl:for-each>
      </fo:table-body>

    </fo:table>
  </xsl:template>


  <!-- template -->

  <xsl:template name="master-keys-row">

    <fo:table-row
      xsl:use-attribute-sets="gBorder"
      >

      <xsl:if test="position() mod 2 = 0">
        <xsl:attribute name="background-color">
          <xsl:text>#FAFAFA</xsl:text>
        </xsl:attribute>
      </xsl:if>

      <fo:table-cell xsl:use-attribute-sets="tablePad">
        <fo:block>
          <xsl:value-of select="@Key_name" />
        </fo:block>
      </fo:table-cell>

      <fo:table-cell xsl:use-attribute-sets="tablePad">
        <fo:block>
          <xsl:value-of select="@Column_name" />
        </fo:block>
      </fo:table-cell>

      <fo:table-cell xsl:use-attribute-sets="tablePad">
        <fo:block>
          <xsl:value-of select="@Seq_in_index" />
        </fo:block>
      </fo:table-cell>

      <fo:table-cell xsl:use-attribute-sets="tablePad">
        <fo:block text-align="center">
          <xsl:value-of select="@Collation" />
        </fo:block>
      </fo:table-cell>

      <fo:table-cell xsl:use-attribute-sets="tablePad">
        <fo:block text-align="center">
          <xsl:value-of select="@Cardinality" />
        </fo:block>
      </fo:table-cell>

      <fo:table-cell xsl:use-attribute-sets="tablePad">
        <fo:block text-align="center">
          <xsl:if test="@Null='YES'">
            <fo:inline font-family="FontAwesome">
              &#xf00c;
            </fo:inline>
          </xsl:if>
        </fo:block>
      </fo:table-cell>

      <fo:table-cell xsl:use-attribute-sets="tablePad">
        <fo:block>&#160;</fo:block>
      </fo:table-cell>

      <fo:table-cell xsl:use-attribute-sets="tablePad">
        <fo:block>
          <xsl:value-of select="@Index_type" />
        </fo:block>
      </fo:table-cell>

      <fo:table-cell xsl:use-attribute-sets="tablePad">
        <fo:block>
          <xsl:value-of select="@Index_comment" />
        </fo:block>
      </fo:table-cell>

      <fo:table-cell xsl:use-attribute-sets="tablePad">
        <fo:block>
          <xsl:value-of select="@Comment" />
        </fo:block>
      </fo:table-cell>

    </fo:table-row>
  </xsl:template>

</xsl:stylesheet>

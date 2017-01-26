<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  >


  <!-- fields -->

  <xsl:template name="master-columns">
    <fo:table
      margin-bottom="3mm"
      >
      <fo:table-column column-width="15%" />
      <fo:table-column column-width="12%" />
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
            <fo:block>column</fo:block>
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="tablePad">
            <fo:block>type</fo:block>
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="tablePad">
            <fo:block>length</fo:block>
          </fo:table-cell>
          <fo:table-cell
            text-align="center"
            xsl:use-attribute-sets="tablePad"
            >
            <fo:block>PK</fo:block>
          </fo:table-cell>
          <fo:table-cell
            text-align="center"
            xsl:use-attribute-sets="tablePad"
            >
            <fo:block>NN</fo:block>
          </fo:table-cell>
          <fo:table-cell
            text-align="center"
            xsl:use-attribute-sets="tablePad"
            >
            <fo:block>UQ</fo:block>
          </fo:table-cell>
          <fo:table-cell
            text-align="center"
            xsl:use-attribute-sets="tablePad"
            >
            <fo:block>AI</fo:block>
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="tablePad">
            <fo:block>default</fo:block>
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="tablePad">
            <fo:block>extra</fo:block>
          </fo:table-cell>
          <fo:table-cell xsl:use-attribute-sets="tablePad">
            <fo:block>comment</fo:block>
          </fo:table-cell>
        </fo:table-row>
      </fo:table-header>

      <!-- table-body -->

      <fo:table-body>
        <xsl:for-each
          select="field"
          >
          <xsl:call-template name="master-columns-row" />
        </xsl:for-each>
      </fo:table-body>

    </fo:table>
  </xsl:template>


  <!-- template -->

  <xsl:template name="master-columns-row">

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
          <xsl:value-of select="@Field" />
        </fo:block>
      </fo:table-cell>

      <fo:table-cell xsl:use-attribute-sets="tablePad">
        <xsl:choose>

          <xsl:when
            test="substring-before(@Type,'(')='varchar'"
            >
            <fo:block>文字列</fo:block>
          </xsl:when>

          <xsl:when
            test="@Type='text'"
            >
            <fo:block>長文</fo:block>
          </xsl:when>

          <xsl:when
            test="substring-before(@Type,'(')='int'"
            >
            <fo:block>整数</fo:block>
          </xsl:when>

          <xsl:when
            test="substring-before(@Type,'(')='tinyint'"
            >
            <fo:block>はい・いいえ</fo:block>
          </xsl:when>

          <xsl:when
            test="@Type='datetime'"
            >
            <fo:block>日時</fo:block>
          </xsl:when>

          <xsl:when
            test="@Type='date'"
            >
            <fo:block>日付</fo:block>
          </xsl:when>

          <xsl:when
            test="@Type='time'"
            >
            <fo:block>時間</fo:block>
          </xsl:when>

          <xsl:when
            test="@Type='year'"
            >
            <fo:block>年</fo:block>
          </xsl:when>

          <xsl:when
            test="@Type='timestamp'"
            >
            <fo:block>日時(スタンプ)</fo:block>
          </xsl:when>

          <xsl:otherwise>
            <fo:block>
              <xsl:value-of
                select="substring-before(@Type,'(')"
                />
            </fo:block>
          </xsl:otherwise>
        </xsl:choose>
      </fo:table-cell>

      <fo:table-cell xsl:use-attribute-sets="tablePad">
        <fo:block>
          <xsl:value-of
            select="substring-before(
              substring-after(@Type,'('),
              ')'
            )"
            />
        </fo:block>
      </fo:table-cell>

      <fo:table-cell xsl:use-attribute-sets="tablePad">
        <fo:block text-align="center">
          <xsl:if test="@Key='PRI'">
            <fo:inline font-family="FontAwesome">
              &#xf00c;
            </fo:inline>
          </xsl:if>
        </fo:block>
      </fo:table-cell>

      <fo:table-cell xsl:use-attribute-sets="tablePad">
        <fo:block text-align="center">
          <xsl:if test="@Null!='YES'">
            <fo:inline font-family="FontAwesome">
              &#xf00c;
            </fo:inline>
          </xsl:if>
        </fo:block>
      </fo:table-cell>

      <fo:table-cell xsl:use-attribute-sets="tablePad">
        <fo:block text-align="center">
          <xsl:if test="@Key='UNI'">
            <fo:inline font-family="FontAwesome">
              &#xf00c;
            </fo:inline>
          </xsl:if>
        </fo:block>
      </fo:table-cell>

      <fo:table-cell xsl:use-attribute-sets="tablePad">
        <fo:block text-align="center">
          <xsl:if test="@Extra='auto_increment'">
            <fo:inline font-family="FontAwesome">
              &#xf00c;
            </fo:inline>
          </xsl:if>
        </fo:block>
      </fo:table-cell>

      <fo:table-cell xsl:use-attribute-sets="tablePad">
        <fo:block>
          <xsl:value-of select="@Default" />
        </fo:block>
      </fo:table-cell>

      <fo:table-cell xsl:use-attribute-sets="tablePad">
        <fo:block>
          <xsl:value-of select="@Extra" />
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

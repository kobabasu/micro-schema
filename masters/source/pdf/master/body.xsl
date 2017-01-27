<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  >


  <!-- master -->

  <xsl:template name="master-body">
    <xsl:call-template name="master-body-page" />
  </xsl:template>


  <!-- template -->

  <xsl:template name="master-body-page">

    <!-- comment -->

    <fo:block
      font-size="9pt"
      margin-bottom="8mm"
      >
      <xsl:for-each select=".">
        <xsl:value-of
          select="substring-after(@Comment, ':')"
          />
      </xsl:for-each>
    </fo:block>

    <!-- options -->

    <xsl:call-template name="master-options" />

    <!-- fields -->

    <fo:table
      margin-bottom="3mm"
      >
      <xsl:variable name="pos" select="@Name" />
      <xsl:for-each
        select="
        /mysqldump/database/table_data[
          @name = $pos
        ]/row[1]/field
        "
        >
        <xsl:choose>
          <xsl:when test="@name = 'id'">
            <fo:table-column column-width="5%" />
          </xsl:when>
          <xsl:when test="substring-after(@name, '_') = 'id'">
            <fo:table-column column-width="15%" />
          </xsl:when>
          <xsl:otherwise>
            <fo:table-column column-width="auto" />
          </xsl:otherwise>
        </xsl:choose>
      </xsl:for-each>

      <!-- table-header -->

      <fo:table-header>
        <fo:table-row
          xsl:use-attribute-sets="gBorderBold"
          color="#9C9C9C"
          font-size="7pt"
          font-weight="bold"
          >

          <xsl:variable name="pos" select="@Name" />
          <xsl:for-each
            select="
            /mysqldump/database/table_data[
              @name = $pos
            ]/row[1]/field
            "
            >
            <fo:table-cell
              xsl:use-attribute-sets="tablePad"
              >
              <fo:block>
                <xsl:value-of select="@name" />
              </fo:block>
            </fo:table-cell>
          </xsl:for-each>

        </fo:table-row>
      </fo:table-header>

      <!-- table-body -->

      <fo:table-body>
        <xsl:variable name="pos" select="@Name" />
        <xsl:for-each
          select="
          /mysqldump/database/table_data[
            @name = $pos
          ]/row
          "
          >
          <xsl:call-template name="master-fields" />
        </xsl:for-each>
      </fo:table-body>

    </fo:table>

  </xsl:template>

</xsl:stylesheet>

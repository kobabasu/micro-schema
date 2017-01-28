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
      <xsl:for-each select="options">
        <xsl:choose>
          <xsl:when test="contains(@Comment, ':')">
            <xsl:value-of
              select="substring-after(@Comment, ':')"
              />
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="@Comment" />
          </xsl:otherwise>
        </xsl:choose>
      </xsl:for-each>
    </fo:block>

    <!-- routines -->
    <fo:block
      margin-top="3mm"
      margin-bottom="1mm"
      font-size="9pt"
      font-weight="bold"
      >
      routines 
    </fo:block>

    <xsl:call-template name="master-routines" />

  </xsl:template>

</xsl:stylesheet>

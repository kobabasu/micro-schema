<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  >


  <!-- toc -->

  <xsl:template name="cover-toc">
    <fo:block margin-bottom="2.325mm">目次</fo:block>

    <xsl:for-each
      select="/mysqldump/database/table_structure[
        ./options/@Comment = 'VIEW'
      ]"
      >
      <xsl:call-template name="toc-row" />
    </xsl:for-each>

  </xsl:template>


  <!-- template -->

  <xsl:template name="toc-row">
    <fo:block
      text-align-last="justify"
      padding="1.3375mm 1.2mm 0mm 1.2mm"
      >
      <fo:inline>
        <xsl:value-of select="position()" />.&#160;
      </fo:inline>
      <fo:leader
        leader-pattern="dots"
        leader-length.optimum="2in"
        />
      <fo:inline>
        <fo:basic-link
          internal-destination="{concat('id', position())}"
          >
          &#160;<xsl:value-of select="@name" />
        </fo:basic-link>
      </fo:inline>
    </fo:block>
  </xsl:template>

</xsl:stylesheet>

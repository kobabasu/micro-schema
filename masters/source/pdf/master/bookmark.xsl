<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  >


  <!-- bookmark -->

  <xsl:template name="bookmark-master">
      <fo:bookmark
        internal-destination="{concat('id',position())}"
        >
        <fo:bookmark-title>
          <xsl:value-of select="@Name" />
        </fo:bookmark-title>
      </fo:bookmark>
  </xsl:template>

</xsl:stylesheet>

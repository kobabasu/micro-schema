<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  >


  <!-- bookmark -->

  <xsl:template name="bookmark-master">
    <xsl:for-each select="/mysqldump/database/table_structure">
      <fo:bookmark
        internal-destination="{concat('id',position())}"
        >
        <fo:bookmark-title>
          <xsl:value-of select="@name" />
        </fo:bookmark-title>
      </fo:bookmark>
    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>

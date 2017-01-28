<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <xsl:apply-templates/>
</xsl:template> 

<xsl:template match="mysqldump">
  <xsl:apply-templates/>
</xsl:template> 

 <xsl:template match="database">
  <html>
  <head>
  <title>XMLとXSLT</title>
  <link rel="stylesheet" href="style.css" media="all" />
  </head>
  <body>
    <p style="text-align: center">とにかく表示してみよう</p>
    <xsl:apply-templates />
  </body>
  </html>
</xsl:template>

<xsl:template match="table_structure">
  <xsl:value-of select="@name" />
  <table>
  <xsl:apply-templates select="field" />
  </table>
  <xsl:apply-templates select="key" />
</xsl:template>

<xsl:template match="field">
  <tr>
    <td><xsl:value-of select="@Field" /></td>
    <td><xsl:value-of select="@Comment" /></td>
  </tr>
</xsl:template>

<xsl:template match="key">
  <tr>
    <td><xsl:value-of select="@Table" /></td>
    <td><xsl:value-of select="@Key_name" /></td>
  </tr>
</xsl:template>

</xsl:stylesheet>

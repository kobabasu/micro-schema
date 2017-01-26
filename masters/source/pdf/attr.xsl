<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  >


  <!-- gBorder -->

  <xsl:attribute-set name="gBorder">
    <xsl:attribute name="border-bottom">
      solid 0.2mm #999999
    </xsl:attribute>
  </xsl:attribute-set>


  <!-- gBorderBold -->

  <xsl:attribute-set name="gBorderBold">
    <xsl:attribute name="border-bottom">
      solid 0.4mm #999999
    </xsl:attribute>
  </xsl:attribute-set>


  <!-- tablePad -->

  <xsl:attribute-set name="tablePad">
    <xsl:attribute name="padding">
      0.95mm 1.2mm 1.025mm 1.2mm
    </xsl:attribute>
  </xsl:attribute-set>


  <!-- bigTableTd -->

  <xsl:attribute-set name="bigTableTd">
    <xsl:attribute name="font-family">
      Helvetica
    </xsl:attribute>
    <xsl:attribute name="font-size">
      9pt
    </xsl:attribute>
    <xsl:attribute name="padding">
      2mm 4mm 1.5mm 4mm
    </xsl:attribute>
    <xsl:attribute name="border-right">
      solid 0.2mm #999999
    </xsl:attribute>
    <xsl:attribute name="text-align">
      center
    </xsl:attribute>
  </xsl:attribute-set>


  <!-- bigTableTdInline -->

  <xsl:attribute-set name="bigTableTdInline">
    <xsl:attribute name="font-family">
      Yu Gothic
    </xsl:attribute>
    <xsl:attribute name="padding-right">
      2mm
    </xsl:attribute>
    <xsl:attribute name="color">
      #3C3C3C
    </xsl:attribute>
    <xsl:attribute name="font-size">
      8pt
    </xsl:attribute>
    <xsl:attribute name="font-weight">
      bold
    </xsl:attribute>
  </xsl:attribute-set>

</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  >


  <!-- background -->

  <xsl:template name="cover-background">

  <!-- vars -->

  <xsl:param name="project" select="'ビュー定義書'" />
  <xsl:param name="client" select="client" />
  <xsl:param name="date" select="date" />
  <xsl:param name="author" select="author" />

  <fo:instream-foreign-object>

    <!-- svg start -->
      <svg version="1.1" id="wireframe" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
         width="841.9px" height="595.3px" viewBox="0 0 841.9 595.3" style="enable-background:new 0 0 841.9 595.3;" xml:space="preserve"
        >
      <style type="text/css">
        .st0{fill:#8C8C8C;}
        .st1{fill:none;stroke:#8C8C8C;stroke-width:0.5;stroke-linejoin:bevel;}
        .st2{fill:#231815;}
        .st3{fill:none;stroke:#8C8C8C;stroke-width:1.5;stroke-linejoin:bevel;}
        .st4{fill:#040000;}
        .st5{font-family:'Yu Gothic';}
        .st6{font-size:8px;}
        .st7{letter-spacing:4;}
        .st8{fill:none;}
        .st9{font-size:7.6535px;}
        .st10{letter-spacing:16;}
        .st11{letter-spacing:24;}
        .st12{letter-spacing:2;}
        .st13{letter-spacing:5;}
        .st14{font-size:7px;}
        .st15{font-family:'Helvetica';}
        .st16{font-size:10px;}
        .st17{letter-spacing:1;}
        .st18{font-size:20px;}
        .st19{font-size:40px;}
      </style>
      <polygon class="st0" points="22.1,564.7 22.1,563 21.3,563 21.3,564.7 21.3,565.5 22.1,565.5 23.8,565.5 23.8,564.7 "/>
      <polygon class="st0" points="819.8,563 819.8,564.7 818.1,564.7 818.1,565.5 819.8,565.5 820.6,565.5 820.6,564.7 820.6,563 "/>
      <g>
        <line class="st1" x1="25.5" y1="565.3" x2="816.4" y2="565.3"/>
        <line class="st2" x1="25.5" y1="565.3" x2="816.4" y2="565.3"/>
      </g>
      <g>
        <rect x="21.3" y="569.8" class="st8" width="799.4" height="8.5"/>
        <text transform="matrix(1.0034 0 0 0.95 420.4186 578.0421)" class="st4 st5 st14" text-anchor="middle" ><xsl:value-of select="$author" /></text>
      </g>
      <rect x="21.3" y="184.3" class="st8" width="799.4" height="17"/>
      <text transform="matrix(1.0034 0 0 1 420.3 192.8386)" class="st4 st15 st16 st17" text-anchor="middle"><xsl:value-of select="$date" /></text>
      <rect x="21.3" y="212.6" class="st8" width="799.4" height="25.5"/>
      <text transform="matrix(1.0034 0 0 1 420.3 230.199)" class="st4 st5 st18" text-anchor="middle"><xsl:value-of select="$client" /> 様</text>
      <rect x="21.3" y="263.6" class="st8" width="799.4" height="39.7"/>
      <text transform="matrix(1.0034 0 0 1 430.3 299.5)" class="st4 st5 st19 st7" text-anchor="middle"><xsl:value-of select="$project" /></text>
      </svg>
    <!-- svg end -->

  </fo:instream-foreign-object>
  </xsl:template>

</xsl:stylesheet>

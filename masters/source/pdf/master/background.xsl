<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  >


  <!-- background -->

  <xsl:template name="master-background">

  <!-- vars -->

  <xsl:param name="title" select="@Name" />
  <xsl:param
    name="project"
    select="'マスタ定義書'"
    />
  <xsl:param
    name="client"
    select="/mysqldump/doc/config/client"
    />
  <xsl:param
    name="date"
    select="/mysqldump/doc/config/date"
    />
  <xsl:param
    name="version"
    select="/mysqldump/doc/config/version"
    />
  <xsl:param
    name="revision"
    select="/mysqldump/doc/config/revision"
    />
  <xsl:param
    name="author"
    select="/mysqldump/doc/config/author"
    />
  <xsl:param name="number" select="position()" />

  <fo:instream-foreign-object>

    <!-- svg start -->
    <svg version="1.1" id="wireframe" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
       width="841.9px" height="595.3px" viewBox="0 0 841.9 595.3" style="enable-background:new 0 0 841.9 595.3;" xml:space="preserve"
      >
    <style type="text/css">
      .st0{fill:none;stroke:#8C8C8C;stroke-width:0.5;stroke-linejoin:bevel;}
      .st1{fill:#231815;}
      .st2{fill:none;stroke:#8C8C8C;stroke-width:0.8504;stroke-linecap:square;stroke-linejoin:bevel;}
      .st3{fill:#8C8C8C;}
      .st4{fill:none;}
      .st5{font-family:'Yu Gothic';}
      .st6{font-size:7px;}
      .st7{fill:#FFFFFF;}
      .st8{font-family:'Helvetica';}
      .st9{font-size:5px;}
      .st10{fill:#040000;}
      .st11{font-family:'Helvetica';}
      .st12{font-size:16px;}
      .st13{letter-spacing:0.25;}
      .st14{fill:none;stroke:#868C85;stroke-width:0.5;}
      .st15{fill:none;stroke:#8C8C8C;stroke-width:0.8504;stroke-linecap:square;}
      .st16{font-family:'Yu Gothic';}
      .st17{fill:#8C8C8C;stroke:#8C8C8C;stroke-width:0.4252;}
      .st18{fill:#FFFFFF;stroke:#8C8C8C;stroke-width:0.4252;}
      .st19{fill:#FFFFFF;stroke:#8C8C8C;stroke-width:0.4252;stroke-linecap:square;stroke-linejoin:round;}
      .st20{font-family:'Helvetica';}
      .st21{font-size:7px;}
      .st22{letter-spacing:2;}
      .st23{fill:none;stroke:#8C8C8C;stroke-width:0.4252;}
    </style>
    <g id="footer_x5F_copyright">
    </g>
    <g id="date_1_">
    </g>
    <g id="client_1_">
    </g>
    <g id="header_x5F_project">
      <g>
        <line class="st0" x1="25.5" y1="55.5" x2="816.4" y2="55.5"/>
        <line class="st1" x1="25.5" y1="55.5" x2="816.4" y2="55.5"/>
      </g>
      <line class="st2" x1="21.7" y1="55.7" x2="23.4" y2="55.7"/>
      <line class="st2" x1="21.7" y1="55.7" x2="21.7" y2="57.4"/>
      <line class="st2" x1="21.7" y1="565.1" x2="21.7" y2="563.4"/>
      <line class="st2" x1="21.7" y1="565.1" x2="23.4" y2="565.1"/>
      <line class="st2" x1="820.2" y1="55.7" x2="818.5" y2="55.7"/>
      <line class="st2" x1="820.2" y1="55.7" x2="820.2" y2="57.4"/>
      <line class="st2" x1="820.2" y1="565.1" x2="820.2" y2="563.4"/>
      <line class="st2" x1="820.2" y1="565.1" x2="818.5" y2="565.1"/>
      <line class="st0" x1="21.5" y1="59.5" x2="21.5" y2="561.3"/>
      <line class="st0" x1="820.4" y1="59.5" x2="820.4" y2="561.3"/>
      <g>
        <line class="st0" x1="25.5" y1="565.3" x2="816.4" y2="565.3"/>
        <line class="st1" x1="25.5" y1="565.3" x2="816.4" y2="565.3"/>
      </g>
      <g>
        <rect x="21.3" y="569.8" class="st3" width="8.5" height="8.5"/>
      </g>
      <g>
        <rect x="642" y="569.8" class="st4" width="178.6" height="12.8"/>
        <text transform="matrix(1 0 0 0.95 772.4575 577.8761)" class="st5 st6"><xsl:value-of select="$author" /></text>
      </g>
      <rect x="21.3" y="569.8" class="st4" width="8.5" height="8.5"/>
      <text transform="matrix(1 0 0 1 25.75 575.7632)" text-anchor="middle" class="st7 st8 st9"><xsl:value-of select="$number" /></text>
      <text transform="matrix(1 0 0 1 70.2832 103.25)" class="st10 st11 st12 st13"><xsl:value-of select="$title" /></text>
      <rect x="55.3" y="89.3" width="3.4" height="17"/>
      <line class="st2" x1="21.7" y1="46.3" x2="23.4" y2="46.3"/>
      <g>
        <line class="st14" x1="25.5" y1="46.6" x2="170.1" y2="46.6"/>
        <line class="st1" x1="25.5" y1="46.6" x2="170.1" y2="46.6"/>
      </g>
      <g>
        <line class="st0" x1="178.6" y1="46.6" x2="310.4" y2="46.6"/>
        <line class="st1" x1="178.6" y1="46.6" x2="310.4" y2="46.6"/>
      </g>
      <line class="st2" x1="21.7" y1="46.3" x2="21.7" y2="44.6"/>
      <line class="st0" x1="21.5" y1="42.5" x2="21.5" y2="24.2"/>
      <line class="st0" x1="174.5" y1="42.5" x2="174.5" y2="25.5"/>
      <line class="st0" x1="314.9" y1="42.5" x2="314.9" y2="25.5"/>
      <line class="st2" x1="174.3" y1="46.3" x2="174.3" y2="44.6"/>
      <line class="st2" x1="176" y1="46.3" x2="172.6" y2="46.3"/>
      <line class="st2" x1="314.6" y1="46.3" x2="314.6" y2="44.6"/>
      <line class="st2" x1="316.3" y1="46.3" x2="312.9" y2="46.3"/>
      <line class="st2" x1="455" y1="46.3" x2="455" y2="44.6"/>
      <line class="st2" x1="456.7" y1="46.3" x2="453.3" y2="46.3"/>
      <g>
        <line class="st0" x1="318.9" y1="46.6" x2="450.7" y2="46.6"/>
        <line class="st1" x1="318.9" y1="46.6" x2="450.7" y2="46.6"/>
      </g>
      <line class="st0" x1="455.2" y1="42.5" x2="455.2" y2="25.5"/>
      <g>
        <line class="st0" x1="459.2" y1="46.6" x2="816.4" y2="46.6"/>
        <line class="st1" x1="459.2" y1="46.6" x2="816.4" y2="46.6"/>
      </g>
      <line class="st0" x1="820.4" y1="42.5" x2="820.4" y2="24.2"/>
      <line class="st15" x1="820.2" y1="46.3" x2="820.2" y2="44.6"/>
      <line class="st15" x1="820.2" y1="46.3" x2="818.5" y2="46.3"/>
      <g>
        <rect x="21.3" y="21.3" class="st3" width="799.4" height="1.3"/>
      </g>
      <g>
        <rect x="433.7" y="25.5" class="st4" width="12.8" height="17"/>
        <text transform="matrix(1 0 0 1 436.6777 37.2393)" class="st10 st16 st6"><xsl:value-of select="'様'" /></text>
      </g>
      <g>
        <polygon class="st17" points="31.7,30.9 36.8,30.9 36.8,38.5 30.8,38.5 30.8,31.6 		"/>
        <polygon class="st18" points="31.8,30.4 30,32 30,38 35.9,38 35.9,30.4 		"/>
      </g>
      <g>
        <g>
          <polygon class="st19" points="187.1,35 185,33.8 185,31.6 187.1,32.8 			"/>
          <polygon class="st19" points="185,31.6 187.1,30.4 189.2,31.6 187.1,32.8 			"/>
          <polygon class="st19" points="189.2,33.8 187.1,35 187.1,32.8 189.2,31.6 			"/>
        </g>
        <g>
          <polygon class="st19" points="185,38.5 183,37.3 183,35 185,36.2 			"/>
          <polygon class="st19" points="183,35 185,33.8 187.1,35 185,36.2 			"/>
          <polygon class="st19" points="187.1,37.3 185,38.5 185,36.2 187.1,35 			"/>
        </g>
        <g>
          <polygon class="st19" points="189.4,38.5 187.1,37.3 187.1,35 189.4,36.2 			"/>
          <polygon class="st19" points="187.1,35 189.2,33.8 191.1,35 189.4,36.2 			"/>
          <polygon class="st19" points="191.1,37.3 189.4,38.5 189.4,36.2 191.1,35 			"/>
        </g>
      </g>
      <g>
        <path class="st19" d="M326.3,34.2c0.6-0.3,1.1-1,1.1-1.8c0-1.1-0.9-2-2-2c-1.1,0-2,0.9-2,2c0,0.8,0.4,1.4,1.1,1.8
          c-0.6,0.3-1.1,1-1.1,1.8v2.5h4V36C327.4,35.2,327,34.5,326.3,34.2z"/>
        <path class="st19" d="M330.4,34.2c0.6-0.3,1.1-1,1.1-1.8c0-1.1-0.9-2-2-2c-1.1,0-2,0.9-2,2c0,0.8,0.4,1.4,1.1,1.8
          c-0.6,0.3-1.1,1-1.1,1.8v2.5h4V36C331.4,35.2,331,34.5,330.4,34.2z"/>
      </g>
      <g>
        <rect x="708.7" y="25.5" class="st4" width="42.5" height="17"/>
        <text transform="matrix(1 0 0 1 709.2544 37.0226)" class="st20 st21"><xsl:value-of select="$date" /></text>
      </g>
      <g>
        <rect x="802.2" y="25.5" class="st4" width="12.8" height="17"/>
        <text transform="matrix(1 0 0 1 804.34 37.0226)" class="st20 st21"><xsl:value-of select="$revision" /></text>
      </g>
      <rect x="772.4" y="25.5" class="st4" width="12.8" height="17"/>
      <text transform="matrix(1 0 0 1 773.2524 37.0226)" class="st20 st21"><xsl:value-of select="$version" /></text>
      <g>
        <rect x="323.1" y="25.5" class="st4" width="106.3" height="17"/>
        <text transform="matrix(1 0 0 1 335.8918 37.671)" class="st16 st21"><xsl:value-of select="$client" /></text>
      </g>
      <g id="XMLID_190_">
        <rect x="182.8" y="25.5" class="st4" width="123.3" height="17"/>
        <text transform="matrix(1 0 0 1 195.5914 37.671)" class="st16 st21"><xsl:value-of select="$project" /></text>
      </g>
      <g>
        <rect x="29.8" y="25.5" class="st4" width="136.1" height="17"/>
        <text transform="matrix(1 0 0 1 42.52 37.6709)" class="st16 st21"><xsl:value-of select="$title" /></text>
      </g>
      <g>
        <g>
          <path class="st23" d="M769.4,36.4c0,0.5-0.4,0.9-0.9,0.9h-3.4c-0.5,0-0.9-0.4-0.9-0.9V33c0-0.5,0.4-0.9,0.9-0.9h3.4
            c0.5,0,0.9,0.4,0.9,0.9V36.4z"/>
        </g>
        <g>
          <path class="st3" d="M768.3,33l-1,3.3h-1l-1-3.3h0.9l0.3,1.4c0.1,0.4,0.2,0.7,0.3,1.1h0c0.1-0.4,0.2-0.8,0.2-1.1l0.3-1.4H768.3z"
            />
        </g>
      </g>
      <g>
        <g>
          <path class="st23" d="M799.2,36.4c0,0.5-0.4,0.9-0.9,0.9h-3.4c-0.5,0-0.9-0.4-0.9-0.9V33c0-0.5,0.4-0.9,0.9-0.9h3.4
            c0.5,0,0.9,0.4,0.9,0.9V36.4z"/>
        </g>
        <g>
          <path class="st3" d="M797.3,34.8c0.2,0.1,0.4,0.3,0.5,0.6c0.1,0.4,0.2,0.8,0.3,0.9h-0.9c0-0.1-0.1-0.4-0.2-0.8
            c-0.1-0.4-0.2-0.5-0.5-0.5h-0.2v1.3h-0.8v-3.2c0.3,0,0.6-0.1,1-0.1c0.5,0,1.4,0,1.4,0.9C797.9,34.4,797.6,34.7,797.3,34.8
            L797.3,34.8z M796.5,34.5c0.3,0,0.5-0.2,0.5-0.5c0-0.4-0.3-0.4-0.5-0.4c-0.1,0-0.2,0-0.3,0v0.9H796.5z"/>
        </g>
      </g>
    </g>
    </svg>
    <!-- svg end -->

  </fo:instream-foreign-object>
  </xsl:template>

</xsl:stylesheet>

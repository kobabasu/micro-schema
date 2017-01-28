<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  >


  <!-- meta -->

  <xsl:template name="meta">
    <fo:declarations>
      <x:xmpmeta xmlns:x="adobe:ns:meta/">
        <rdf:RDF
          xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
          >

          <rdf:Description rdf:about=""
            xmlns:dc="http://purl.org/dc/elements/1.1/">

            <!-- Dublin Core properties go here -->

            <dc:title>
              <xsl:value-of select="'プロシージャ定義書'" />
            </dc:title>
            <dc:subject>
              <xsl:value-of select="keyword" />
            </dc:subject>
            <dc:creator>
              <xsl:value-of select="author" />
            </dc:creator>
            <dc:description>
              <xsl:value-of select="client" />
            </dc:description>
          </rdf:Description>

          <rdf:Description rdf:about=""
            xmlns:xmp="http://ns.adobe.com/xap/1.0/">

            <!-- XMP properties go here -->
            <xmp:CreatorTool>
              <xsl:value-of select="tool" />
            </xmp:CreatorTool>
          </rdf:Description>
        </rdf:RDF>
      </x:xmpmeta>
    </fo:declarations>
  </xsl:template>

</xsl:stylesheet>

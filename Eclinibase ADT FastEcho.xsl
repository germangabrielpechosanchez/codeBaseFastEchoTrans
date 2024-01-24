
   <!-- 
	No. Date       User     Description / commentaires (Optionnel)
	+++ ++++++++++ ++++++++ +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
	1   2018-09-26 lajrob   
-->
   <xsl:stylesheet xmlns:exsl="http://exslt.org/common"
                   xmlns:fn="http://www.w3.org/2005/xpath-functions"
                   xmlns:xs="http://www.w3.org/2001/XMLSchema"
                   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                   exclude-result-prefixes="#all"
                   extension-element-prefixes="exsl"
                   version="3.0">
      <!-- options, format de sortie -->
      <xsl:strip-space elements="*"/>
      <xsl:output encoding="UTF-8"
                  indent="yes"
                  method="xml"
                  omit-xml-declaration="yes"
                  version="1.0"/>
      <!-- Inclusion des Templates  -->
      <xsl:include href="util-Templates.xsl"/>
      <!-- déclaration des paramètres -->
      <xsl:param name="varParam1"/>
      <xsl:param name="varParam2"/>
      <xsl:param name="varParam3"/>
      <xsl:param name="varParam4"/>
      <xsl:param name="varParam5"/>
      <xsl:param name="varParam6"/>
      <xsl:param name="varParam7"/>
      <xsl:param name="varParam8"/>
      <xsl:param name="varParam9"/>
      <!-- votre code ici -->
      <!-- this is the identity transform: it copies everything that isn't matched by a more specific template -->
      <!-- recopie de tous les élements (node=balise, @=attribut) -->
      <xsl:template match="@* | node()">
         <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
         </xsl:copy>
      </xsl:template>
   </xsl:stylesheet>


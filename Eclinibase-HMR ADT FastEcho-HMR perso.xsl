
   <!-- 
	No. Date       User     Description / commentaires (Optionnel)
	+++ ++++++++++ ++++++++ +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
	1   2020-07-16 TC   Création
	2   2021-04-20 EG   Version normée avec l'équipe de développement
-->
   <xsl:stylesheet xmlns:exsl="http://exslt.org/common"
                   xmlns:functx="http://www.functx.com"
                   xmlns:util="http://whatever"
                   xmlns:xp="http://www.w3.org/2005/xpath-functions"
                   xmlns:xs="http://www.w3.org/2001/XMLSchema"
                   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                   exclude-result-prefixes="#all"
                   extension-element-prefixes="exsl"
                   version="3.0">
      <!-- Inclusion du xsl de base -->
      <xsl:import href="Eclinibase ADT FastEcho.xsl"/>
      <!-- ************************************************************************************************************************* -->
      <!--                                                          XSL PERSO                                                        -->
      <!-- ************************************************************************************************************************* -->
      
      <xsl:template match="/">
         <xsl:element name="HL7">
            <xsl:call-template name="MSH"/>
            <xsl:call-template name="EVN"/>  
            <xsl:call-template name="PID"/>
            
            <xsl:if test="$messageType != 'A48' or $messageType='A34'">    
               <xsl:call-template name="PV1"/> 
            </xsl:if>
            
            <xsl:if test="$messageType = 'A48' or $messageType='A34'">
               <xsl:call-template name="MRG"/>
            </xsl:if>
         </xsl:element> 
      </xsl:template>
      
   
      
   </xsl:stylesheet>


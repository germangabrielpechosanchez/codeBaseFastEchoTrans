
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
      
      <xsl:template name="MSH">
         <xsl:element name="MSH">
       
               <xsl:element name="MSH.1.1">
                  <xsl:value-of select="/HL7/MSH/MSH.1.1"/>
               </xsl:element>
           
            
            <!-- Encoding Characters-->
               <xsl:element name="MSH.2.1">
                  <xsl:value-of select="/HL7/MSH/MSH.2.1"/>
               </xsl:element>
         
            
            <!-- Sending Application-->
               <xsl:element name="MSH.3.1">
                  <xsl:value-of select="/HL7/MSH/MSH.3.1"/>
               </xsl:element>
            
            
            <!-- Sending facility -->
               <xsl:element name="MSH.4.1">
                  <xsl:value-of select="'HMR'"/>
               </xsl:element>
             
               <xsl:element name="MSH.5.1">
                  <xsl:value-of select="'FASTECHO'"/>
               </xsl:element> 
                  
               <xsl:element name="MSH.6.1">
                  <xsl:value-of select="'HMR'"/>
               </xsl:element> 
            
               <xsl:element name="MSH.7.1">
                  <xsl:value-of select="/HL7/MSH/MSH.7.1"/>
               </xsl:element>
            
               <xsl:element name="MSH.8.1">
                  <xsl:value-of select="''"/>
               </xsl:element>
                
               <xsl:element name="MSH.9.1">
                  <xsl:value-of select="/HL7/MSH/MSH.9.1"/>
               </xsl:element>
               
               <xsl:element name="MSH.9.2">   
                  <xsl:value-of select="'A40'"/>
               </xsl:element>
            
               <xsl:element name="MSH.10.1">
                  <xsl:value-of select="/HL7/MSH/MSH.10.1"/>
               </xsl:element>
            
               <xsl:element name="MSH.11.1">
                  <xsl:value-of select="/HL7/MSH/MSH.11.1"/>
               </xsl:element>      
            
               <xsl:element name="MSH.12.1">
                  <xsl:value-of select="'2.4'"/>
               </xsl:element>
           
         </xsl:element>
      </xsl:template> 
        
      <xsl:template name="EVN">
         <xsl:element name="EVN">   
            <xsl:element name="EVN.1.1">    
               <xsl:value-of select="'A40'"/>
            </xsl:element>
            
            <xsl:element name="EVN.2.1"> 
               <xsl:value-of select="/HL7/EVN/EVN.2.1"/>  
            </xsl:element>
            
            <xsl:element name="EVN.3.1"> 
               <xsl:value-of select="/HL7/EVN/EVN.3.1"/>  
            </xsl:element>
            
            <xsl:element name="EVN.4.1"> 
               <xsl:value-of select="/HL7/EVN/EVN.4.1"/>  
            </xsl:element>
         </xsl:element>  
      </xsl:template> 
      
      <xsl:template name="PID">
         <xsl:element name="PID">  
            <xsl:element name="PID.1.1">
               <xsl:value-of select="number(/HL7/PID/PID.1.1)"/>
            </xsl:element> 
            
            <xsl:element name="PID.2.1">
               <xsl:value-of select="/HL7/PID/PID.2.1"/>
            </xsl:element>          
            
         </xsl:element> 
      </xsl:template> 

      <xsl:template match="@* | node()">
         <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
         </xsl:copy>
      </xsl:template>
      
 
   </xsl:stylesheet>


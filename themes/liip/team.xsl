<xsl:stylesheet version="1.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:xhtml="http://www.w3.org/1999/xhtml"
        xmlns:i18n="http://apache.org/cocoon/i18n/2.1"
        xmlns="http://www.w3.org/1999/xhtml"
        xmlns:php="http://php.net/xsl"
        exclude-result-prefixes="php xhtml i18n">

    <xsl:import href="master.xsl"/>
    <xsl:variable name="s2x" select="/bx/plugin[@name = 'structure2xml']"/>
    <xsl:variable name="getId" select="php:functionString('bx_helpers_globals::GET', 'id')"/>

 <xsl:output encoding="utf-8" method="xml" 
    doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" 
    doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"/>
   
   <xsl:template name="content">
            <h1><i18n:text>Ein Team mit vielseitigen Kompetenzen</i18n:text></h1>
            <div id="teamdiv" style="float:left;">
            <xsl:for-each select="$s2x/team/team">
            
            <xsl:choose>
                <xsl:when test="displayorder = 0">
                
                </xsl:when>
                <xsl:when test="displayorder = 0">
                
                </xsl:when>
                <xsl:otherwise>
                    <div>
                        <p  style="clear:left;">
                        <h2><xsl:value-of select="name"/></h2>
                        <div class="teamspace" style="float: left;margin-right:5px;">
                        <img width="70" height="70" alt="{bild}" src="{bild}"/>
                        </div>
                        <div>
                        <xsl:apply-templates select="teamtexte/text/node()" mode="xhtml"/>
                        <br/>
                        <xsl:apply-templates select="mail" />
                        <br/>
                        fon:&#160;
                        <xsl:apply-templates select="fon" />
                        </div>
                        </p>
                    </div>
                    <div style="clear: both;"> </div>
                </xsl:otherwise>
            </xsl:choose>
           </xsl:for-each>
           </div>
    </xsl:template>
    
    <xsl:template match="teamtexte/text/node()" mode="xhtml">
        
            <xsl:copy-of select="."/>
        
    </xsl:template>
    
    <xsl:template match="mail">
        <a class="mail" href="mailto:{node()}">
        <xsl:value-of select="node()" />
        </a>
    </xsl:template>
    
</xsl:stylesheet>

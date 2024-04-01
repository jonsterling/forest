<?xml version="1.0"?>
<!-- SPDX-License-Identifier: CC0-1.0 -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

 <xsl:template match="month[.='1']">
  <xsl:text>January</xsl:text>
 </xsl:template>

 <xsl:template match="month[.='2']">
  <xsl:text>February</xsl:text>
 </xsl:template>

 <xsl:template match="month[.='3']">
  <xsl:text>March</xsl:text>
 </xsl:template>

 <xsl:template match="month[.='4']">
  <xsl:text>April</xsl:text>
 </xsl:template>

 <xsl:template match="month[.='5']">
  <xsl:text>May</xsl:text>
 </xsl:template>

 <xsl:template match="month[.='6']">
  <xsl:text>June</xsl:text>
 </xsl:template>

 <xsl:template match="month[.='7']">
  <xsl:text>July</xsl:text>
 </xsl:template>

 <xsl:template match="month[.='8']">
  <xsl:text>August</xsl:text>
 </xsl:template>

 <xsl:template match="month[.='9']">
  <xsl:text>September</xsl:text>
 </xsl:template>

 <xsl:template match="month[.='10']">
  <xsl:text>October</xsl:text>
 </xsl:template>

 <xsl:template match="month[.='11']">
  <xsl:text>November</xsl:text>
 </xsl:template>

 <xsl:template match="month[.='12']">
  <xsl:text>December</xsl:text>
 </xsl:template>

 <xsl:template match="year">
  <xsl:apply-templates />
 </xsl:template>

 <xsl:template match="day">
  <xsl:apply-templates />
 </xsl:template>

 <xsl:template match="date" mode="date-inner">
  <xsl:apply-templates select="month" />
  <xsl:if test="day">
   <xsl:text>&#160;</xsl:text>
   <xsl:apply-templates select="day" />
  </xsl:if>
  <xsl:if test="month">
   <xsl:text>,&#160;</xsl:text>
  </xsl:if>
  <xsl:apply-templates select="year" />
 </xsl:template>

 <xsl:template match="date[@href]">
  <li class="meta-item">
   <a class="link local" href="{@href}">
    <xsl:apply-templates select="." mode="date-inner" />
   </a>
  </li>
 </xsl:template>

 <xsl:template match="date[not(@href)]">
  <li class="meta-item">
   <xsl:apply-templates select="." mode="date-inner" />
  </li>
 </xsl:template>

 <xsl:template match="authors">
  <li class="meta-item">
   <address class="author">
    <xsl:for-each select="author">
     <xsl:apply-templates />
     <xsl:if test="position()!=last()">
      <xsl:text>, &#x20;</xsl:text>
     </xsl:if>
    </xsl:for-each>
    <xsl:if test="contributor">
     <xsl:text>&#x20;with contributions from&#x20;</xsl:text>
     <xsl:for-each select="contributor">
      <xsl:apply-templates />
      <xsl:if test="position()!=last()">
       <xsl:text>,&#x20;</xsl:text>
      </xsl:if>
     </xsl:for-each>
    </xsl:if>
   </address>
  </li>
 </xsl:template>

 <xsl:template match="meta[@name='doi']">
  <li class="meta-item">
   <a class="doi link" href="{concat('https://www.doi.org/', .)}">
    <xsl:value-of select="." />
   </a>
  </li>
 </xsl:template>

 <xsl:template match="meta[@name='orcid']">
  <li class="meta-item">
   <a class="orcid" href="{concat('https://orcid.org/', .)}">
    <xsl:value-of select="." />
   </a>
  </li>
 </xsl:template>

 <xsl:template match="meta[@name='bibtex']">
  <pre>
   <xsl:value-of select="." />
  </pre>
 </xsl:template>

 <xsl:template
  match="meta[@name='venue']|meta[@name='position']|meta[@name='institution']|meta[@name='source']">
  <li class="meta-item">
   <xsl:apply-templates />
  </li>
 </xsl:template>

 <xsl:template match="meta[@name='external']">
  <li class="meta-item">
   <a class="link external" href="{.}">
    <xsl:value-of select="." />
   </a>
  </li>
 </xsl:template>

 <xsl:template match="meta[@name='slides']">
  <li class="meta-item">
   <a class="link external" href="{.}">
    <xsl:text>Slides</xsl:text>
   </a>
  </li>
 </xsl:template>

 <xsl:template match="meta[@name='video']">
  <li class="meta-item">
   <a class="link external" href="{.}">
    <xsl:text>Video</xsl:text>
   </a>
  </li>
 </xsl:template>

</xsl:stylesheet>

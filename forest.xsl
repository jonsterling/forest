<?xml version="1.0"?>
<!-- SPDX-License-Identifier: CC0-1.0 -->
<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:mml="http://www.w3.org/1998/Math/MathML">

 <xsl:output method="html" encoding="utf-8" indent="yes" doctype-public="" doctype-system="" />

 <xsl:include href="metadata.xsl" />
 <xsl:include href="links.xsl" />

 <xsl:key
  name="tree-with-addr"
  match="/tree/mainmatter//tree"
  use="frontmatter/addr/text()" />

 <!-- The following ensures that node not matched by a template will simply be
   copied into the output. -->
 <xsl:template match="node()|@*">
  <xsl:copy>
   <span style="background-color:red">
    <xsl:text>[</xsl:text>
    <xsl:value-of select="name(.)" />
    <xsl:text>]</xsl:text>
   </span>
   <span style="background-color:red">
    <xsl:apply-templates select="node()|@*" />
   </span>
  </xsl:copy>
 </xsl:template>

 <xsl:template match="mml:*">
  <xsl:copy>
   <xsl:apply-templates select="node()|@*" />
  </xsl:copy>
 </xsl:template>

 <xsl:template
  match="p | img | code | pre | a | em | b | strong | ol | ul | li | center | blockquote | table | tr | th | td | ruby | rb | rt | rp | span | figure | figcaption | mark | div | hr | abbr | sub | sup">
  <xsl:copy>
   <xsl:apply-templates select="node()|@*" />
  </xsl:copy>
 </xsl:template>

 <xsl:template match="pause"></xsl:template>

 <xsl:template match="embedded-tex">
  <center>
   <img src="resources/{@hash}.svg" />
  </center>
 </xsl:template>

 <xsl:template match="error">
  <span class="error">
   <xsl:apply-templates />
  </span>
 </xsl:template>

 <xsl:template match="tex[@display='block']">
  <xsl:text>\[</xsl:text>
  <xsl:value-of select="." />
  <xsl:text>\]</xsl:text>
 </xsl:template>

 <xsl:template match="tex[not(@display='block')]">
  <xsl:text>\(</xsl:text>
  <xsl:value-of select="." />
  <xsl:text>\)</xsl:text>
 </xsl:template>

 <xsl:template match="/">
  <html>
   <head>
    <meta name="viewport" content="width=device-width" />
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="katex.min.css" />
    <xsl:apply-templates select="/tree/frontmatter/rss" />
    <script type="text/javascript">
     <xsl:if test="/tree/frontmatter/source-path">
      <xsl:text>window.sourcePath = '</xsl:text>
      <xsl:value-of select="/tree/frontmatter/source-path" />
      <xsl:text>'</xsl:text>
     </xsl:if>
    </script>
    <script type="module" src="forester.js"></script>
    <title>
     <xsl:value-of select="/tree/frontmatter/title" />
    </title>
   </head>
   <body>
    <ninja-keys placeholder="Start typing a note title or ID"></ninja-keys>
    <xsl:if test="not(/tree[@root = 'true'])">
     <header class="header">
      <nav class="nav">
       <div class="logo">
        <a href="index.xml" title="Home">
         <xsl:text>« Home</xsl:text>
        </a>
       </div>
      </nav>
     </header>
    </xsl:if>
    <div id="grid-wrapper">
     <article>
      <xsl:apply-templates select="tree" />
     </article>
     <xsl:if
      test="tree/mainmatter/tree[@toc='true'] and not(/tree/frontmatter/meta[@name = 'toc']/.='false')">
      <nav id="toc">
       <div class="block">
        <h1>Table of Contents</h1>
        <xsl:apply-templates select="tree/mainmatter" mode="toc" />
       </div>
      </nav>
     </xsl:if>
    </div>
   </body>
  </html>
 </xsl:template>

 <xsl:template name="numbered-taxon">
  <span class="taxon">
   <xsl:apply-templates select="taxon" />
   <xsl:if test="(../@numbered='true' and ../@toc='true' and count(../../tree) > 1) or number">
    <xsl:if test="taxon">
     <xsl:text>&#160;</xsl:text>
    </xsl:if>
    <xsl:choose>
     <xsl:when test="number">
      <xsl:value-of select="number" />
     </xsl:when>
     <xsl:otherwise>
      <xsl:number format="1.1" count="tree[@toc='true' and @numbered='true']" level="multiple" />
     </xsl:otherwise>
    </xsl:choose>
   </xsl:if>
   <xsl:if
    test="taxon or (../@numbered='true' and ../@toc='true' and count(../../tree) > 1) or number">
    <xsl:text>.&#160;</xsl:text>
   </xsl:if>
  </span>
 </xsl:template>

 <xsl:template match="tree" mode="toc">
  <li>
   <xsl:for-each select="frontmatter">
    <a href="{route}" class="bullet" title="{title} [{addr}]">■</a>
    <span class="link local" data-target="#tree-{anchor}">
     <xsl:call-template name="numbered-taxon" />
     <xsl:apply-templates select="title" />
    </span>
   </xsl:for-each>
   <xsl:apply-templates select="mainmatter" mode="toc" />
  </li>
 </xsl:template>

 <xsl:template match="mainmatter" mode="toc">
  <ul class="block">
   <xsl:apply-templates select="tree[@toc='true']" mode="toc" />
  </ul>
 </xsl:template>

 <xsl:template match="frontmatter/title">
  <xsl:apply-templates />
 </xsl:template>

 <xsl:template match="mainmatter">
  <div class="tree-content">
   <xsl:apply-templates />
  </div>
 </xsl:template>

 <xsl:template match="addr">
  <a class="slug" href="{../route}">
   <xsl:text>[</xsl:text>
   <xsl:value-of select="." />
   <xsl:text>]</xsl:text>
  </a>
 </xsl:template>

 <xsl:template match="source-path">
  <a class="edit-button" href="{concat('vscode://file', .)}">
   <xsl:text>[edit]</xsl:text>
  </a>
 </xsl:template>

 <xsl:template match="taxon">
  <xsl:value-of select="." />
 </xsl:template>

 <xsl:template match="frontmatter">
  <header>
   <h1>
    <xsl:call-template name="numbered-taxon" />
    <xsl:apply-templates select="title" />
    <xsl:text>&#032;</xsl:text>
    <xsl:apply-templates select="addr" />
    <xsl:text>&#032;</xsl:text>
    <xsl:apply-templates select="source-path" />
   </h1>
   <div class="metadata">
    <ul>
     <xsl:apply-templates select="date" />
     <xsl:if test="not(meta[@name = 'author']/.='false')">
      <xsl:apply-templates select="authors" />
     </xsl:if>
     <xsl:apply-templates select="meta[@name='position']" />
     <xsl:apply-templates select="meta[@name='institution']" />
     <xsl:apply-templates select="meta[@name='venue']" />
     <xsl:apply-templates select="meta[@name='source']" />
     <xsl:apply-templates select="meta[@name='doi']" />
     <xsl:apply-templates select="meta[@name='orcid']" />
     <xsl:apply-templates select="meta[@name='external']" />
     <xsl:apply-templates select="meta[@name='slides']" />
     <xsl:apply-templates select="meta[@name='video']" />
    </ul>
   </div>
  </header>
 </xsl:template>

 <xsl:template match="tree" mode="tree-number">
  <xsl:choose>
   <xsl:when test="frontmatter/number">
    <xsl:value-of select="frontmatter/number" />
   </xsl:when>
   <xsl:otherwise>
    <xsl:number format="1.1" count="tree[@toc='true' and @numbered='true']" level="multiple" />
   </xsl:otherwise>
  </xsl:choose>
 </xsl:template>

 <xsl:template match="ref">
  <a class="link local">
   <xsl:attribute name="href">
    <xsl:choose>
     <xsl:when test="key('tree-with-addr',current()/@addr)">
      <xsl:text>#tree-</xsl:text>
      <xsl:value-of select="key('tree-with-addr',current()/@addr)/frontmatter/anchor" />
     </xsl:when>
     <xsl:otherwise>
      <xsl:value-of select="@href" />
     </xsl:otherwise>
    </xsl:choose>
   </xsl:attribute>

   <xsl:choose>
    <xsl:when test="@taxon">
     <xsl:value-of select="@taxon" />
    </xsl:when>
    <xsl:otherwise>§</xsl:otherwise>
   </xsl:choose>
   <xsl:text>&#160;</xsl:text>
   <xsl:choose>
    <xsl:when test="@number">
     <xsl:value-of select="@number" />
    </xsl:when>
    <xsl:when test="key('tree-with-addr',current()/@addr)[@numbered='true' and @toc='true']">
     <xsl:apply-templates select="key('tree-with-addr',current()/@addr)[1]" mode="tree-number" />
    </xsl:when>
    <xsl:otherwise>
     <xsl:text>[</xsl:text>
     <xsl:value-of select="@addr" />
     <xsl:text>]</xsl:text>
    </xsl:otherwise>
   </xsl:choose>
  </a>
 </xsl:template>

 <xsl:template match="backmatter/references" mode="title">
  <xsl:text>References</xsl:text>
 </xsl:template>

 <xsl:template match="backmatter/context" mode="title">
  <xsl:text>Context</xsl:text>
 </xsl:template>

 <xsl:template match="backmatter/contributions" mode="title">
  <xsl:text>Contributions</xsl:text>
 </xsl:template>

 <xsl:template match="backmatter/related" mode="title">
  <xsl:text>Related</xsl:text>
 </xsl:template>

 <xsl:template match="backmatter/backlinks" mode="title">
  <xsl:text>Backlinks</xsl:text>
 </xsl:template>

 <xsl:template match="backmatter/references|backmatter/context|backmatter/contributions|backmatter/related|backmatter/backlinks">
  <xsl:if test="tree">
   <section class="block link-list">
    <h2>
     <xsl:apply-templates select="." mode="title" />
    </h2>
    <xsl:apply-templates select="tree" />
   </section>
  </xsl:if>
 </xsl:template>

 <xsl:template match="/tree[@root!='true']/backmatter">
  <footer>
   <xsl:apply-templates select="references" />
   <xsl:apply-templates select="context" />
   <xsl:apply-templates select="backlinks" />
   <xsl:apply-templates select="related" />
   <xsl:apply-templates select="contributions" />
  </footer>
 </xsl:template>

 <xsl:template match="/tree[@root='true']/backmatter">
 </xsl:template>

 <xsl:template match="tree">
  <section>
   <xsl:attribute name="lang">
    <xsl:choose>
     <xsl:when test="frontmatter/meta[@name='lang']">
      <xsl:value-of select="frontmatter/meta[@name='lang']" />
     </xsl:when>
     <xsl:otherwise>en</xsl:otherwise>
    </xsl:choose>
   </xsl:attribute>

   <xsl:choose>
    <xsl:when test="@show-metadata = 'false'">
     <xsl:attribute name="class">block hide-metadata</xsl:attribute>
    </xsl:when>
    <xsl:otherwise>
     <xsl:attribute name="class">block</xsl:attribute>
    </xsl:otherwise>
   </xsl:choose>
   <xsl:if test="frontmatter/taxon">
    <xsl:attribute name="data-taxon">
     <xsl:value-of select="frontmatter/taxon" />
    </xsl:attribute>
   </xsl:if>

   <xsl:choose>
    <xsl:when test="@show-heading='true'">
     <details id="{concat('tree-',frontmatter/anchor)}">
      <xsl:if test="@expanded = 'true'">
       <xsl:attribute name="open">open</xsl:attribute>
      </xsl:if>
      <summary>
       <xsl:apply-templates select="frontmatter" />
      </summary>
      <xsl:apply-templates select="mainmatter" />
      <xsl:apply-templates select="frontmatter/meta[@name='bibtex']" />
     </details>
    </xsl:when>
    <xsl:otherwise>
     <xsl:apply-templates select="mainmatter" />
    </xsl:otherwise>
   </xsl:choose>
  </section>

  <xsl:apply-templates select="backmatter" />
 </xsl:template>

 <xsl:template match="backmatter/*/tree">
  <section class="block">
   <xsl:if test="frontmatter/taxon">
    <xsl:attribute name="data-taxon">
     <xsl:value-of select="frontmatter/taxon" />
    </xsl:attribute>
   </xsl:if>
   <details>
    <summary>
     <xsl:apply-templates select="frontmatter" />
    </summary>
    <xsl:apply-templates select="mainmatter" />
   </details>
  </section>
 </xsl:template>

</xsl:stylesheet>

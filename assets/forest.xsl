<?xml version="1.0"?>
<!-- SPDX-License-Identifier: CC0-1.0 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="utf-8" indent="yes" doctype-public=""
    doctype-system="" />

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

  <xsl:template match="year">
    <xsl:apply-templates />
  </xsl:template>

  <xsl:template match="day">
    <xsl:apply-templates />
  </xsl:template>

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

  <xsl:template match="date">
    <li class="meta-item">
      <xsl:apply-templates select="month" />
      <xsl:if test="day">
        <xsl:text> </xsl:text>
        <xsl:apply-templates select="day" />
      </xsl:if>
      <xsl:if test="month">
        <xsl:text>, </xsl:text>
      </xsl:if>
      <xsl:apply-templates select="year" />
    </li>
  </xsl:template>

  <xsl:template
    match="p | img | code | pre | a | em | b | strong | ol | ul | li | center | blockquote | table | tr | th | td | ruby | rb | rt | rp | span | figure | figcaption | mark | div | hr | abbr">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*" />
    </xsl:copy>
  </xsl:template>

  <xsl:template match="headline">
    <summary>
      <xsl:apply-templates />
    </summary>
  </xsl:template>

  <xsl:template match="block">
    <section class="block">
      <details open="open">
        <xsl:apply-templates />
      </details>
    </section>
  </xsl:template>

  <xsl:template match="link">
    <a class="{@type}" href="{@href}" title="{@title}">
      <xsl:apply-templates />
    </a>
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

  <xsl:template match="tree" mode="toc">
    <li>
      <a class="toc">
        <xsl:for-each select="frontmatter">
          <xsl:attribute name="href">
            <xsl:text>#tree-</xsl:text>
            <xsl:value-of select="anchor" />
          </xsl:attribute>
          <span class="toc-item-label">
            <xsl:apply-templates select="taxon" />
            <xsl:apply-templates select="trail" />
            <xsl:if test="trail/crumb">
              <xsl:text>. </xsl:text>
            </xsl:if>
          </span>
          <xsl:apply-templates select="title" />
        </xsl:for-each>
      </a>
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

  <xsl:template match="authors">
    <li class="meta-item">
      <address class="author">
        <xsl:for-each select="author">
          <xsl:apply-templates />
          <xsl:if test="position()!=last()">
            <xsl:text>, </xsl:text>
          </xsl:if>
        </xsl:for-each>
        <xsl:if test="contributor">
          <xsl:text> with contributions from </xsl:text>
          <xsl:for-each select="contributor">
            <xsl:apply-templates />
            <xsl:if test="position()!=last()">
              <xsl:text>, </xsl:text>
            </xsl:if>
          </xsl:for-each>
        </xsl:if>
      </address>
    </li>
  </xsl:template>

  <xsl:template match="mainmatter">
    <div class="tree-content">
      <xsl:apply-templates />
    </div>
  </xsl:template>

  <xsl:template match="/tree/frontmatter/rss">
    <link rel="alternate" type="application/rss+xml" href="{.}" title="{../title}" />
  </xsl:template>

  <xsl:template match="tree/frontmatter/addr">
    <a class="slug" href="{../route}">
      <xsl:text>[</xsl:text>
      <xsl:value-of select="." />
      <xsl:text>]</xsl:text>
    </a>
  </xsl:template>

  <xsl:template match="tree/frontmatter/source-path">
    <a class="edit-button" href="{concat('vscode://file/', .)}">
      <xsl:text>[edit]</xsl:text>
    </a>
  </xsl:template>

  <xsl:template match="meta[@name='doi']">
    <li class="meta-item">
      <a class="doi" href="{concat('https://www.doi.org/', .)}">
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
    <pre><xsl:value-of select="." /></pre>
  </xsl:template>

  <xsl:template match="meta[@name='venue']|meta[@name='position']|meta[@name='institution']">
    <li class="meta-item">
      <xsl:apply-templates />
    </li>
  </xsl:template>

  <xsl:template match="meta[@name='external']">
    <li class="meta-item">
      <a class="external" href="{.}">
        <xsl:value-of select="." />
      </a>
    </li>
  </xsl:template>

  <xsl:template match="meta[@name='slides']">
    <li class="meta-item">
      <a class="external" href="{.}">
        <xsl:text>Slides</xsl:text>
      </a>
    </li>
  </xsl:template>


  <xsl:template match="meta[@name='video']">
    <li class="meta-item">
      <a class="external" href="{.}">
        <xsl:text>Video</xsl:text>
      </a>
    </li>
  </xsl:template>

  <xsl:template match="tree/frontmatter/taxon">
    <span class="taxon">
      <xsl:value-of select="." />
      <xsl:if test="not(../trail/crumb)">
        <xsl:text>. </xsl:text>
      </xsl:if>
    </span>
  </xsl:template>

  <xsl:template match="trail">
    <xsl:text> </xsl:text>
    <xsl:if test="crumb">
      <xsl:for-each select="crumb">
        <xsl:apply-templates />
        <xsl:if test="position()!=last()">
          <xsl:text>.</xsl:text>
        </xsl:if>
      </xsl:for-each>
    </xsl:if>
  </xsl:template>

  <xsl:template match="crumb">
    <xsl:value-of select="." />
  </xsl:template>

  <xsl:template match="tree/frontmatter">
    <header>
      <h1>
        <xsl:apply-templates select="taxon" />
        <xsl:apply-templates select="trail" />
        <xsl:if test="trail/crumb">
          <xsl:text>. </xsl:text>
        </xsl:if>

        <xsl:apply-templates select="title" />
        <xsl:text> </xsl:text>
        <xsl:apply-templates select="addr" />
        <xsl:text> </xsl:text>
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
          <xsl:apply-templates select="meta[@name='doi']" />
          <xsl:apply-templates select="meta[@name='orcid']" />
          <xsl:apply-templates select="meta[@name='external']" />
          <xsl:apply-templates select="meta[@name='slides']" />
          <xsl:apply-templates select="meta[@name='video']" />
        </ul>
      </div>
    </header>
  </xsl:template>

  <xsl:template match="backmatter/references">
    <xsl:if test="tree">
      <section class="block link-list">
        <h2>References</h2>
        <xsl:apply-templates select="tree" />
      </section>
    </xsl:if>
  </xsl:template>

  <xsl:template match="backmatter/context">
    <xsl:if test="tree">
      <section class="block link-list">
        <h2>Context</h2>
        <xsl:apply-templates select="tree" />
      </section>
    </xsl:if>
  </xsl:template>

  <xsl:template match="backmatter/contributions">
    <xsl:if test="tree">
      <section class="block link-list">
        <h2>Contributions</h2>
        <xsl:apply-templates select="tree" />
      </section>
    </xsl:if>
  </xsl:template>

  <xsl:template match="backmatter/related">
    <xsl:if test="tree">
      <section class="block link-list">
        <h2>Related</h2>
        <xsl:apply-templates select="tree" />
      </section>
    </xsl:if>
  </xsl:template>

  <xsl:template match="backmatter/backlinks">
    <xsl:if test="tree">
      <section class="block link-list">
        <h2>Backlinks</h2>
        <xsl:apply-templates select="tree" />
      </section>
    </xsl:if>
  </xsl:template>

  <xsl:template match="/tree/backmatter">
    <footer>
      <xsl:apply-templates select="references" />
      <xsl:apply-templates select="context" />
      <xsl:apply-templates select="backlinks" />
      <xsl:apply-templates select="related" />
      <xsl:apply-templates select="contributions" />
    </footer>
  </xsl:template>

  <xsl:template match="/tree|mainmatter/tree">
    <xsl:choose>
      <xsl:when test="@show-heading = 'false'">
        <section class="block">
          <xsl:apply-templates select="mainmatter" />
        </section>
      </xsl:when>
      <xsl:otherwise>
        <section>
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
        </section>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates select="self::*[@root != 'true']/backmatter" />
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

<?xml version="1.0"?>

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

  <xsl:template match="date">
    <li class="meta-item">
      <xsl:apply-templates />
    </li>
  </xsl:template>

  <xsl:template
    match="p | img | code | pre | a | em | b | strong | ol | ul | li | center | blockquote">
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
    <a>
      <xsl:attribute name="class">
        <xsl:value-of select="@type" />
      </xsl:attribute>
      <xsl:attribute name="href">
        <xsl:value-of select="@href" />
      </xsl:attribute>
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

  <xsl:template match="trail">
    <xsl:for-each select="crumb">
      <xsl:apply-templates />
      <xsl:if test="position()!=last()">
        <xsl:text>.</xsl:text>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="crumb">
    <xsl:value-of select="." />
  </xsl:template>


  <xsl:template match="/">
    <html>
      <head>
        <meta name="viewport" content="width=device-width" />
        <link rel="stylesheet" href="style.css" />
        <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Inria+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&amp;amp;display=swap" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.6/dist/katex.min.css"
          integrity="sha384-mXD7x5S50Ko38scHSnD4egvoExgMPbrseZorkbE49evAfv9nNcbrXJ8LLNsDgh9d"
          crossorigin="anonymous" />
        <script defer="true" src="https://cdn.jsdelivr.net/npm/katex@0.16.6/dist/katex.min.js"
          integrity="sha384-j/ZricySXBnNMJy9meJCtyXTKMhIJ42heyr7oAdxTDBy/CYA9hzpMo+YTNV5C+1X"
          crossorigin="anonymous"></script>
        <script defer="true"
          src="https://cdn.jsdelivr.net/npm/katex@0.16.6/dist/contrib/auto-render.min.js"
          integrity="sha384-+VBxd3r6XgURycqtZ117nYw44OOcIax56Z4dCRWbxyPt0Koah1uHoK0o4+/RRE05"
          crossorigin="anonymous" onload="renderMathInElement(document.body);"></script>

        <script type="text/javascript">
          <xsl:if test="/tree/frontmatter/abspath"> window.absolutePath = '<xsl:value-of
              select="/tree/frontmatter/abspath" />' </xsl:if>
        </script>

        <script type="module" src="ninja.js"></script>
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
        <article class="container">
          <xsl:apply-templates select="tree" />
        </article>
      </body>
    </html>
  </xsl:template>


  <xsl:template match="frontmatter/title">
    <xsl:apply-templates />
  </xsl:template>

  <xsl:template match="frontmatter/taxon">
    <xsl:value-of select="." />
  </xsl:template>

  <xsl:template match="frontmatters/authors">
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

  <xsl:template name="FrontmatterSlugLink">
    <a class="slug">
      <xsl:attribute name="href">
        <xsl:value-of select="route" />
      </xsl:attribute>
      <xsl:text>[</xsl:text>
      <xsl:value-of select="addr" />
      <xsl:text>]</xsl:text>
    </a>
  </xsl:template>

  <xsl:template match="meta[@name='doi']">
    <a class="doi">
      <xsl:attribute name="href">
        <xsl:text>https://www.doi.org/</xsl:text>
        <xsl:value-of select="." />
      </xsl:attribute>
      <xsl:value-of select="." />
    </a>
  </xsl:template>

  <xsl:template match="meta[@name='external']">
    <li class="meta-item">
      <a class="external">
        <xsl:attribute name="href">
          <xsl:value-of select="." />
        </xsl:attribute>
        <xsl:value-of select="." />
      </a>
    </li>
  </xsl:template>


  <xsl:template match="tree[@taxon]/frontmatter">
    <header>
      <h1>
        <xsl:attribute name="class">leaf</xsl:attribute>
        <span class="taxon">
          <xsl:value-of select="../@taxon" />
          <xsl:if test="trail/crumb">
            <xsl:text> </xsl:text>
          </xsl:if>
          <xsl:apply-templates select="trail" />
          <xsl:text>. </xsl:text>
        </span>
        <xsl:apply-templates select="title" />
        <xsl:text> </xsl:text>
        <xsl:call-template name="FrontmatterSlugLink" />
      </h1>
      <xsl:call-template name="Metadata" />
    </header>
  </xsl:template>

  <xsl:template name="Metadata">
    <div class="metadata">
      <ul>
        <xsl:apply-templates select="date" />
        <xsl:apply-templates select="authors" />
        <xsl:apply-templates select="meta[@name='external']" />
        <xsl:apply-templates select="meta[@name='doi']" />
      </ul>
    </div>
  </xsl:template>

  <xsl:template match="tree[not(@taxon)]/frontmatter">
    <header>
      <h1>
        <xsl:attribute name="class">tree</xsl:attribute>

        <xsl:apply-templates select="trail" />
        <xsl:if test="trail/crumb">
          <xsl:text>. </xsl:text>
        </xsl:if>

        <xsl:apply-templates select="title" />
        <xsl:text> </xsl:text>
        <xsl:call-template name="FrontmatterSlugLink" />
      </h1>
      <xsl:call-template name="Metadata" />
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
      <xsl:apply-templates select="context|backlinks|related|contributions|references" />
    </footer>
  </xsl:template>

  <xsl:template name="Tree">
    <section class="block">
      <details>
        <xsl:if test="@mode = 'full'">
          <xsl:attribute name="open">open</xsl:attribute>
        </xsl:if>
        <summary>
          <xsl:apply-templates select="frontmatter" />
        </summary>
        <xsl:apply-templates select="mainmatter" />
      </details>
    </section>
  </xsl:template>

  <xsl:template name="TreeSpliced">
    <section class="block">
      <xsl:apply-templates select="mainmatter" />
    </section>
  </xsl:template>

  <xsl:template match="/tree|mainmatter/tree">
    <xsl:choose>
      <xsl:when test="@mode = 'spliced'">
        <xsl:call-template name="TreeSpliced" />
      </xsl:when>
      <xsl:otherwise>
        <xsl:call-template name="Tree" />
      </xsl:otherwise>
    </xsl:choose>
    <xsl:if test="not(@root = 'true')">
      <xsl:apply-templates select="backmatter" />
    </xsl:if>
  </xsl:template>

  <xsl:template match="backmatter/*/tree">
    <section class="block">
      <details>
        <summary>
          <xsl:apply-templates select="frontmatter" />
        </summary>
        <xsl:apply-templates select="mainmatter" />
      </details>
    </section>
  </xsl:template>
</xsl:stylesheet>

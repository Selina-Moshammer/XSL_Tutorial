<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>

  <body>
  <h2>Person </h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>Name</th>
      <th>LastName</th>
    </tr>
    <xsl:for-each select="catalog/person">
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="lastname"/></td>
    </tr>
    </xsl:for-each>
  </table>
  <h3> Jahrgang 2003</h3>
  <table border="2">
    <tr bgcolor="#345678">
      <th>Name</th>
      <th>LastName</th>
    </tr>
    <xsl:for-each select="catalog/person">
    <xsl:if test="year = 2003">
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="lastname"/></td>
    </tr>
    </xsl:if>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

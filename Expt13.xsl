<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<body>
<h2>Student Result</h2>
<table border="1">
<tr>
<th>Name</th>
<th>Marks</th>
<th>Status</th>
</tr>
<xsl:for-each select="students/student">
<tr>
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="marks"/></td>
<td>
<xsl:choose>
<xsl:when test="marks &gt;= 50">Pass</xsl:when>
<xsl:otherwise>Fail</xsl:otherwise>
</xsl:choose>
</td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
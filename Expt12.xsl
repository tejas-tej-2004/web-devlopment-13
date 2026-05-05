<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
<html>
<body>
<h2>Student List</h2>
<table border="1">
<tr>
<th>ID</th>
<th>Name</th>
<th>Branch</th>
<th>Year</th>
</tr>

<xsl:for-each select="students/student">
<tr>
<td><xsl:value-of select="id"/></td>
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="branch"/></td>
<td><xsl:value-of select="year"/></td>
</tr>
</xsl:for-each>

</table>
</body>
</html>
</xsl:template>

</xsl:stylesheet>
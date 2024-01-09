<!-- students.xsl -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/students">
    <html>
      <head>
        <style>
          body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
          }
          h2 {
            color: #333333;
          }
          table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
          }
          th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 12px;
          }
          th {
            background-color: #3498db;
            color: white;
          }
          tr:nth-child(even) {
            background-color: #f9f9f9;
          }
          tr:hover {
            background-color: #e2e2e2;
          }
          .green { background-color: #4caf50; }
          .orange { background-color: #ff9800; }
          .red { background-color: #f44336; }
        </style>
      </head>
      <body>
        <h2>Student Information</h2>
        <table>
          <tr>
            <th>Name</th>
            <th>Roll No</th>
            <th>Subject 1</th>
            <th>Subject 2</th>
            <th>Subject 3</th>
            <th>Total</th>
            <th>Average</th>
            <th>Rank</th>
          </tr>
          <xsl:apply-templates select="student">
            <xsl:sort select="total" data-type="number" order="descending"/>
          </xsl:apply-templates>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="student">
    <xsl:variable name="position" select="position()" />
    <xsl:variable name="color">
      <xsl:choose>
        <xsl:when test="$position <= 3">green</xsl:when>
        <xsl:when test="$position <= 6">orange</xsl:when>
        <xsl:otherwise>red</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <tr class="{$color}">
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="rollno"/></td>
      <td><xsl:value-of select="marks/subject1"/></td>
      <td><xsl:value-of select="marks/subject2"/></td>
      <td><xsl:value-of select="marks/subject3"/></td>
      <td><xsl:value-of select="total"/></td>
      <td><xsl:value-of select="average"/></td>
      <td><xsl:value-of select="$position"/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>

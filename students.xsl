<!-- students.xsl -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/students">
    <html>
      <head>
        <style>
          body {
            font-family: 'Arial', sans-serif;
            /* No background color */
          }
          h2 {
            /* No color */
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
            /* No background color */
            color: black;
          }
          tr:nth-child(even) {
            /* No background color */
          }
          tr:hover {
            /* No background color */
          }
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
    <xsl:variable name="rank" select="position()" />
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="rollno"/></td>
      <td><xsl:value-of select="marks/subject1"/></td>
      <td><xsl:value-of select="marks/subject2"/></td>
      <td><xsl:value-of select="marks/subject3"/></td>
      <td><xsl:value-of select="total"/></td>
      <td><xsl:value-of select="average"/></td>
      <td><xsl:value-of select="$rank"/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>

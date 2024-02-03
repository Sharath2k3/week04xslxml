<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <style>
          table {
            font-family: Arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
          }

          th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
          }

          th {
            background-color: #f2f2f2;
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
          </tr>
          <xsl:apply-templates select="students/student" />
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="student">
    <tr>
      <td><xsl:value-of select="name" /></td>
      <td><xsl:value-of select="rollno" /></td>
      <td><xsl:value-of select="marks/subject1" /></td>
      <td><xsl:value-of select="marks/subject2" /></td>
      <td><xsl:value-of select="marks/subject3" /></td>
      <td><xsl:value-of select="total" /></td>
      <td><xsl:value-of select="average" /></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <style>
          body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
          }

          header {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 1em;
          }

          h2 {
            color: #333;
          }

          table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
          }

          th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
          }

          th {
            background-color: #4CAF50;
            color: white;
          }

          tr:hover {
            background-color: #f5f5f5;
          }
        </style>
      </head>
      <body>
        <header>
          <h2>Student Information</h2>
        </header>
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

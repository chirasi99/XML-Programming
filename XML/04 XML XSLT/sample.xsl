<?xml version= "1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmls:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/movies">
        <html>
            <body>
                <h2>Popular Movies List</h2>
                <table border ="1">
                    <tr bgcolor="yellow">
                        <th>Name</th>
                        <th>Director</th>
                        <th>Release</th>
                    </tr>
                    <xsl:for-each select="movie">
                        <xsl:sort select="name" order="descending"/>
                        <xsl:if test="imdb &gt; 7.5">
                            <!-- greater than mark => &gt; 
                             lesser than mark => &lt; 
                             less than or equal => &lt;= 
                             greater than or equal => &gt;=   -->
                            <tr>
                                <td>
                                    <xsl:value-of select="name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="director"/>
                                </td>
                                <td>
                                    <xsl:value-of select="release"/>
                                </td>
                            </tr>
                        </xsl:if>
                        <xsl:choose>
                            <xsl:when test="imdb &gt;= 7.5">                                <!--if-->
                                <tr bgcolor="green">
                                    <td>
                                        <xsl:value-of select="name"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="director"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="release"/>
                                    </td>
                                </tr>
                            </xsl:when>
                            <xsl:otherwise test="">                                <!--else-->
                                <tr bgcolor="red">
                                    <td>
                                        <xsl:value-of select="name"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="director"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="release"/>
                                    </td>
                                </tr>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
<html>
<head>
<title>RTMP Statistics</title>
<style>
body { font-family: Arial, sans-serif; background: #0f172a; color: #fff; }
table { border-collapse: collapse; width: 100%; background: #1e293b; }
th, td { border: 1px solid #334155; padding: 8px; text-align: left; }
th { background: #0f172a; color: #60a5fa; }
</style>
</head>
<body>
<h1>RTMP Server Statistics</h1>
<xsl:apply-templates/>
</body>
</html>
</xsl:template>

<xsl:template match="rtmp">
    <xsl:apply-templates/>
</xsl:template>

<xsl:template match="server">
    <h2>Server</h2>
    <p>Uptime: <xsl:value-of select="@uptime"/> seconds</p>
    <xsl:apply-templates/>
</xsl:template>

<xsl:template match="application">
    <h2>Application: <xsl:value-of select="@name"/></h2>
    <xsl:apply-templates/>
</xsl:template>

<xsl:template match="live">
    <h3>Live Streams</h3>
    <xsl:apply-templates/>
</xsl:template>

<xsl:template match="stream">
    <h4>Stream: <xsl:value-of select="@name"/></h4>
    <p>Clients: <xsl:value-of select="@nclients"/></p>
    <xsl:apply-templates/>
</xsl:template>

<xsl:template match="client">
    <p>Client: <xsl:value-of select="@address"/></p>
</xsl:template>
</xsl:stylesheet>

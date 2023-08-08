<?xml version="1.0" encoding="UTF-8"?>
<!--
     Copyright 2015-2019 Antenna House, Inc.

     Licensed under the Apache License, Version 2.0 (the "License");
     you may not use this file except in compliance with the License.
     You may obtain a copy of the License at

         http://www.apache.org/licenses/LICENSE-2.0

     Unless required by applicable law or agreed to in writing, software
     distributed under the License is distributed on an "AS IS" BASIS,
     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
     See the License for the specific language governing permissions and
     limitations under the License.
-->
<schema xmlns="http://purl.oclc.org/dsdl/schematron"
	xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:f="f"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	queryBinding="xslt2">
    <ns uri="f" prefix="f" />

<phase id="font-config">
  <active pattern="font-config.pattern" />
</phase>

<pattern id="font-config.pattern">

  <rule context="font-entry/@unicode-range">
    <assert
	test="every $range in
	      tokenize(normalize-space(.), '\s')[matches(., '^U\+[0-9A-Fa-f]+-[0-9A-Fa-f]+$')]
	      satisfies
	      f:hexToDec(replace($range, '^U\+([0-9A-Fa-f]+)-([0-9A-Fa-f]+)$', '$2')) >= f:hexToDec(replace($range, '^U\+([0-9A-Fa-f]+)-([0-9A-Fa-f]+)$', '$1'))" role="Error"
	><value-of
	select="for $range in
	tokenize(normalize-space(.), '\s')[matches(., '^U\+[0-9A-Fa-f]+-[0-9A-Fa-f]+$')][f:hexToDec(replace(., '^U\+([0-9A-Fa-f]+)-([0-9A-Fa-f]+)$', '$2')) &lt; f:hexToDec(replace(., '^U\+([0-9A-Fa-f]+)-([0-9A-Fa-f]+)$', '$1'))]
	return 
	concat('In the range ''', $range, ''', ''', replace($range, '^U\+([0-9A-Fa-f]+)-([0-9A-Fa-f]+)$', '$2'), ''' is less than ''', replace($range, '^U\+([0-9A-Fa-f]+)-([0-9A-Fa-f]+)$', '$1'), '''. ' (:, f:hexToDec(replace($range, '^U\+([0-9A-Fa-f]+)-([0-9A-Fa-f]+)$', '$2')), '|', f:hexToDec(replace($range, '^U\+([0-9A-Fa-f]+)-([0-9A-Fa-f]+)$', '$1')):))" />
</assert>
  </rule>

  <rule context="font-config/@otf-metrics-mode">
    <report test="true()" role="Warning">'otf-metrics-mode' only applies with AH Formatter V6.6 and earlier.</report>
  </rule>

  <rule context="font-folder/@path">
    <report test="contains(., '[Install directory]')" role="Error">Replace '[Install directory]' with the AH Formatter installation directory.</report>
    <report test="contains(., '[System font directory]')" role="Error">Replace '[System font directory]' with the location of the Windows font directory.</report>
  </rule>
</pattern>


  <xsl:function name="f:hexToDec">
    <xsl:param name="hex" as="xs:string"/>
    <xsl:variable name="dec"
        select="string-length(substring-before('0123456789ABCDEF', upper-case(substring($hex,1,1))))"/>
    <xsl:choose>
        <xsl:when test="matches($hex, '^([0-9]*|[A-F]*)')">
            <xsl:value-of
        select="if ($hex = '') then 0
        else $dec * f:power(16, string-length($hex) - 1) + f:hexToDec(substring($hex,2))"/>
        </xsl:when>
        <xsl:otherwise>
            <xsl:message>Provided value is not hexadecimal...</xsl:message>
            <xsl:value-of select="$hex"/>
        </xsl:otherwise>
    </xsl:choose>
</xsl:function>

<xsl:function name="f:power">
    <xsl:param name="base"/>
    <xsl:param name="exp"/>
    <xsl:sequence
        select="if ($exp lt 0) then f:power(1.0 div $base, -$exp)
                else if ($exp eq 0)
                then 1e0
                else $base * f:power($base, $exp - 1)"
    />
</xsl:function>
</schema>

<!-- Local Variables:  -->
<!-- mode: nxml        -->
<!-- End:              -->

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
	queryBinding="xslt2">

<phase id="font-config">
  <active pattern="font-config.pattern" />
</phase>

<pattern id="font-config.pattern">

  <rule context="font-folder/@path">
    <report test="contains(., '[Install directory]')" role="Error">Replace '[Install directory]' with the AH Formatter installation directory.</report>
    <report test="contains(., '[System font directory]')" role="Error">Replace '[System font directory]' with the location of the Windows font directory.</report>
  </rule>

</pattern>

</schema>

<!-- Local Variables:  -->
<!-- mode: nxml        -->
<!-- End:              -->

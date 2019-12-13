<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"
 xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"
 xmlns:ccts="urn:un:unece:uncefact:documentation:2"
 xmlns:clm54217="urn:un:unece:uncefact:codelist:specification:54217:2001"
 xmlns:clm5639="urn:un:unece:uncefact:codelist:specification:5639:1988"
 xmlns:clm66411="urn:un:unece:uncefact:codelist:specification:66411:2001"
 xmlns:clmIANAMIMEMediaType="urn:un:unece:uncefact:codelist:specification:IANAMIMEMediaType:2003"
 xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:link="http://www.xbrl.org/2003/linkbase"
 xmlns:n1="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2"
 xmlns:qdt="urn:oasis:names:specification:ubl:schema:xsd:QualifiedDatatypes-2"
 xmlns:udt="urn:un:unece:uncefact:data:specification:UnqualifiedDataTypesSchemaModule:2"
 xmlns:xbrldi="http://xbrl.org/2006/xbrldi" xmlns:xbrli="http://www.xbrl.org/2003/instance"
 xmlns:xdt="http://www.w3.org/2005/xpath-datatypes" xmlns:xlink="http://www.w3.org/1999/xlink"
 xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsd="http://www.w3.org/2001/XMLSchema"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
 xmlns:ext="urn:oasis:names:specification:ubl:schema:xsd:CommonExtensionComponents-2"
 xmlns:ds="http://www.w3.org/2000/09/xmldsig#" xmlns:xades="http://uri.etsi.org/01903/v1.3.2#"
 exclude-result-prefixes="cac cbc ccts clm54217 clm5639 clm66411 clmIANAMIMEMediaType fn link n1 qdt udt xbrldi xbrli xdt xlink xs xsd xsi ext ds xades">
 <xsl:decimal-format name="european" decimal-separator="," grouping-separator="." NaN=""/>
 <xsl:output version="4.0" method="html" indent="no" encoding="UTF-8"
  doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN"
  doctype-system="http://www.w3.org/TR/html4/loose.dtd"/>
 <xsl:param name="SV_OutputFormat" select="'HTML'"/>
 <xsl:variable name="XML" select="/"/>
 <xsl:template match="/">
  <html>
   <head>
      <style>
      #bankaHesap {
         border-collapse: collapse;
         border: 1px solid #ccc;
         padding: 3px
      }

      #bankaHesap td,
      #bankaHesap th {
         text-align: left;
         border: 1px solid #ccc;
         padding: 3px
      }

      #bankaHesap tr:first-child th {
         border-top: 0;
      }

      #bankaHesap tr:last-child td {
         border-bottom: 0;
      }

      #bankaHesap tr td:first-child,
      #bankaHesap tr th:first-child {
         border-left: 0;
      }

      #bankaHesap tr td:last-child,
      #bankaHesap tr th:last-child {
         border-right: 0;
      }
   </style>
   </head>
   <body>
    <p>
     <span style="font-size: 10px;">&#8203;&#8203;</span>
    </p>
    <table border="0" cellpadding="0" cellspacing="0" style="border-color: blue;" width="800">
     <tbody>
      <tr>
       <td style="width: 205px; text-align: center;">
        {{LOGO}}
       </td>
       <td style="width: 222.58px; text-align: center;">
        <span style="font-size: 10px;">
         <span style="color: rgb(105, 105, 105);">
          <span style="font-family: verdana,geneva,sans-serif;">
            <img align="middle" alt="GIB Logo"
                src="data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABkAAD/4QMZaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzEzMiA3OS4xNTkyODQsIDIwMTYvMDQvMTktMTM6MTM6NDAgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjZDNDJBNEI2QjVCRDExRThCQjM0REIwQkZGMEQxODY0IiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjZDNDJBNEI1QjVCRDExRThCQjM0REIwQkZGMEQxODY0IiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDUzQgV2luZG93cyI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSIzREVENkU1N0FDREVDNEJBNzkxNUM2M0NCN0RENzM0NyIgc3RSZWY6ZG9jdW1lbnRJRD0iM0RFRDZFNTdBQ0RFQzRCQTc5MTVDNjNDQjdERDczNDciLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/7gAOQWRvYmUAZMAAAAAB/9sAhAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEB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"
                style="width: 70px;" /><br/><br/>
            <font align="center" style="font-weight: bold;">e-Arşiv Fatura</font>
          </span>
         </span>
        </span>
       </td>
       <td style="width: 219.41px; text-align: right;">
        <table align="left" border="0" cellpadding="0" cellspacing="0" id="customerPartyTable"
         style="border-top-color: rgb(0, 0, 0); border-bottom-color: rgb(0, 0, 0); border-top-width: 3px; border-bottom-width: 3px; border-top-style: solid; border-bottom-style: solid;"
         width="350">
         <tbody>
          <tr>
           <td align="left" style="width: 469px;">
            <span style="color: rgb(0, 0, 0);">
             <span style="font-size: 10px;">
              <span style="font-family: verdana, geneva, sans-serif;">
               <strong>SAYIN</strong>
              </span>
             </span>
            </span>
           </td>
          </tr>
          <tr>
           <td align="left" style="width: 469px;">
            <strong>
             <span style="font-size: 10px;">
              <span style="color: rgb(0, 0, 0);">
               <xsl:choose>
                <xsl:when
                 test="not(//n1:Invoice/cbc:ProfileID = &apos;YOLCUBERABERFATURA&apos; or //n1:Invoice/cbc:ProfileID = &apos;IHRACAT&apos;)">
                 <xsl:for-each select="//n1:Invoice">
                  <xsl:for-each select="cac:AccountingCustomerParty">
                   <xsl:for-each select="cac:Party">
                    <xsl:if test="cac:PartyName">
                     <xsl:value-of select="cac:PartyName/cbc:Name"/>
                     <br/>
                    </xsl:if>
                    <xsl:for-each select="cac:Person">
                     <xsl:for-each select="cbc:Title">
                      <xsl:apply-templates/>
                      <span>
                       <xsl:text>&#160;
                     </xsl:text>
                      </span>
                     </xsl:for-each>
                     <xsl:for-each select="cbc:FirstName">
                      <xsl:apply-templates/>
                      <span>
                       <xsl:text>&#160;
                     </xsl:text>
                      </span>
                     </xsl:for-each>
                     <xsl:for-each select="cbc:MiddleName">
                      <xsl:apply-templates/>
                      <span>
                       <xsl:text>&#160;
                     </xsl:text>
                      </span>
                     </xsl:for-each>
                     <xsl:for-each select="cbc:FamilyName">
                      <xsl:apply-templates/>
                      <span>
                       <xsl:text>&#160;
                     </xsl:text>
                      </span>
                     </xsl:for-each>
                     <xsl:for-each select="cbc:NameSuffix">
                      <xsl:apply-templates/>
                     </xsl:for-each>
                    </xsl:for-each>
                   </xsl:for-each>
                  </xsl:for-each>
                 </xsl:for-each>
                </xsl:when>
                <xsl:otherwise>
                 <xsl:for-each select="//n1:Invoice">
                  <xsl:for-each select="cac:BuyerCustomerParty">
                   <xsl:for-each select="cac:Party">
                    <xsl:if test="cac:PartyName">
                     <xsl:value-of select="cac:PartyName/cbc:Name"/>
                     <br/>
                    </xsl:if>
                    <xsl:for-each select="cac:Person">
                     <xsl:for-each select="cbc:Title">
                      <xsl:apply-templates/>
                      <span>
                       <xsl:text>&#160;
                     </xsl:text>
                      </span>
                     </xsl:for-each>
                     <xsl:for-each select="cbc:FirstName">
                      <xsl:apply-templates/>
                      <span>
                       <xsl:text>&#160;
                     </xsl:text>
                      </span>
                     </xsl:for-each>
                     <xsl:for-each select="cbc:MiddleName">
                      <xsl:apply-templates/>
                      <span>
                       <xsl:text>&#160;
                     </xsl:text>
                      </span>
                     </xsl:for-each>
                     <xsl:for-each select="cbc:FamilyName">
                      <xsl:apply-templates/>
                      <span>
                       <xsl:text>&#160;
                     </xsl:text>
                      </span>
                     </xsl:for-each>
                     <xsl:for-each select="cbc:NameSuffix">
                      <xsl:apply-templates/>
                     </xsl:for-each>
                    </xsl:for-each>
                   </xsl:for-each>
                  </xsl:for-each>
                 </xsl:for-each>
                </xsl:otherwise>
               </xsl:choose>
              </span>
             </span>
            </strong>
           </td>
          </tr>
          <tr align="left">
           <td align="left" style="width: 469px;">
            <span style="font-size: 10px;">
             <span style="color: rgb(0, 0, 0);">
              <xsl:choose>
               <xsl:when
                test="not(//n1:Invoice/cbc:ProfileID = &apos;YOLCUBERABERFATURA&apos; or //n1:Invoice/cbc:ProfileID = &apos;IHRACAT&apos;)">
                <xsl:value-of
                 select="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:StreetName"
                />
               </xsl:when>
               <xsl:otherwise>
                <xsl:value-of
                 select="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PostalAddress/cbc:StreetName"
                />
               </xsl:otherwise>
              </xsl:choose>&#160;<br/>
              <xsl:choose>
               <xsl:when
                test="not(//n1:Invoice/cbc:ProfileID = &apos;YOLCUBERABERFATURA&apos; or //n1:Invoice/cbc:ProfileID = &apos;IHRACAT&apos;)">
                <xsl:value-of
                 select="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:PostalZone"
                />
               </xsl:when>
               <xsl:otherwise>
                <xsl:value-of
                 select="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PostalAddress/cbc:PostalZone"
                />
               </xsl:otherwise>
              </xsl:choose>&#160; <xsl:choose>
               <xsl:when
                test="not(//n1:Invoice/cbc:ProfileID = &apos;YOLCUBERABERFATURA&apos; or //n1:Invoice/cbc:ProfileID = &apos;IHRACAT&apos;)">
                <xsl:value-of
                 select="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:CitySubdivisionName"
                />
               </xsl:when>
               <xsl:otherwise>
                <xsl:value-of
                 select="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PostalAddress/cbc:CitySubdivisionName"
                />
               </xsl:otherwise>
              </xsl:choose> / <xsl:choose>
               <xsl:when
                test="not(//n1:Invoice/cbc:ProfileID = &apos;YOLCUBERABERFATURA&apos; or //n1:Invoice/cbc:ProfileID = &apos;IHRACAT&apos;)">
                <xsl:value-of
                 select="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:CityName"
                />
               </xsl:when>
               <xsl:otherwise>
                <xsl:value-of
                 select="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PostalAddress/cbc:CityName"
                />
               </xsl:otherwise>
              </xsl:choose>
             </span>
            </span>
           </td>
          </tr>
          <tr>
           <td align="left" style="width: 469px;">
            <span style="font-size: 10px;">
             <span style="color: rgb(0, 0, 0);">Vergi Dairesi:&#160; <xsl:choose>
               <xsl:when
                test="not(//n1:Invoice/cbc:ProfileID = &apos;YOLCUBERABERFATURA&apos; or //n1:Invoice/cbc:ProfileID = &apos;IHRACAT&apos;)">
                <xsl:if
                 test="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:Name != &apos;&apos;">
                 <xsl:text>
                 Vergi Dairesi: 
               </xsl:text>
                 <xsl:value-of
                  select="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:Name"
                 />
                </xsl:if>
               </xsl:when>
              </xsl:choose></span>
            </span>
           </td>
          </tr>
          <tr>
           <td align="left" style="width: 469px;">
            <span style="font-size: 10px;">
             <span style="color: rgb(0, 0, 0);">VKN:&#160; <xsl:choose>
               <xsl:when
                test="not(//n1:Invoice/cbc:ProfileID = &apos;YOLCUBERABERFATURA&apos; or //n1:Invoice/cbc:ProfileID = &apos;IHRACAT&apos;)">
                <xsl:for-each
                 select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification">
                 <xsl:variable name="schemeID" select="cbc:ID/@schemeID"/>
                 <xsl:if test="$schemeID = &apos;TCKN&apos; or $schemeID = &apos;VKN&apos;">
                  <xsl:value-of select="$schemeID"/> : <xsl:value-of select="cbc:ID"/>
                 </xsl:if>
                </xsl:for-each>
               </xsl:when>
              </xsl:choose></span>
            </span>
           </td>
          </tr>
         </tbody>
        </table>
       </td>
      </tr>
      <tr>
       <td style="width: 205px;">&#160; <table align="left" border="0" cellpadding="0"
         cellspacing="0"
         style="font-size: 9px; border-top-color: rgb(0, 0, 0); border-bottom-color: rgb(0, 0, 0); border-top-width: 3px; border-bottom-width: 3px; border-top-style: solid; border-bottom-style: solid;"
         width="350">
         <tbody>
         	<tr valign="top">
         		<td width="100%">
         			<br/>
         			<div class="hr" style="margin-bottom:5px"></div>
         			<table align="center" border="0" width="100%">
         				<tbody>
         					<tr align="left">
         						<xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">
         							<td align="left">
         								<xsl:if test="cac:PartyName">
         									<xsl:value-of select="cac:PartyName/cbc:Name"/>
         									<br/>
         								</xsl:if>
         								<xsl:for-each select="cac:Person">
         									<xsl:for-each select="cbc:Title">
         										<xsl:apply-templates/>
         										<xsl:text>&#160;</xsl:text>
         									</xsl:for-each>
         									<xsl:for-each select="cbc:FirstName">
         										<xsl:apply-templates/>
         										<xsl:text>&#160;</xsl:text>
         									</xsl:for-each>
         									<xsl:for-each select="cbc:MiddleName">
         										<xsl:apply-templates/>
         										<xsl:text>&#160;</xsl:text>
         									</xsl:for-each>
         									<xsl:for-each select="cbc:FamilyName">
         										<xsl:apply-templates/>
         										<xsl:text>&#160;</xsl:text>
         									</xsl:for-each>
         									<xsl:for-each select="cbc:NameSuffix">
         										<xsl:apply-templates/>
         									</xsl:for-each>
         								</xsl:for-each>
         							</td>
         						</xsl:for-each>
         					</tr>
         					<tr align="left">
         						<xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">
         							<td align="left">
         								<xsl:for-each select="cac:PostalAddress">
         									<xsl:for-each select="cbc:StreetName">
         										<xsl:apply-templates/>
         										<xsl:text>&#160;</xsl:text>
         									</xsl:for-each>
         									<xsl:for-each select="cbc:BuildingName">
         										<xsl:apply-templates/>
         									</xsl:for-each>
         									<xsl:if test="cbc:BuildingNumber">
         										<xsl:text> No:</xsl:text>
         										<xsl:for-each select="cbc:BuildingNumber">
         											<xsl:apply-templates/>
         										</xsl:for-each>
         										<xsl:text>&#160;</xsl:text>
         									</xsl:if>
         									<br/>
         									<xsl:for-each select="cbc:PostalZone">
         										<xsl:apply-templates/>
         										<xsl:text>&#160;</xsl:text>
         									</xsl:for-each>
         									<xsl:for-each select="cbc:CitySubdivisionName">
         										<xsl:apply-templates/>
         									</xsl:for-each>
         									<xsl:text>/ </xsl:text>
         									<xsl:for-each select="cbc:CityName">
         										<xsl:apply-templates/>
         										<xsl:text>&#160;</xsl:text>
         									</xsl:for-each>
         								</xsl:for-each>
         							</td>
         						</xsl:for-each>
         					</tr>
         					<xsl:if
         						test="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telephone or //n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telefax">
         						<tr align="left">
         							<xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">														
         								<td align="left">
         									<xsl:for-each select="cac:Contact">
         										<xsl:if test="cbc:Telephone">
         											<xsl:text>Tel: </xsl:text>
         											<xsl:for-each select="cbc:Telephone">
         												<xsl:apply-templates/>
         											</xsl:for-each>
         										</xsl:if>
         										<xsl:if test="cbc:Telefax">
         											<xsl:text> Fax: </xsl:text>
         											<xsl:for-each select="cbc:Telefax">
         												<xsl:apply-templates/>
         											</xsl:for-each>
         										</xsl:if>
         										<xsl:text>&#160;</xsl:text>
         									</xsl:for-each>
         								</td>
         							</xsl:for-each>
         						</tr>
         					</xsl:if>
         					<xsl:for-each
         						select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cbc:WebsiteURI">
         						<tr align="left">
         							<td>
         								<xsl:text>Web Sitesi: </xsl:text>
         								<xsl:value-of select="."/>
         							</td>
         						</tr>
         					</xsl:for-each>
         					<xsl:for-each
         						select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:ElectronicMail">
         						<tr align="left">
         							<td>
         								<xsl:text>E-Posta: </xsl:text>
         								<xsl:value-of select="."/>
         							</td>
         						</tr>
         					</xsl:for-each>
         					<tr align="left">
         						<xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">																											
         							<td align="left">
         								<xsl:text>Vergi Dairesi: </xsl:text>
         								<xsl:for-each select="cac:PartyTaxScheme">
         									<xsl:for-each select="cac:TaxScheme">
         										<xsl:for-each select="cbc:Name">
         											<xsl:apply-templates/>
         										</xsl:for-each>
         									</xsl:for-each>
         									<xsl:text>&#160; </xsl:text>
         								</xsl:for-each>
         							</td>
         						</xsl:for-each>
         					</tr>
         					<xsl:for-each
         						select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification">
         						<tr align="left">
         							<td>
         								<xsl:value-of select="cbc:ID/@schemeID"/>
         								<xsl:text>: </xsl:text>
         								<xsl:value-of select="cbc:ID"/>
         							</td>
         						</tr>
         					</xsl:for-each>
         				</tbody>
         			</table>
         			<div class="hr" style="margin-top:5px;"></div>
         		</td>
         	</tr>
         </tbody>
        </table>
       </td>
       <td style="width: 222.58px;"  align="center">
          {{IMZA}}
       </td>
       <td style="width: 219.41px;">
        <table style="width: 200px; border-collapse: collapse;">
         <tbody>
          <tr>
           <td style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 87px;">
            <span style="font-size: 9px;">
             <span style="color: rgb(0, 0, 0);">
              <span style="font-family: verdana,geneva,sans-serif;">
               <span style="font-weight: bold; white-space: pre;">Özelleştirme No:</span>
              </span>
             </span>
            </span>
           </td>
           <td style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 106px;">
            <span style="font-size: 9px;">
             <span style="color: rgb(0, 0, 0);">
              <span style="font-family: verdana,geneva,sans-serif;">
               <xsl:value-of select="n1:Invoice/cbc:CustomizationID"/>
              </span>
             </span>
            </span>
           </td>
          </tr>
          <tr>
           <td style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 87px;">
            <span style="font-size: 9px;">
             <span style="color: rgb(0, 0, 0);">
              <span style="font-family: verdana,geneva,sans-serif;">
               <span style="font-weight: bold;">Senaryo:</span>
              </span>
             </span>
            </span>
           </td>
           <td style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 106px;">
            <span style="font-size: 9px;">
             <span style="color: rgb(0, 0, 0);">
              <span style="font-family: verdana,geneva,sans-serif;">
               <xsl:value-of select="n1:Invoice/cbc:ProfileID"/>
              </span>
             </span>
            </span>
           </td>
          </tr>
          <tr>
           <td style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 87px;">
            <span style="font-size: 9px;">
             <span style="color: rgb(0, 0, 0);">
              <span style="font-family: verdana,geneva,sans-serif;">
               <span style="font-weight: bold;">Fatura Tipi:</span>
              </span>
             </span>
            </span>
           </td>
           <td style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 106px;">
            <span style="font-size: 9px;">
             <span style="color: rgb(0, 0, 0);">
              <span style="font-family: verdana,geneva,sans-serif;">
               <xsl:value-of select="n1:Invoice/cbc:InvoiceTypeCode"/>
              </span>
             </span>
            </span>
           </td>
          </tr>
          <tr>
           <td style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 87px;">
            <span style="font-size: 9px;">
             <span style="color: rgb(0, 0, 0);">
              <span style="font-family: verdana,geneva,sans-serif;">
               <span style="font-weight: bold;">Fatura </span>
               <span style="font-weight: bold;">No:</span>
              </span>
             </span>
            </span>
           </td>
           <td style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 106px;">
            <span style="font-size: 9px;">
             <span style="color: rgb(0, 0, 0);">
              <span style="font-family: verdana,geneva,sans-serif;">
               <xsl:value-of select="n1:Invoice/cbc:ID"/>
              </span>
             </span>
            </span>
           </td>
          </tr>
          <tr>
           <td style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 87px;">
            <span style="font-size: 9px;">
             <span style="color: rgb(0, 0, 0);">
              <span style="font-family: verdana,geneva,sans-serif;">
               <span style="font-weight: bold;">Fatura Tarihi:</span>
              </span>
             </span>
            </span>
           </td>
           <td style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 106px;">
            <span style="font-size: 9px;">
             <span style="color: rgb(0, 0, 0);">
              <span style="font-family: verdana,geneva,sans-serif;">
               <xsl:for-each select="//n1:Invoice">
                <xsl:for-each select="cbc:IssueDate">
                 <xsl:value-of select="substring(., 9, 2)"/>- <xsl:value-of
                  select="substring(., 6, 2)"/>- <xsl:value-of select="substring(., 1, 4)"/>
                </xsl:for-each>
               </xsl:for-each>
              </span>
             </span>
            </span>
           </td>
          </tr>
          <tr>
           <td style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 87px;">
            <span style="font-size: 9px;">
             <span style="color: rgb(0, 0, 0);">
              <span style="font-family: verdana,geneva,sans-serif;">
               <strong>İrsaliye No:</strong>
              </span>
             </span>
            </span>
           </td>
           <td style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 106px;">
            <span style="font-size: 9px;">
             <span style="color: rgb(0, 0, 0);">
              <span style="font-family: verdana,geneva,sans-serif;">
               <xsl:for-each select="//n1:Invoice/cac:DespatchDocumentReference">
                <xsl:value-of select="cbc:ID"/>
                <br/>
               </xsl:for-each>
              </span>
             </span>
            </span>
           </td>
          </tr>
          <tr>
           <td style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 87px;">
            <span style="font-size: 9px;">
             <span style="color: rgb(0, 0, 0);">
              <span style="font-family: verdana,geneva,sans-serif;">
               <strong>İrsaliye Tarihi:</strong>
              </span>
             </span>
            </span>
           </td>
           <td style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 106px;">
            <span style="font-size: 9px;">
             <span style="color: rgb(0, 0, 0);">
              <span style="font-family: verdana,geneva,sans-serif;">
               <xsl:for-each select="//n1:Invoice/cac:DespatchDocumentReference">
                <xsl:variable name="ddt" select="cbc:IssueDate"/>
                <xsl:value-of
                 select="concat(substring($ddt, 9, 2), &apos;-&apos;, substring($ddt, 6, 2), &apos;-&apos;, substring($ddt, 1, 4))"/>
                <br/>
               </xsl:for-each>
              </span>
             </span>
            </span>
           </td>
          </tr>
         </tbody>
        </table>
       </td>
      </tr>
      <tr>
       <td style="width: 205px;">
        <span style="color: rgb(0, 0, 0);">
         <span style="font-family: verdana,geneva,sans-serif;">
          <span style="font-size: 10px;">
           <strong>ETTN: </strong>
           <xsl:value-of select="n1:Invoice/cbc:UUID"/>
          </span>
         </span>
        </span>
       </td>
       <td style="width: 222.58px;">&#160;</td>
       <td style="width: 219.41px;">&#160;</td>
      </tr>
     </tbody>
    </table>
   </body>
  </html>
  <html>
   <head/>
   <body>
    <p>&#160;</p>
    <table
     style="border: 2px solid rgb(0, 0, 0); border-image: none; width: 800px; border-collapse: collapse;">
     <tbody>
      <tr>
       <td
        style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 31px; text-align: center; background-color: rgb(0, 153, 153);">
        <span style="color: rgb(255, 240, 245);">
         <strong>
          <span style="font-size: 10px;">Sıra No</span>
         </strong>
        </span>
       </td>
       <td
        style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 31px; text-align: center; background-color: rgb(0, 153, 153);">
        <p>
         <span style="color: rgb(255, 240, 245);">
          <strong>
           <span style="font-size: 10px;">Malzeme Kodu</span>
          </strong>
         </span>
        </p>
       </td>
       <td
        style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 31px; text-align: center; background-color: rgb(0, 153, 153);">
        <span style="color: rgb(255, 240, 245);">
         <strong>
          <span style="font-size: 10px;">Malzeme;</span>
         </strong>
        </span>
       </td>
       <td
        style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 31px; text-align: center; background-color: rgb(0, 153, 153);">
        <span style="color: rgb(255, 240, 245);">
         <strong>
          <span style="font-size: 10px;">Ebat</span>
         </strong>
        </span>
       </td>
       <td
        style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 31px; text-align: center; background-color: rgb(0, 153, 153);">
        <span style="color: rgb(255, 240, 245);">
         <strong>
          <span style="font-size: 10px;">Miktar</span>
         </strong>
        </span>
       </td>
       <td
        style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 31px; text-align: center; background-color: rgb(0, 153, 153);">
        <span style="color: rgb(255, 240, 245);">
         <strong>
          <span style="font-size: 10px;">Birim Fiyat</span>
         </strong>
        </span>
       </td>
       <td
        style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 31px; text-align: center; background-color: rgb(0, 153, 153);">
        <span style="color: rgb(255, 240, 245);">
         <strong>
          <span style="font-size: 10px;">KDV Oranı</span>
         </strong>
        </span>
       </td>
       <td
        style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 31px; text-align: center; background-color: rgb(0, 153, 153);">
        <span style="color: rgb(255, 240, 245);">
         <strong>
          <span style="font-size: 10px;">KDV Tutarı</span>
         </strong>
        </span>
       </td>
       <td
        style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 31px; text-align: center; background-color: rgb(0, 153, 153);">
        <span style="color: rgb(255, 240, 245);">
         <strong>
          <span style="font-size: 10px;">Diğer Vergiler</span>
         </strong>
        </span>
       </td>
       <td
        style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 31px; text-align: center; background-color: rgb(0, 153, 153);">
        <span style="color: rgb(255, 240, 245);">
         <strong>
          <span style="font-size: 10px;">Malzeme Tutarı</span>
         </strong>
        </span>
       </td>
      </tr>
      <xsl:for-each select="//n1:Invoice/cac:InvoiceLine">
       <tr>
        <td
         style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 31px; text-align: left;">
         <span style="font-size: 10px;">
          <span style="color: rgb(0, 0, 0);">
           <xsl:value-of select="./cbc:ID"/>
          </span>
         </span>
        </td>
        <td style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 85px;">
         <span style="font-size: 10px;">
          <span style="color: rgb(0, 0, 0);">
           <xsl:value-of select="./cac:Item/cac:SellersItemIdentification/cbc:ID"/>
          </span>
         </span>
        </td>
        <td style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 167px;">
         <span style="font-size: 10px;">
          <span style="color: rgb(0, 0, 0);">
           <xsl:value-of select="./cac:Item/cbc:Name"/>
          </span>
         </span>
        </td>
        <td style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 121px;">
         <span style="font-size: 10px;">
          <span style="color: rgb(0, 0, 0);">
           <xsl:for-each select="./cbc:Note">
            <span>
             <xsl:text>&#160;
           </xsl:text>
             <xsl:value-of select="."/>
            </span>
            <br/>
           </xsl:for-each>
          </span>
         </span>
        </td>
        <td
         style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 60px; text-align: center;">
         <span style="font-size: 10px;">
          <span style="color: rgb(0, 0, 0);">
           <xsl:value-of
            select="format-number(./cbc:InvoicedQuantity, &apos;###.##0,####&apos;, &apos;european&apos;)"/>
           <xsl:if test="./cbc:InvoicedQuantity/@unitCode">
            <xsl:for-each select="./cbc:InvoicedQuantity">
             <xsl:text> 
           </xsl:text>
             <xsl:choose>
              <xsl:when test="@unitCode = &apos;26&apos;">
               <span>
                <xsl:text>
               Ton
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;BX&apos;">
               <span>
                <xsl:text>
               Kutu
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;LTR&apos;">
               <span>
                <xsl:text>
               LT
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;EA&apos;">
               <span>
                <xsl:text>
               Adet
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;NIU&apos;">
               <span>
                <xsl:text>
               Adet
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;C62&apos;">
               <span>
                <xsl:text>
               Adet
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;KGM&apos;">
               <span>
                <xsl:text>
               KG
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;KJO&apos;">
               <span>
                <xsl:text>
               kJ
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;GRM&apos;">
               <span>
                <xsl:text>
               GR
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;MGM&apos;">
               <span>
                <xsl:text>
               MG
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;NT&apos;">
               <span>
                <xsl:text>
               Net Ton
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;GT&apos;">
               <span>
                <xsl:text>
               GT
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;MTR&apos;">
               <span>
                <xsl:text>
               M
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;MMT&apos;">
               <span>
                <xsl:text>
               MM
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;KTM&apos;">
               <span>
                <xsl:text>
               KM
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;MLT&apos;">
               <span>
                <xsl:text>
               ML
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;MMQ&apos;">
               <span>
                <xsl:text>
               MM3
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;CLT&apos;">
               <span>
                <xsl:text>
               CL
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;CMK&apos;">
               <span>
                <xsl:text>
               CM2
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;CMQ&apos;">
               <span>
                <xsl:text>
               CM3
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;CMT&apos;">
               <span>
                <xsl:text>
               CM
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;MTK&apos;">
               <span>
                <xsl:text>
               M2
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;MTQ&apos;">
               <span>
                <xsl:text>
               M3
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;DAY&apos;">
               <span>
                <xsl:text>
                Gün
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;MON&apos;">
               <span>
                <xsl:text>
                Ay
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;PA&apos;">
               <span>
                <xsl:text>
                Paket
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;KWH&apos;">
               <span>
                <xsl:text>
                KWH
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;INH&apos;">
               <span>
                <xsl:text>
               IN
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;FOT&apos;">
               <span>
                <xsl:text>
               FT
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;MMK&apos;">
               <span>
                <xsl:text>
               MM2
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;INK&apos;">
               <span>
                <xsl:text>
               IN2
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;FTK&apos;">
               <span>
                <xsl:text>
               FT2
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;INQ&apos;">
               <span>
                <xsl:text>
               IN3
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;FTQ&apos;">
               <span>
                <xsl:text>
               FT3
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;ONZ&apos;">
               <span>
                <xsl:text>
               OZ
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;LBR&apos;">
               <span>
                <xsl:text>
               LB
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;PR&apos;">
               <span>
                <xsl:text>
               Çift
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:otherwise>
               <span>
                <xsl:value-of select="@unitCode"/>
               </span>
              </xsl:otherwise>
             </xsl:choose>
            </xsl:for-each>
           </xsl:if>
          </span>
         </span>
        </td>
        <td
         style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 53px; text-align: center;">
         <span style="font-size: 10px;">
          <span style="color: rgb(0, 0, 0);">
           <xsl:value-of
            select="format-number(./cac:Price/cbc:PriceAmount, &apos;###.##0,0000&apos;, &apos;european&apos;)"/>
           <xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID">
            <xsl:text> 
          </xsl:text>
            <xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID = &apos;TRY&apos;">
             <xsl:text>
            TL
           </xsl:text>
            </xsl:if>
            <xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID != &apos;TRY&apos;">
             <xsl:value-of select="./cac:Price/cbc:PriceAmount/@currencyID"/>
            </xsl:if>
           </xsl:if>
          </span>
         </span>
        </td>
        <td
         style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 51px; text-align: right;">
         <span style="font-size: 10px;">
          <span style="color: rgb(0, 0, 0);">
           <xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
            <xsl:if test="cbc:TaxTypeCode = &apos;0015&apos;">
             <xsl:if test="../../cbc:Percent">
              <xsl:text>
              %
            </xsl:text>
              <xsl:value-of
               select="format-number(../../cbc:Percent, &apos;###.##0,00&apos;, &apos;european&apos;)"
              />
             </xsl:if>
            </xsl:if>
           </xsl:for-each>
          </span>
         </span>
        </td>
        <td
         style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 53px; text-align: right;">
         <span style="font-size: 10px;">
          <span style="color: rgb(0, 0, 0);">
           <xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
            <xsl:if test="cbc:TaxTypeCode = &apos;0015&apos;">
             <xsl:text> 
           </xsl:text>
             <xsl:value-of
              select="format-number(../../cbc:TaxAmount, &apos;###.##0,00&apos;, &apos;european&apos;)"/>
             <xsl:if test="../../cbc:TaxAmount/@currencyID">
              <xsl:text> 
            </xsl:text>
              <xsl:if test="../../cbc:TaxAmount/@currencyID = &apos;TRY&apos;">
               <xsl:text>
              TL
             </xsl:text>
              </xsl:if>
              <xsl:if test="../../cbc:TaxAmount/@currencyID != &apos;TRY&apos;">
               <xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
              </xsl:if>
             </xsl:if>
            </xsl:if>
           </xsl:for-each>
          </span>
         </span>
        </td>
        <td
         style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 65px; text-align: right;">
         <span style="font-size: 10px;">
          <span style="color: rgb(0, 0, 0);">
           <xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
            <xsl:if test="cbc:TaxTypeCode != &apos;0015&apos;">
             <xsl:text> 
           </xsl:text>
             <xsl:value-of select="cbc:Name"/>
             <xsl:if test="../../cbc:Percent">
              <xsl:text>
              (%
            </xsl:text>
              <xsl:value-of
               select="format-number(../../cbc:Percent, &apos;###.##0,00&apos;, &apos;european&apos;)"/>
              <xsl:text>
             )=
            </xsl:text>
             </xsl:if>
             <xsl:value-of
              select="format-number(../../cbc:TaxAmount, &apos;###.##0,00&apos;, &apos;european&apos;)"/>
             <xsl:if test="../../cbc:TaxAmount/@currencyID">
              <xsl:text> 
            </xsl:text>
              <xsl:if test="../../cbc:TaxAmount/@currencyID = &apos;TRY&apos;">
               <xsl:text>
              TL
             </xsl:text>
              </xsl:if>
              <xsl:if test="../../cbc:TaxAmount/@currencyID != &apos;TRY&apos;">
               <xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
              </xsl:if>
             </xsl:if>
            </xsl:if>
           </xsl:for-each>
           <xsl:for-each select="./cac:WithholdingTaxTotal/cac:TaxSubtotal">
            <xsl:if test="not(cbc:TaxAmount = 0)">
             <xsl:choose>
              <xsl:when test="cac:TaxCategory/cac:TaxScheme/cbc:Name = &apos;&apos;">
               <xsl:text>
              Diğer Vergiler Toplamı 
             </xsl:text>
              </xsl:when>
              <xsl:otherwise>
               <xsl:text>
              Tevkifat (
             </xsl:text>
               <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode"/>
               <xsl:text>
              -
             </xsl:text>
               <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
               <xsl:text>
              )
             </xsl:text>
              </xsl:otherwise>
             </xsl:choose>
             <xsl:if test="cbc:Percent != &apos;&apos;">
              <xsl:text>
             (%
            </xsl:text>
              <xsl:value-of
               select="format-number(cbc:Percent, &apos;###.##0,00&apos;, &apos;european&apos;)"/>
              <xsl:text>
             )= 
            </xsl:text>
             </xsl:if>
             <xsl:value-of
              select="format-number(../cbc:TaxAmount, &apos;###.##0,00&apos;, &apos;european&apos;)"/>
             <xsl:if test="../cbc:TaxAmount/@currencyID">
              <xsl:if test="../cbc:TaxAmount/@currencyID = &apos;TRY&apos;">
               <xsl:text>
              TL
             </xsl:text>
              </xsl:if>
              <xsl:if test="../cbc:TaxAmount/@currencyID != &apos;TRY&apos;">
               <xsl:value-of select="../cbc:TaxAmount/@currencyID"/>
              </xsl:if>
             </xsl:if>
            </xsl:if>
           </xsl:for-each>
          </span>
         </span>
        </td>
        <td
         style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 105px; text-align: right;">
         <span style="font-size: 10px;">
          <xsl:value-of
           select="format-number(./cbc:LineExtensionAmount, &apos;###.##0,00&apos;, &apos;european&apos;)"/>
          <xsl:if test="./cbc:LineExtensionAmount/@currencyID">
           <xsl:text> 
         </xsl:text>
           <xsl:if test="./cbc:LineExtensionAmount/@currencyID = &apos;TRY&apos;">
            <xsl:text>
           TL
          </xsl:text>
           </xsl:if>
           <xsl:if test="./cbc:LineExtensionAmount/@currencyID != &apos;TRY&apos;">
            <xsl:value-of select="./cbc:LineExtensionAmount/@currencyID"> </xsl:value-of>
           </xsl:if>
          </xsl:if>
         </span>
        </td>
       </tr>
      </xsl:for-each>
      <tr>
       <td
        style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 31px; text-align: left;"
        >&#160;</td>
       <td
        style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 85px; text-align: center;"
        >&#160;</td>
       <td
        style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 167px; text-align: center;"
        >&#160;</td>
       <td
        style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 121px; text-align: center;"
        >&#160;</td>
       <td
        style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 60px; text-align: right;"
        >&#160;</td>
       <td
        style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 53px; text-align: right;"
        >&#160;</td>
       <td
        style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 51px; text-align: right;"
        >&#160;</td>
       <td
        style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 53px; text-align: right;"
        >&#160;</td>
       <td
        style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 65px; text-align: right;"
        >&#160;</td>
       <td style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 105px;"
        >&#160;</td>
      </tr>
     </tbody>
    </table>
   </body>
  </html>
  <html>
   <head/>
   <body>
    <table border="0" cellpadding="0" cellspacing="0" style="width: 800px;">
     <tbody>
      <tr>
       <td align="right">
        <table border="1" bordercolor="#a4a4a4" cellpadding="0" cellspacing="0"
         id="budgetContainerTable" style="width: 371px;" width="500">
         <tbody>
          <tr align="right" id="budgetContainerTr">
           <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200">
            <span style="font-size: 10px;">
             <span style="color: rgb(0, 0, 0);">
              <span style="font-family: verdana,geneva,sans-serif;">
               <span style="font-weight: bold;">Mal / Hizmet Toplam Tutarı</span>
              </span>
             </span>
            </span>
           </td>
           <td align="right" id="lineTableBudgetTd" style="width: 120px;">
            <span style="font-size: 10px;">
             <span style="color: rgb(0, 0, 0);">
              <span style="font-family: verdana,geneva,sans-serif;">
               <xsl:value-of
                select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount, &apos;###.##0,00&apos;, &apos;european&apos;)"/>
               <xsl:if
                test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID">
                <xsl:text> 
              </xsl:text>
                <xsl:if
                 test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID = &apos;TRY&apos;">
                 <xsl:text>
                TL
               </xsl:text>
                </xsl:if>
                <xsl:if
                 test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID != &apos;TRY&apos;">
                 <xsl:value-of
                  select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID"/>
                </xsl:if>
               </xsl:if>
              </span>
             </span>
            </span>
           </td>
          </tr>
          <tr align="right" id="budgetContainerTr">
           <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200">
            <span style="font-size: 10px;">
             <span style="color: rgb(0, 0, 0);">
              <strong>
               <span style="font-family: verdana,geneva,sans-serif;">
                <xsl:text>
               Toplam iskonto
              </xsl:text>
                <xsl:if test="//n1:Invoice/cac:AllowanceCharge/cbc:MultiplierFactorNumeric">
                 <xsl:text>
                (%
               </xsl:text>
                 <xsl:value-of
                  select="format-number((//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount * 100) div //n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount, &apos;###.##0,00&apos;, &apos;european&apos;)"/>
                 <xsl:text>
                )
               </xsl:text>
                </xsl:if>
               </span>
              </strong>
             </span>
            </span>
           </td>
           <td align="right" id="lineTableBudgetTd" style="width: 120px;">
            <span style="font-size: 10px;">
             <span style="color: rgb(0, 0, 0);">
              <span style="font-family: verdana,geneva,sans-serif;">
               <xsl:value-of
                select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount, &apos;###.##0,00&apos;, &apos;european&apos;)"/>
               <xsl:if
                test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID">
                <xsl:text> 
              </xsl:text>
                <xsl:if
                 test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID = &apos;TRY&apos;">
                 <xsl:text>
                TL
               </xsl:text>
                </xsl:if>
                <xsl:if
                 test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID != &apos;TRY&apos;">
                 <xsl:value-of
                  select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID"
                 />
                </xsl:if>
               </xsl:if>
              </span>
             </span>
            </span>
           </td>
          </tr>
          <tr align="right" id="budgetContainerTr">
           <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200">
            <span style="font-size: 10px;">
             <span style="color: rgb(0, 0, 0);">
              <strong>
               <span style="font-family: verdana,geneva,sans-serif;">
                <xsl:for-each select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
                 <strong>
                  <span style="color: rgb(105, 105, 105);">
                   <span style="font-size: 10px;">
                    <span style="font-family: verdana,geneva,sans-serif;">
                     <table id="taxSubtotalHeaderTable" cellpadding="0" cellspacing="0" width="100%"
                      tagid="taxtable">
                      <tbody>
                       <tr align="right" style="border-bottom: 1px solid #000;">
                        <td width="100%" align="right">
                         <span style="font-weight:bold; ">
                          <xsl:choose>
                           <xsl:when test="cac:TaxCategory/cac:TaxScheme/cbc:Name = &apos;&apos;">
                            <xsl:text>
                            Di&#287;er Vergiler Toplamı 
                          </xsl:text>
                           </xsl:when>
                           <xsl:otherwise>
                            <xsl:text>
                            Hesaplanan 
                          </xsl:text>
                            <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
                           </xsl:otherwise>
                          </xsl:choose>
                          <xsl:text>
                          (% 
                        </xsl:text>
                          <xsl:value-of
                           select="format-number(cbc:Percent, &apos;###.##0,00&apos;, &apos;european&apos;)"/>
                          <xsl:text>
                          ) 
                        </xsl:text>
                         </span>
                        </td>
                       </tr>
                      </tbody>
                     </table>
                    </span>
                   </span>
                  </span>
                 </strong>
                </xsl:for-each>
               </span>
              </strong>
             </span>
            </span>
           </td>
           <td align="right" id="lineTableBudgetTd" style="width: 120px;">
            <span style="font-size: 10px;">
             <span style="color: rgb(0, 0, 0);">
              <span style="font-family: verdana,geneva,sans-serif;">
               <xsl:for-each select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
                <span style="color: rgb(105, 105, 105);">
                 <span style="font-size: 10px;">
                  <span style="font-family: verdana,geneva,sans-serif;">
                   <table id="taxSubtotalsTable" cellpadding="0" cellspacing="0" align="right"
                    tagid="taxtable" style="clear:both" width="100%">
                    <tbody>
                     <tr id="budgetContainerTr" align="right" style="border-bottom: 1px solid #000;">
                      <td align="right">
                       <xsl:for-each select="cac:TaxCategory/cac:TaxScheme">
                        <xsl:value-of
                         select="format-number(../../cbc:TaxAmount, &apos;###.##0,00&apos;, &apos;european&apos;)"/>
                        <xsl:if test="../../cbc:TaxAmount/@currencyID">
                         <xsl:text> 
                       </xsl:text>
                         <xsl:if test="../../cbc:TaxAmount/@currencyID = &apos;TRY&apos;">
                          <xsl:text>
                          TL 
                        </xsl:text>
                         </xsl:if>
                         <xsl:if test="../../cbc:TaxAmount/@currencyID != &apos;TRY&apos;">
                          <xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
                         </xsl:if>
                        </xsl:if>
                       </xsl:for-each>
                      </td>
                     </tr>
                    </tbody>
                   </table>
                  </span>
                 </span>
                </span>
               </xsl:for-each>
              </span>
             </span>
            </span>
           </td>
          </tr>
          <tr align="right" id="budgetContainerTr">
           <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200">
            <span style="font-size: 10px;">
             <span style="color: rgb(0, 0, 0);">
              <strong>
               <span style="font-family: verdana,geneva,sans-serif;">
                <xsl:for-each select="//n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal">
                 <xsl:if test="not(cbc:Percent = 0.0000) or not(cbc:TaxAmount = 0)">
                  <table id="taxSubtotalHeaderTable" cellpadding="0" cellspacing="0" width="100%">
                   <tbody>
                    <tr align="right" style="width: 319px;" height="80">
                     <td width="100%" align="right" style="border-bottom: 1px solid #a4a4a4;">
                      <span style="font-weight:bold; ">
                       <xsl:choose>
                        <xsl:when test="cac:TaxCategory/cac:TaxScheme/cbc:Name = &apos;&apos;">
                         <xsl:text>
                        Di&#287;er Vergiler Toplamı 
                       </xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                         <xsl:text>
                        Tevkifat 
                       </xsl:text>
                         <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
                        </xsl:otherwise>
                       </xsl:choose>
                       <xsl:text>
                      (%
                     </xsl:text>
                       <xsl:value-of
                        select="format-number(cbc:Percent, &apos;###.##0,00&apos;, &apos;european&apos;)"/>
                       <xsl:text>
                      )
                     </xsl:text>
                      </span>
                     </td>
                    </tr>
                   </tbody>
                  </table>
                 </xsl:if>
                </xsl:for-each>
               </span>
              </strong>
             </span>
            </span>
           </td>
           <td align="right" id="lineTableBudgetTd" style="width: 120px;">
            <span style="font-size: 10px;">
             <span style="color: rgb(0, 0, 0);">
              <span style="font-family: verdana,geneva,sans-serif;">
               <xsl:for-each select="//n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal">
                <xsl:if test="not(cbc:Percent = 0.0000) or not(cbc:TaxAmount = 0)">
                 <table id="taxSubtotalsTable" cellpadding="0" cellspacing="0" align="right"
                  style="clear:both" width="100%">
                  <tbody>
                   <tr id="budgetContainerTr" align="right" height="80">
                    <td align="right" style="border-bottom: 1px solid #a4a4a4;">
                     <xsl:for-each select="cac:TaxCategory/cac:TaxScheme">
                      <xsl:value-of
                       select="format-number(../../cbc:TaxAmount, &apos;###.##0,00&apos;, &apos;european&apos;)"/>
                      <xsl:if test="../../cbc:TaxAmount/@currencyID">
                       <xsl:text> 
                     </xsl:text>
                       <xsl:if test="../../cbc:TaxAmount/@currencyID = &apos;TRY&apos;">
                        <xsl:text>
                       TL
                      </xsl:text>
                       </xsl:if>
                       <xsl:if test="../../cbc:TaxAmount/@currencyID != &apos;TRY&apos;">
                        <xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
                       </xsl:if>
                      </xsl:if>
                     </xsl:for-each>
                    </td>
                   </tr>
                  </tbody>
                 </table>
                </xsl:if>
               </xsl:for-each>
              </span>
             </span>
            </span>
           </td>
          </tr>
          <tr align="right" id="budgetContainerTr">
           <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200">
            <span style="font-size: 10px;">
             <span style="color: rgb(0, 0, 0);">
              <span style="font-family: verdana,geneva,sans-serif;">
               <span style="font-weight: bold;">Vergiler Dahil Toplam Tutar</span>
              </span>
             </span>
            </span>
           </td>
           <td align="right" id="lineTableBudgetTd" style="width: 120px;">
            <span style="font-size: 10px;">
             <span style="color: rgb(0, 0, 0);">
              <span style="font-family: verdana,geneva,sans-serif;">
               <xsl:for-each select="//n1:Invoice">
                <xsl:for-each select="cac:LegalMonetaryTotal">
                 <xsl:for-each select="cbc:TaxInclusiveAmount">
                  <xsl:value-of
                   select="format-number(., &apos;###.##0,00&apos;, &apos;european&apos;)"/>
                  <xsl:if
                   test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID">
                   <xsl:text> 
                 </xsl:text>
                   <xsl:if
                    test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID = &apos;TRY&apos;">
                    <xsl:text>
                   TL
                  </xsl:text>
                   </xsl:if>
                   <xsl:if
                    test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID != &apos;TRY&apos;">
                    <xsl:value-of
                     select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID"
                    > </xsl:value-of>
                   </xsl:if>
                  </xsl:if>
                 </xsl:for-each>
                </xsl:for-each>
               </xsl:for-each>
              </span>
             </span>
            </span>
           </td>
          </tr>
          <tr align="right" id="budgetContainerTr">
           <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200">
            <span style="font-size: 10px;">
             <span style="color: rgb(0, 0, 0);">
              <span style="font-family: verdana,geneva,sans-serif;">
               <span style="font-weight: bold;">Ödenecek Tutar</span>
              </span>
             </span>
            </span>
           </td>
           <td align="right" id="lineTableBudgetTd" style="width: 120px;">
            <span style="font-size: 10px;">
             <span style="color: rgb(0, 0, 0);">
              <span style="font-family: verdana,geneva,sans-serif;">
               <xsl:for-each select="//n1:Invoice">
                <xsl:for-each select="cac:LegalMonetaryTotal">
                 <xsl:for-each select="cbc:PayableAmount">
                  <xsl:value-of
                   select="format-number(., &apos;###.##0,00&apos;, &apos;european&apos;)"/>
                  <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID">
                   <xsl:text> 
                 </xsl:text>
                   <xsl:if
                    test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID = &apos;TRY&apos;">
                    <xsl:text>
                   TL
                  </xsl:text>
                   </xsl:if>
                   <xsl:if
                    test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID != &apos;TRY&apos;">
                    <xsl:value-of
                     select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID"/>
                   </xsl:if>
                  </xsl:if>
                 </xsl:for-each>
                </xsl:for-each>
               </xsl:for-each>
              </span>
             </span>
            </span>
           </td>
          </tr>
         </tbody>
        </table>
       </td>
      </tr>
      <tr>
       <td align="right">
        <xsl:if
         test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID != &apos;TRY&apos;">
         <table border="1" bordercolor="#a4a4a4" cellpadding="0" cellspacing="0"
          id="budgetContainerTable" style="width: 371px;" width="500">
          <tbody>
           <tr align="right" id="budgetContainerTr">
            <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200">
             <span style="font-size: 10px;">
              <span style="color: rgb(0, 0, 0);">
               <span style="font-family: verdana,geneva,sans-serif;">
                <span style="font-weight: bold;">Döviz Kuru (</span>
                <strong>
                 <xsl:value-of select="//n1:Invoice/cac:PricingExchangeRate/cbc:TargetCurrencyCode"
                 />
                </strong>
                <span style="font-weight: bold;">)</span>
               </span>
              </span>
             </span>
            </td>
            <td align="right" id="lineTableBudgetTd" style="width: 120px;">
             <span style="font-size: 10px;">
              <span style="color: rgb(0, 0, 0);">
               <span style="font-family: verdana,geneva,sans-serif;">
                <xsl:value-of
                 select="format-number(//n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, &apos;###.##0,0000&apos;, &apos;european&apos;)"/>
                <xsl:text> 
              </xsl:text>
                <xsl:text>
               TL
              </xsl:text>
               </span>
              </span>
             </span>
            </td>
           </tr>
           <tr align="right" id="budgetContainerTr">
            <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200">
             <span style="font-size: 10px;">
              <span style="color: rgb(0, 0, 0);">
               <span style="font-family: verdana,geneva,sans-serif;">
                <span style="font-weight: bold;">Mal / Hizmet Toplam Tutarı</span>
               </span>
              </span>
             </span>
            </td>
            <td align="right" id="lineTableBudgetTd" style="width: 120px;">
             <span style="font-size: 10px;">
              <span style="color: rgb(0, 0, 0);">
               <span style="font-family: verdana,geneva,sans-serif;">
                <xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference">
                 <xsl:if test="cbc:DocumentType = &apos;LINEEXTENSIONAMOUNT&apos;">
                  <xsl:value-of
                   select="format-number(cbc:ID, &apos;###.##0,00&apos;, &apos;european&apos;)"/>
                 </xsl:if>
                </xsl:for-each>
                <xsl:text> 
              </xsl:text>
                <xsl:text>
               TL
              </xsl:text>
               </span>
              </span>
             </span>
            </td>
           </tr>
           <tr align="right" id="budgetContainerTr">
            <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200">
             <span style="font-size: 10px;">
              <span style="color: rgb(0, 0, 0);">
               <span style="font-family: verdana,geneva,sans-serif;">
                <span style="font-weight: bold;">Toplam iskonto</span>
               </span>
              </span>
             </span>
            </td>
            <td align="right" id="lineTableBudgetTd" style="width: 120px;">
             <span style="font-size: 10px;">
              <span style="color: rgb(0, 0, 0);">
               <span style="font-family: verdana,geneva,sans-serif;">
                <xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference">
                 <xsl:if test="cbc:DocumentType = &apos;ALLOWANCETOTALAMOUNT&apos;">
                  <xsl:value-of
                   select="format-number(cbc:ID, &apos;###.##0,00&apos;, &apos;european&apos;)"/>
                 </xsl:if>
                </xsl:for-each>
                <xsl:text> 
              </xsl:text>
                <xsl:text>
               TL
              </xsl:text>
               </span>
              </span>
             </span>
            </td>
           </tr>
           <tr align="right" id="budgetContainerTr">
            <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200">
             <span style="font-size: 10px;">
              <span style="color: rgb(0, 0, 0);">
               <strong>
                <span style="font-family: verdana,geneva,sans-serif;">
                 <xsl:for-each select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
                  <strong>
                   <span style="color: rgb(105, 105, 105);">
                    <span style="font-size: 10px;">
                     <span style="font-family: verdana,geneva,sans-serif;">
                      <table id="taxSubtotalHeaderTable" cellpadding="0" cellspacing="0"
                       width="100%" tagid="taxtable">
                       <tbody>
                        <tr align="right" style="border-bottom: 1px solid #000;">
                         <td width="100%" align="right">
                          <span style="font-weight:bold; ">
                           <xsl:choose>
                            <xsl:when test="cac:TaxCategory/cac:TaxScheme/cbc:Name = &apos;&apos;">
                             <xsl:text>
                             Di&#287;er Vergiler Toplamı 
                           </xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                             <xsl:text>
                             Hesaplanan 
                           </xsl:text>
                             <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
                            </xsl:otherwise>
                           </xsl:choose>
                           <xsl:text>
                           (% 
                         </xsl:text>
                           <xsl:value-of
                            select="format-number(cbc:Percent, &apos;###.##0,00&apos;, &apos;european&apos;)"/>
                           <xsl:text>
                           ) 
                         </xsl:text>
                          </span>
                         </td>
                        </tr>
                       </tbody>
                      </table>
                     </span>
                    </span>
                   </span>
                  </strong>
                 </xsl:for-each>
                </span>
               </strong>
              </span>
             </span>
            </td>
            <td align="right" id="lineTableBudgetTd" style="width: 120px;">
             <span style="font-size: 10px;">
              <span style="color: rgb(0, 0, 0);">
               <span style="font-family: verdana,geneva,sans-serif;">
                <xsl:for-each select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
                 <xsl:variable name="var_Percent" select="cbc:Percent"/>
                 <xsl:variable name="var_TaxTypeCode"
                  select="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode"/>
                 <xsl:text> 
               </xsl:text>
                 <xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference">
                  <xsl:variable name="var_DocumentType" select="cbc:DocumentType"/>
                  <xsl:variable name="var_DocumentTypeCode" select="cbc:DocumentTypeCode"/>
                  <xsl:if
                   test="$var_DocumentType = $var_Percent and $var_DocumentTypeCode = $var_TaxTypeCode and not($var_Percent = &apos;0.0000&apos;)">
                   <table id="taxSubtotalsTable" border="0" cellpadding="0" cellspacing="0"
                    align="right" tagid="taxtable" style="clear:both" width="100%">
                    <tbody>
                     <tr id="budgetContainerTr" align="right">
                      <td align="right">
                       <xsl:value-of
                        select="format-number(cbc:ID, &apos;###.##0,00&apos;, &apos;european&apos;)"/>
                       <xsl:text> 
                     </xsl:text>
                       <xsl:text>
                       TL 
                     </xsl:text>
                      </td>
                     </tr>
                    </tbody>
                   </table>
                  </xsl:if>
                 </xsl:for-each>
                </xsl:for-each>
               </span>
              </span>
             </span>
            </td>
           </tr>
           <tr align="right" id="budgetContainerTr">
            <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200">
             <span style="font-size: 10px;">
              <span style="color: rgb(0, 0, 0);">
               <strong>
                <span style="font-family: verdana,geneva,sans-serif;">
                 <xsl:for-each select="//n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal">
                  <xsl:if test="not(cbc:Percent = 0.0000) or not(cbc:TaxAmount = 0)">
                   <table id="taxSubtotalHeaderTable" cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                     <tr align="right" style="width: 319px;" height="80">
                      <td width="100%" align="right" style="border-bottom: 1px solid #a4a4a4;">
                       <span style="font-weight:bold; ">
                        <xsl:choose>
                         <xsl:when test="cac:TaxCategory/cac:TaxScheme/cbc:Name = &apos;&apos;">
                          <xsl:text>
                         Di&#287;er Vergiler Toplamı 
                        </xsl:text>
                         </xsl:when>
                         <xsl:otherwise>
                          <xsl:text>
                         Tevkifat 
                        </xsl:text>
                          <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
                         </xsl:otherwise>
                        </xsl:choose>
                        <xsl:text>
                       (%
                      </xsl:text>
                        <xsl:value-of
                         select="format-number(cbc:Percent, &apos;###.##0,00&apos;, &apos;european&apos;)"/>
                        <xsl:text>
                       )
                      </xsl:text>
                       </span>
                      </td>
                     </tr>
                    </tbody>
                   </table>
                  </xsl:if>
                 </xsl:for-each>
                </span>
               </strong>
              </span>
             </span>
            </td>
            <td align="right" id="lineTableBudgetTd" style="width: 120px;">
             <span style="font-size: 10px;">
              <span style="color: rgb(0, 0, 0);">
               <span style="font-family: verdana,geneva,sans-serif;">
                <xsl:for-each select="//n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal">
                 <xsl:variable name="var_Percent" select="cbc:Percent"/>
                 <xsl:variable name="var_TaxTypeCode"
                  select="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode"/>
                 <xsl:text> 
               </xsl:text>
                 <xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference">
                  <xsl:variable name="var_DocumentType" select="cbc:DocumentType"/>
                  <xsl:variable name="var_DocumentTypeCode" select="cbc:DocumentTypeCode"/>
                  <xsl:choose>
                   <xsl:when
                    test="string(number($var_Percent)) != &apos;NaN&apos; and string(number($var_DocumentType)) != &apos;NaN&apos;">
                    <xsl:if
                     test="(number($var_DocumentType) = number($var_Percent)) and $var_DocumentTypeCode = $var_TaxTypeCode and not(number($var_Percent) = 0)">
                     <table id="taxSubtotalsTable" border="0" cellpadding="0" cellspacing="0"
                      align="right" tagid="taxtable" style="clear:both" width="100%">
                      <tbody>
                       <tr id="budgetContainerTr" align="right" height="80">
                        <td align="right" style="border-bottom: 1px solid #a4a4a4;">
                         <xsl:value-of
                          select="format-number(cbc:ID, &apos;###.##0,00&apos;, &apos;european&apos;)"/>
                         <xsl:text> 
                       </xsl:text>
                         <xsl:text>
                         TL 
                       </xsl:text>
                        </td>
                       </tr>
                      </tbody>
                     </table>
                    </xsl:if>
                   </xsl:when>
                   <xsl:otherwise>
                    <xsl:if
                     test="$var_DocumentType = $var_Percent and $var_DocumentTypeCode = $var_TaxTypeCode and not($var_Percent = &apos;0.0000&apos;)">
                     <table id="taxSubtotalsTable" border="0" cellpadding="0" cellspacing="0"
                      align="right" tagid="taxtable" style="clear:both" width="100%">
                      <tbody>
                       <tr id="budgetContainerTr" align="right" height="80">
                        <td align="right" style="border-bottom: 1px solid #a4a4a4;">
                         <xsl:value-of
                          select="format-number(cbc:ID, &apos;###.##0,00&apos;, &apos;european&apos;)"/>
                         <xsl:text> 
                       </xsl:text>
                         <xsl:text>
                         TL 
                       </xsl:text>
                        </td>
                       </tr>
                      </tbody>
                     </table>
                    </xsl:if>
                   </xsl:otherwise>
                  </xsl:choose>
                 </xsl:for-each>
                </xsl:for-each>
               </span>
              </span>
             </span>
            </td>
           </tr>
           <tr align="right" id="budgetContainerTr">
            <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200">
             <span style="font-size: 10px;">
              <span style="color: rgb(0, 0, 0);">
               <span style="font-family: verdana,geneva,sans-serif;">
                <span style="font-weight: bold;">Vergiler Dahil Toplam Tutar</span>
               </span>
              </span>
             </span>
            </td>
            <td align="right" id="lineTableBudgetTd" style="width: 120px;">
             <span style="font-size: 10px;">
              <span style="color: rgb(0, 0, 0);">
               <span style="font-family: verdana,geneva,sans-serif;">
                <xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference">
                 <xsl:if test="cbc:DocumentType = &apos;TAXINCLUSIVEAMOUNT&apos;">
                  <xsl:value-of
                   select="format-number(cbc:ID, &apos;###.##0,00&apos;, &apos;european&apos;)"/>
                 </xsl:if>
                </xsl:for-each>
                <xsl:text> 
              </xsl:text>
                <xsl:text>
               TL
              </xsl:text>
               </span>
              </span>
             </span>
            </td>
           </tr>
           <tr align="right" id="budgetContainerTr">
            <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200">
             <span style="font-size: 10px;">
              <span style="color: rgb(0, 0, 0);">
               <span style="font-family: verdana,geneva,sans-serif;">
                <span style="font-weight: bold;">Ödenecek Tutar</span>
               </span>
              </span>
             </span>
            </td>
            <td align="right" id="lineTableBudgetTd" style="width: 120px;">
             <span style="font-size: 10px;">
              <span style="color: rgb(0, 0, 0);">
               <span style="font-family: verdana,geneva,sans-serif;">
                <xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference">
                 <xsl:if test="cbc:DocumentType = &apos;PAYABLEAMOUNT&apos;">
                  <xsl:value-of
                   select="format-number(cbc:ID, &apos;###.##0,00&apos;, &apos;european&apos;)"/>
                 </xsl:if>
                </xsl:for-each>
                <xsl:text> 
              </xsl:text>
                <xsl:text>
               TL
              </xsl:text>
               </span>
              </span>
             </span>
            </td>
           </tr>
          </tbody>
         </table>
        </xsl:if>
       </td>
      </tr>
     </tbody>
    </table>
    <p>&#160;</p>
    <table border="1" cellpadding="0" cellspacing="0" style="width: 800px;">
     <tbody>
      <tr>
       <td>
        <p style="margin-left: 40px;">
         <span style="font-size: 10px;">
          <xsl:if test="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID">
           <b>iban Numarası:</b>
           <xsl:value-of select="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID"/>
           <br/>
          </xsl:if>
          <xsl:if test="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:CurrencyCode">
           <b>Döviz Cinsi:</b>
           <xsl:value-of
            select="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:CurrencyCode"/>
           <br/>
          </xsl:if>
          <xsl:if test="//n1:Invoice/cac:PaymentMeans/cbc:InstructionNote">
           <b>Ödeme Notu:</b>
           <xsl:value-of select="//n1:Invoice/cac:PaymentMeans/cbc:InstructionNote"/>
           <br/>
          </xsl:if>
          <xsl:if test="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:PaymentNote">
           <b>Hesap Açıklaması:</b>
           <xsl:value-of
            select="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:PaymentNote"/>
           <br/>
          </xsl:if>
          <xsl:if test="//n1:Invoice/cac:PaymentTerms/cbc:Note">
           <b>Ödeme Koşulu:</b>
           <xsl:value-of select="//n1:Invoice/cac:PaymentTerms/cbc:Note"/>
           <br/>
          </xsl:if>
          <xsl:if
           test="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TaxExemptionReason">
           <b>Vergi Muafiyet Sebebi</b>
           <xsl:value-of
            select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TaxExemptionReason"/>
           <br/>
          </xsl:if>
          <br/>
          <br/>
          <xsl:if test="//n1:Invoice/cbc:Note">
           <b>Genel Açıklamalar</b>
           <br/>
           <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:value-of select="."/>
            <br/>
           </xsl:for-each>
          </xsl:if>
         </span>
        </p>
       </td>
      </tr>
         {{NOTES.FIRST}}
         {{NOTES.SECOND}}
         {{NOTES.THIRD}}
     </tbody>
    </table>
   <span style="font-size: 10px;">
      {{BANKINFO}}
   </span>
   	<p>&#160;</p>
   	<div id="eArsivAlan" style="margin-top:10px">					
   		<div id="irsaliye" style="margin-bottom:10px">
   			
   			<xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference[cbc:DocumentTypeCode = 'IS_DESPATCH']">
   				İrsaliye yerine geçer
   			</xsl:for-each>
   			
   		</div>
   		
   		
   		<xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference[cbc:DocumentTypeCode = 'IS_INTERNET']">
   			Bu satış internet üzerinden yapılmıştır
   			<div id="internetSatis" style="margin-top:5px; font-size:10px;">
   				<table class="intSatisBilgi"  style="border:1px solid #ccc; width:800px"   id="info">
   					<tbody>
   						<tr>
   							<td style="font-weight: bold; border-bottom:1px solid #ccc">
   								&#160;&#160;Web Adresi
   							</td>
   							<td style="border-bottom:1px solid #ccc">
   								<xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference[cbc:DocumentTypeCode = 'INT_WEBSITE']">
   									<xsl:value-of select="cbc:ID"/>
   								</xsl:for-each>
   							</td>
   							<td style="font-weight: bold; border-bottom:1px solid #ccc">
   								Ödeme Şekli
   							</td>
   							<td style="border-bottom:1px solid #ccc">
   								<xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference[cbc:DocumentTypeCode = 'INT_PAYMENT_METHOD']">
   									<xsl:value-of select="cbc:ID"/>
   								</xsl:for-each>
   							</td>
   							<td style="font-weight: bold; border-bottom:1px solid #ccc">
   								Ödeme Tarihi
   							</td>
   							<td style="border-bottom:1px solid #ccc">
   								<xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference[cbc:DocumentTypeCode = 'INT_PAYMENTDATE']">
   									<xsl:value-of select="cbc:ID"/>
   								</xsl:for-each>
   							</td>
   						</tr>
   						<tr>
   							<td style="font-weight: bold;">
   								&#160;&#160;Gönderiyi Taşıyan
   							</td>
   							<td>
   								<xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference[cbc:DocumentTypeCode = 'INT_TRANSPORTER']">
   									<xsl:value-of select="cbc:ID"/>
   								</xsl:for-each>
   							</td>
   							<td style="font-weight: bold;">
   								Taşıyıcı VKN/TCKN
   							</td>
   							<td>
   								<xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference[cbc:DocumentTypeCode = 'INT_TRANSPORTER_REGISTER_NUMBER']">
   									<xsl:value-of select="cbc:ID"/>
   								</xsl:for-each>
   							</td>
   							<td style="font-weight: bold;">
   								Gönderim Tarihi
   							</td>
   							<td>
   								<xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference[cbc:DocumentTypeCode = 'INT_TRANSPORT_DATE']">
   									<xsl:value-of select="cbc:ID"/>
   								</xsl:for-each>
   							</td>
   						</tr>
   					</tbody>
   				</table>
   				<table id="info" class="intSatisBilgi"  style="border:1px solid #ccc;  margin-top:10px; margin-bottom:10px; width:800px" >
   					<tbody>
   						<tr style="text-align:center">
   							<td colspan="5" style="font-weight:bold">İade Edilen Mal Bilgileri</td>
   						</tr>
   						<tr style="border:0px">
   							<td class="iadeBorderTop" style="width:150px; text-align:center">Stok Kodu</td>
   							<td class="iadeBorderTop" style="width:350px; text-align:center">Cinsi</td>
   							<td class="iadeBorderTop" style="width:100px; text-align:center">Adet</td>
   							<td class="iadeBorderTop" style="width:100px; text-align:center">Birim Fiyatı</td>
   							<td class="iadeBorderTop" style="width:100px; text-align:center">Tutarı</td>
   						</tr>
   						<xsl:for-each select="//n1:Invoice/cac:InvoiceLine">
   							<tr>
   								<td class="iadeBorderTop" style="height:18px; border-bottom:0px"></td>
   								<td class="iadeBorderLeft"></td>
   								<td class="iadeBorderLeft"></td>
   								<td class="iadeBorderLeft"></td>
   								<td class="iadeBorderLeft"></td>
   							</tr>
   						</xsl:for-each>
   					</tbody>
   				</table>
   				<span>İade Edenin Adı, Soyadı:</span>
   				<span style="margin-left:250px">İmzası:</span>
   				<br/>
   				<span>Adresi: </span>
   			</div>
   		</xsl:for-each>
   		
   		
   		<div id="elektronikOrtam" style="width:800px" >
   			
   			<xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference[cbc:DocumentTypeCode = 'SEND_TYPE']">
   				<xsl:if test="cbc:ID='ELEKTRONIK'">
   					<div style="margin-top:5px; font-size:10px;">
   						e-Arşiv izni kapsamında elektronik ortamda iletilmiştir.
   					</div>
   				</xsl:if>
   			</xsl:for-each>
   		</div>
   		
   		<div id="elektronikOrtamDogrula" style="width:800px" >
   			<div style="width:auto; margin-bottom:10px; margin-top:3px; font-size:10px;">
   				Bu faturayı elektronik olarak görmek ve doğrulamak için <a target="_blank" style="font-weight:bold" href="http://e-fatura.link">
   					<u>e-arşiv.link</u>
   				</a> adresini ziyaret ediniz.
   			</div>
   		</div>
   	</div>
   </body>
  </html>
 </xsl:template>
	

 	<xsl:template match="//n1:Invoice/cac:InvoiceLine">
		<tr>
			<td><xsl:value-of select="./cbc:ID"/></td>
			<td class="wrap"><xsl:value-of select="./cac:Item/cbc:Name"/></td>
			<xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:Item/cbc:Description">
				<td class="wrap">
					<span>
						<xsl:value-of select="./cac:Item/cbc:Description"/>
					</span>
				</td>
			</xsl:if>
			<xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:Item/cac:BuyersItemIdentification/cbc:ID">
				<td>
					<span>
						<xsl:value-of select="./cac:Item/cac:BuyersItemIdentification/cbc:ID"/>
					</span>
				</td>
			</xsl:if>
			<xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:Item/cac:SellersItemIdentification/cbc:ID">
				<td>
					<span>
						<xsl:value-of select="./cac:Item/cac:SellersItemIdentification/cbc:ID"/>
					</span>
				</td>
			</xsl:if>
			
			<td>
				<xsl:value-of
					select="format-number(./cbc:InvoicedQuantity, '###.###,####', 'european')"/>
				<xsl:if test="./cbc:InvoicedQuantity/@unitCode">
					<xsl:for-each select="./cbc:InvoicedQuantity">
						<xsl:text> </xsl:text>
						<xsl:choose>
							<xsl:when test="@unitCode  = 'TNE'">
								<xsl:text>ton</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = '26'">
								<xsl:text>ton</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'BX'">
								<xsl:text>Kutu</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'LTR'">
								<xsl:text>lt</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'C62'">
								<xsl:text>Adet</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'NIU'">
								<xsl:text>Adet</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'YRD'">
								<xsl:text>Yard</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'KGM'">
								<xsl:text>kg</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'KJO'">
								<xsl:text>kJ</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'GRM'">
								<xsl:text>g</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'MGM'">
								<xsl:text>mg</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'NT'">
								<xsl:text>Net Ton</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'GT'">
								<xsl:text>Gross Ton</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'MTR'">
								<xsl:text>m</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'MMT'">
								<xsl:text>mm</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'KTM'">
								<xsl:text>km</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'MLT'">
								<xsl:text>ml</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'MMQ'">
								<xsl:text>mm3</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'CLT'">
								<xsl:text>cl</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'CMK'">
								<xsl:text>cm2</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'CMQ'">
								<xsl:text>cm3</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'CMT'">
								<xsl:text>cm</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'MTK'">
								<xsl:text>m2</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'MTQ'">
								<xsl:text>m3</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'DAY'">
								<xsl:text> Gün</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'MON'">
								<xsl:text> Ay</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'PA'">
								<xsl:text> Paket</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'KWH'">
								<xsl:text> KWH</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'ANN'">
								<xsl:text> Yıl</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'HUR'">
								<xsl:text> Saat</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'D61'">
								<xsl:text> Dakika</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'D62'">
								<xsl:text> Saniye</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'CCT'">
								<xsl:text> Ton baş.taşıma kap.</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'D30'">
								<xsl:text> Brüt kalori</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'D40'">
								<xsl:text> 1000 lt</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'LPA'">
								<xsl:text> saf alkol lt</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'B32'">
								<xsl:text> kg.m2</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'NCL'">
								<xsl:text> hücre adet</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'PR'">
								<xsl:text> Çift</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'R9'">
								<xsl:text> 1000 m3</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'SET'">
								<xsl:text> Set</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'T3'">
								<xsl:text> 1000 adet</xsl:text>
							</xsl:when>							
						</xsl:choose>
					</xsl:for-each>
				</xsl:if>
			</td>
			<td>
				<xsl:value-of
					select="format-number(./cac:Price/cbc:PriceAmount, '###.##0,########', 'european')"/>
				<xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID">
					<xsl:text> </xsl:text>
					<xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID = &quot;TRL&quot; or ./cac:Price/cbc:PriceAmount/@currencyID = &quot;TRY&quot;">
						<xsl:text>TL</xsl:text>
					</xsl:if>
					<xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID != &quot;TRL&quot; and ./cac:Price/cbc:PriceAmount/@currencyID != &quot;TRY&quot;">
						<xsl:value-of select="./cac:Price/cbc:PriceAmount/@currencyID"/>
					</xsl:if>
				</xsl:if>
			</td>
			<xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:AllowanceCharge/cbc:MultiplierFactorNumeric and //n1:Invoice/cac:InvoiceLine/cac:AllowanceCharge/cbc:MultiplierFactorNumeric !=0">
				
			<td>
				<xsl:for-each select="./cac:AllowanceCharge/cbc:MultiplierFactorNumeric">
					<xsl:text> %</xsl:text>
					<xsl:value-of select="format-number(. * 100, '###.##0,00', 'european')"/>
				</xsl:for-each>
			</td>
				</xsl:if>
			<xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:AllowanceCharge">
				
			<td>
				<xsl:for-each select="cac:AllowanceCharge/cbc:Amount">
					<xsl:call-template name="Curr_Type"/>
				</xsl:for-each>
			</td>
			</xsl:if>
			<td>
				<xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
					<xsl:if test="cbc:TaxTypeCode='0015' ">
						<xsl:text> </xsl:text>
						<xsl:if test="../../cbc:Percent">
							<xsl:text> %</xsl:text>
							<xsl:value-of select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
						</xsl:if>
					</xsl:if>
				</xsl:for-each>
			</td>
			<td>
				<xsl:for-each
					select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
					<xsl:if test="cbc:TaxTypeCode='0015' ">
						<xsl:text> </xsl:text>
						<xsl:for-each select="../../cbc:TaxAmount">
							<xsl:call-template name="Curr_Type"/>
						</xsl:for-each>
					</xsl:if>
				</xsl:for-each>
			</td>
			<xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode !='0015' or //n1:Invoice/cac:WithholdingTaxTotal">
			<td class="wrap" style="font-size: xx-small" align="right">
				<xsl:for-each
					select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
					<xsl:if test="cbc:TaxTypeCode!='0015' ">
						<xsl:text> </xsl:text>
						<xsl:value-of select="cbc:Name"/>
						<xsl:if test="../../cbc:Percent">
							<xsl:text> (%</xsl:text>
							<xsl:value-of
								select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
							<xsl:text>)=</xsl:text>
						</xsl:if>					
						<xsl:for-each select="../../cbc:TaxAmount">
							<xsl:call-template name="Curr_Type"/>
						</xsl:for-each>
					</xsl:if>
				</xsl:for-each>
				<xsl:for-each
					select="./cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
					<xsl:text>KDV TEVKİFAT </xsl:text>
					<xsl:if test="../../cbc:Percent">
						<xsl:text> (%</xsl:text>
						<xsl:value-of
							select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
						<xsl:text>)=</xsl:text>
					</xsl:if>
					<xsl:for-each select="../../cbc:TaxAmount">
						<xsl:call-template name="Curr_Type"/>
						<xsl:text>&#10;</xsl:text>
					</xsl:for-each>
				</xsl:for-each>
			</td>
			</xsl:if>
			<td>
				<xsl:for-each select="cbc:LineExtensionAmount">
					<xsl:call-template name="Curr_Type"/>
				</xsl:for-each>
			</td>
			<xsl:if test="//n1:Invoice/cbc:ProfileID='IHRACAT'">
				<td >
					<xsl:for-each select="cac:Delivery/cac:DeliveryTerms/cbc:ID[@schemeID='INCOTERMS']">
						<xsl:text>&#160;</xsl:text>
						<xsl:apply-templates/>
					</xsl:for-each>
				</td>
				<td>
					<xsl:for-each select="cac:Delivery/cac:Shipment/cac:TransportHandlingUnit/cac:ActualPackage/cbc:PackagingTypeCode">
						<xsl:text>&#160;</xsl:text>
						<xsl:call-template name="Packaging">
							<xsl:with-param name="PackagingType">
								<xsl:value-of select="."/>
							</xsl:with-param>
						</xsl:call-template>
					</xsl:for-each>
				</td>
				<td>
					<xsl:for-each select="cac:Delivery/cac:Shipment/cac:TransportHandlingUnit/cac:ActualPackage/cbc:ID">
						<xsl:text>&#160;</xsl:text>
						<xsl:apply-templates/>
					</xsl:for-each>
				</td>
				<td>
					<xsl:for-each select="cac:Delivery/cac:Shipment/cac:TransportHandlingUnit/cac:ActualPackage/cbc:Quantity">
						<xsl:text>&#160;</xsl:text>
						<xsl:apply-templates/>
					</xsl:for-each>
				</td>
				<td>
					<xsl:for-each select="cac:Delivery/cac:DeliveryAddress">
						<xsl:text>&#160;</xsl:text>
						<xsl:apply-templates/>
					</xsl:for-each>
				</td>
				<td>
					<xsl:for-each select="cac:Delivery/cac:Shipment/cac:ShipmentStage/cbc:TransportModeCode">
						<xsl:text>&#160;</xsl:text>
						<xsl:call-template name="TransportMode">
							<xsl:with-param name="TransportModeType">
								<xsl:value-of select="."/>
							</xsl:with-param>
						</xsl:call-template>
					</xsl:for-each>
				</td>
				<td>
					<xsl:for-each select="cac:Delivery/cac:Shipment/cac:GoodsItem/cbc:RequiredCustomsID">
						<xsl:text>&#160;</xsl:text>
						<xsl:apply-templates/>
					</xsl:for-each>
				</td>				
			</xsl:if>			
		</tr>
	</xsl:template>
	<xsl:template match="//cbc:IssueDate">
		<xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
	</xsl:template>
	<xsl:template match="//n1:Invoice">
		<tr class="lineTableTr">
			<td class="lineTableTd">
				<xsl:text>&#160;</xsl:text>
			</td>
			<td class="lineTableTd">
				<xsl:text>&#160;</xsl:text>
			</td>
			<td class="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
			</td>
			<td class="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
			</td>
			<td class="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
			</td>
			<td class="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
			</td>
			<td class="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
			</td>
			<td class="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
			</td>
			<td class="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
			</td>
			<td class="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
			</td>
			<xsl:if test="//n1:Invoice/cbc:ProfileID='IHRACAT'">
				<td class="lineTableTd" align="right">
					<xsl:text>&#160;</xsl:text>
				</td>
				<td class="lineTableTd" align="right">
					<xsl:text>&#160;</xsl:text>
				</td>
				<td class="lineTableTd" align="right">
					<xsl:text>&#160;</xsl:text>
				</td>
				<td class="lineTableTd" align="right">
					<xsl:text>&#160;</xsl:text>
				</td>
				<td class="lineTableTd" align="right">
					<xsl:text>&#160;</xsl:text>
				</td>
				<td class="lineTableTd" align="right">
					<xsl:text>&#160;</xsl:text>
				</td>
				<td class="lineTableTd" align="right">
					<xsl:text>&#160;</xsl:text>
				</td>
			</xsl:if>			
		</tr>
	</xsl:template>
	<xsl:template name="Party_Title" >
		<xsl:param name="PartyType" />
		<td style="width:469px; " align="left">
			<xsl:if test="cac:PartyName">
				<xsl:value-of select="cac:PartyName/cbc:Name"/>
				<br/>
			</xsl:if>
			<xsl:for-each select="cac:Person">
				<xsl:for-each select="cbc:Title">
					<xsl:apply-templates/>
					<xsl:text>&#160;</xsl:text>
				</xsl:for-each>
				<xsl:for-each select="cbc:FirstName">
					<xsl:apply-templates/>
					<xsl:text>&#160;</xsl:text>
				</xsl:for-each>
				<xsl:for-each select="cbc:MiddleName">
					<xsl:apply-templates/>
					<xsl:text>&#160; </xsl:text>
				</xsl:for-each>
				<xsl:for-each select="cbc:FamilyName">
					<xsl:apply-templates/>
					<xsl:text>&#160;</xsl:text>
				</xsl:for-each>
				<xsl:for-each select="cbc:NameSuffix">
					<xsl:apply-templates/>
				</xsl:for-each>
				<xsl:if test="$PartyType='TAXFREE'">
					<br/>
					<xsl:text>Pasaport No: </xsl:text>
					<xsl:value-of select="cac:IdentityDocumentReference/cbc:ID"/>
					<br/>
					<xsl:text>Ülkesi: </xsl:text>
					<xsl:for-each select="cbc:NationalityID">
						<xsl:call-template name="Country">
							<xsl:with-param name="CountryType"><xsl:value-of select="."/></xsl:with-param>
						</xsl:call-template>
					</xsl:for-each>
				</xsl:if>
			</xsl:for-each>
		</td>		
	</xsl:template>
	<xsl:template name="Party_Adress" >
		<xsl:param name="PartyType" />
		<td style="width:469px; " align="left">
			<xsl:for-each select="cac:PostalAddress">
				<xsl:for-each select="cbc:StreetName">
					<xsl:apply-templates/>
					<xsl:text>&#160;</xsl:text>
				</xsl:for-each>
				<xsl:for-each select="cbc:BuildingName">
					<xsl:apply-templates/>
				</xsl:for-each>
				<xsl:for-each select="cbc:BuildingNumber">
					<xsl:text> No:</xsl:text>
					<xsl:apply-templates/>
					<xsl:text>&#160;</xsl:text>
				</xsl:for-each>
				<br/>
				<xsl:for-each select="cbc:Room">
					<xsl:text>Kapı No:</xsl:text>
					<xsl:apply-templates/>
					<xsl:text>&#160;</xsl:text>
				</xsl:for-each>
				<br/>
				<xsl:for-each select="cbc:PostalZone">
					<xsl:apply-templates/>
					<xsl:text>&#160;</xsl:text>
				</xsl:for-each>
				<xsl:for-each select="cbc:CitySubdivisionName">
					<xsl:apply-templates/>
					<xsl:text>/ </xsl:text>
				</xsl:for-each>
				<xsl:for-each select="cbc:CityName">
					<xsl:apply-templates/>
					<xsl:text>&#160;</xsl:text>
				</xsl:for-each>
				<xsl:if test="$PartyType!='OTHER'">
					<br/>
					<xsl:value-of select="cac:Country/cbc:Name"/>
					<br/>
				</xsl:if>
			</xsl:for-each>
		</td>
	</xsl:template>
	<xsl:template name="TransportMode">
		<xsl:param name="TransportModeType" />
		<xsl:choose>
			<xsl:when test="$TransportModeType=1">Denizyolu</xsl:when>
			<xsl:when test="$TransportModeType=2">Demiryolu</xsl:when>
			<xsl:when test="$TransportModeType=3">Karayolu</xsl:when>
			<xsl:when test="$TransportModeType=4">Havayolu</xsl:when>
			<xsl:when test="$TransportModeType=5">Posta</xsl:when>
			<xsl:when test="$TransportModeType=6">Çok araçlı</xsl:when>
			<xsl:when test="$TransportModeType=7">Sabit taşıma tesisleri</xsl:when>
			<xsl:when test="$TransportModeType=8">İç su taşımacılığı</xsl:when>			
			<xsl:otherwise><xsl:value-of select="$TransportModeType"/></xsl:otherwise>
		</xsl:choose>		
	</xsl:template>
	<xsl:template name="Packaging">
		<xsl:param name="PackagingType" />
		<xsl:choose>
			<xsl:when test="$PackagingType='1A'">Drum, steel</xsl:when>
			<xsl:when test="$PackagingType='1B'">Drum, aluminium</xsl:when>
			<xsl:when test="$PackagingType='1D'">Drum, plywood</xsl:when>
			<xsl:when test="$PackagingType='1F'">Container, flexible</xsl:when>
			<xsl:when test="$PackagingType='1G'">Drum, fibre</xsl:when>
			<xsl:when test="$PackagingType='1W'">Drum, wooden</xsl:when>
			<xsl:when test="$PackagingType='2C'">Barrel, wooden</xsl:when>
			<xsl:when test="$PackagingType='3A'">Jerrican, steel</xsl:when>
			<xsl:when test="$PackagingType='3H'">Jerrican, plastic</xsl:when>
			<xsl:when test="$PackagingType='43'">Bag, super bulk</xsl:when>
			<xsl:when test="$PackagingType='44'">Bag, polybag</xsl:when>
			<xsl:when test="$PackagingType='4A'">Box, steel</xsl:when>
			<xsl:when test="$PackagingType='4B'">Box, aluminium</xsl:when>
			<xsl:when test="$PackagingType='4C'">Box, natural wood</xsl:when>
			<xsl:when test="$PackagingType='4D'">Box, plywood</xsl:when>
			<xsl:when test="$PackagingType='4F'">Box, reconstituted wood</xsl:when>
			<xsl:when test="$PackagingType='4G'">Box, fibreboard</xsl:when>
			<xsl:when test="$PackagingType='4H'">Box, plastic</xsl:when>
			<xsl:when test="$PackagingType='5H'">Bag, woven plastic</xsl:when>
			<xsl:when test="$PackagingType='5L'">Bag, textile</xsl:when>
			<xsl:when test="$PackagingType='5M'">Bag, paper</xsl:when>
			<xsl:when test="$PackagingType='6H'">Composite packaging, plastic receptacle</xsl:when>
			<xsl:when test="$PackagingType='6P'">Composite packaging, glass receptacle</xsl:when>
			<xsl:when test="$PackagingType='7A'">Case, car</xsl:when>
			<xsl:when test="$PackagingType='7B'">Case, wooden</xsl:when>
			<xsl:when test="$PackagingType='8A'">Pallet, wooden</xsl:when>
			<xsl:when test="$PackagingType='8B'">Crate, wooden</xsl:when>
			<xsl:when test="$PackagingType='8C'">Bundle, wooden</xsl:when>
			<xsl:when test="$PackagingType='AA'">Intermediate bulk container, rigid plastic</xsl:when>
			<xsl:when test="$PackagingType='AB'">Receptacle, fibre</xsl:when>
			<xsl:when test="$PackagingType='AC'">Receptacle, paper</xsl:when>
			<xsl:when test="$PackagingType='AD'">Receptacle, wooden</xsl:when>
			<xsl:when test="$PackagingType='AE'">Aerosol</xsl:when>
			<xsl:when test="$PackagingType='AF'">Pallet, modular, collars 80cms * 60cms</xsl:when>
			<xsl:when test="$PackagingType='AG'">Pallet, shrinkwrapped</xsl:when>
			<xsl:when test="$PackagingType='AH'">Pallet, 100cms * 110cms</xsl:when>
			<xsl:when test="$PackagingType='AI'">Clamshell</xsl:when>
			<xsl:when test="$PackagingType='AJ'">Cone</xsl:when>
			<xsl:when test="$PackagingType='AL'">Ball</xsl:when>
			<xsl:when test="$PackagingType='AM'">Ampoule, non-protected</xsl:when>
			<xsl:when test="$PackagingType='AP'">Ampoule, protected</xsl:when>
			<xsl:when test="$PackagingType='AT'">Atomizer</xsl:when>
			<xsl:when test="$PackagingType='AV'">Capsule</xsl:when>
			<xsl:when test="$PackagingType='B4'">Belt</xsl:when>
			<xsl:when test="$PackagingType='BA'">Barrel</xsl:when>
			<xsl:when test="$PackagingType='BB'">Bobbin</xsl:when>
			<xsl:when test="$PackagingType='BC'">Bottlecrate / bottlerack</xsl:when>
			<xsl:when test="$PackagingType='BD'">Board</xsl:when>
			<xsl:when test="$PackagingType='BE'">Bundle</xsl:when>
			<xsl:when test="$PackagingType='BF'">Balloon, non-protected</xsl:when>
			<xsl:when test="$PackagingType='BG'">Bag</xsl:when>
			<xsl:when test="$PackagingType='BH'">Bunch</xsl:when>
			<xsl:when test="$PackagingType='BI'">Bin</xsl:when>
			<xsl:when test="$PackagingType='BJ'">Bucket</xsl:when>
			<xsl:when test="$PackagingType='BK'">Basket</xsl:when>
			<xsl:when test="$PackagingType='BL'">Bale, compressed</xsl:when>
			<xsl:when test="$PackagingType='BM'">Basin</xsl:when>
			<xsl:when test="$PackagingType='BN'">Bale, non-compressed</xsl:when>
			<xsl:when test="$PackagingType='BO'">Bottle, non-protected, cylindrical</xsl:when>
			<xsl:when test="$PackagingType='BP'">Balloon, protected</xsl:when>
			<xsl:when test="$PackagingType='BQ'">Bottle, protected cylindrical</xsl:when>
			<xsl:when test="$PackagingType='BR'">Bar</xsl:when>
			<xsl:when test="$PackagingType='BS'">Bottle, non-protected, bulbous</xsl:when>
			<xsl:when test="$PackagingType='BT'">Bolt</xsl:when>
			<xsl:when test="$PackagingType='BU'">Butt</xsl:when>
			<xsl:when test="$PackagingType='BV'">Bottle, protected bulbous</xsl:when>
			<xsl:when test="$PackagingType='BW'">Box, for liquids</xsl:when>
			<xsl:when test="$PackagingType='BX'">Box</xsl:when>
			<xsl:when test="$PackagingType='BY'">Board, in bundle/bunch/truss</xsl:when>
			<xsl:when test="$PackagingType='BZ'">Bars, in bundle/bunch/truss</xsl:when>
			<xsl:when test="$PackagingType='CA'">Can, rectangular</xsl:when>
			<xsl:when test="$PackagingType='CB'">Crate, beer</xsl:when>
			<xsl:when test="$PackagingType='CC'">Churn</xsl:when>
			<xsl:when test="$PackagingType='CD'">Can, with handle and spout</xsl:when>
			<xsl:when test="$PackagingType='CE'">Creel</xsl:when>
			<xsl:when test="$PackagingType='CF'">Coffer</xsl:when>
			<xsl:when test="$PackagingType='CG'">Cage</xsl:when>
			<xsl:when test="$PackagingType='CH'">Chest</xsl:when>
			<xsl:when test="$PackagingType='CI'">Canister</xsl:when>
			<xsl:when test="$PackagingType='CJ'">Coffin</xsl:when>
			<xsl:when test="$PackagingType='CK'">Cask</xsl:when>
			<xsl:when test="$PackagingType='CL'">Coil</xsl:when>
			<xsl:when test="$PackagingType='CM'">Card</xsl:when>
			<xsl:when test="$PackagingType='CN'">Container, not otherwise specified as transport equipment</xsl:when>
			<xsl:when test="$PackagingType='CO'">Carboy, non-protected</xsl:when>
			<xsl:when test="$PackagingType='CP'">Carboy, protected</xsl:when>
			<xsl:when test="$PackagingType='CQ'">Cartridge</xsl:when>
			<xsl:when test="$PackagingType='CR'">Crate</xsl:when>
			<xsl:when test="$PackagingType='CS'">Case</xsl:when>
			<xsl:when test="$PackagingType='CT'">Carton</xsl:when>
			<xsl:when test="$PackagingType='CU'">Cup</xsl:when>
			<xsl:when test="$PackagingType='CV'">Cover</xsl:when>
			<xsl:when test="$PackagingType='CW'">Cage, roll</xsl:when>
			<xsl:when test="$PackagingType='CX'">Can, cylindrical</xsl:when>
			<xsl:when test="$PackagingType='CY'">Cylinder</xsl:when>
			<xsl:when test="$PackagingType='CZ'">Canvas</xsl:when>
			<xsl:when test="$PackagingType='DA'">Crate, multiple layer, plastic</xsl:when>
			<xsl:when test="$PackagingType='DB'">Crate, multiple layer, wooden</xsl:when>
			<xsl:when test="$PackagingType='DC'">Crate, multiple layer, cardboard</xsl:when>
			<xsl:when test="$PackagingType='DG'">Cage, Commonwealth Handling Equipment Pool (CHEP)</xsl:when>
			<xsl:when test="$PackagingType='DH'">Box, Commonwealth Handling Equipment Pool (CHEP), Eurobox</xsl:when>
			<xsl:when test="$PackagingType='DI'">Drum, iron</xsl:when>
			<xsl:when test="$PackagingType='DJ'">Demijohn, non-protected</xsl:when>
			<xsl:when test="$PackagingType='DK'">Crate, bulk, cardboard</xsl:when>
			<xsl:when test="$PackagingType='DL'">Crate, bulk, plastic</xsl:when>
			<xsl:when test="$PackagingType='DM'">Crate, bulk, wooden</xsl:when>
			<xsl:when test="$PackagingType='DN'">Dispenser</xsl:when>
			<xsl:when test="$PackagingType='DP'">Demijohn, protected</xsl:when>
			<xsl:when test="$PackagingType='DR'">Drum</xsl:when>
			<xsl:when test="$PackagingType='DS'">Tray, one layer no cover, plastic</xsl:when>
			<xsl:when test="$PackagingType='DT'">Tray, one layer no cover, wooden</xsl:when>
			<xsl:when test="$PackagingType='DU'">Tray, one layer no cover, polystyrene</xsl:when>
			<xsl:when test="$PackagingType='DV'">Tray, one layer no cover, cardboard</xsl:when>
			<xsl:when test="$PackagingType='DW'">Tray, two layers no cover, plastic tray</xsl:when>
			<xsl:when test="$PackagingType='DX'">Tray, two layers no cover, wooden</xsl:when>
			<xsl:when test="$PackagingType='DY'">Tray, two layers no cover, cardboard</xsl:when>
			<xsl:when test="$PackagingType='EC'">Bag, plastic</xsl:when>
			<xsl:when test="$PackagingType='ED'">Case, with pallet base</xsl:when>
			<xsl:when test="$PackagingType='EE'">Case, with pallet base, wooden</xsl:when>
			<xsl:when test="$PackagingType='EF'">Case, with pallet base, cardboard</xsl:when>
			<xsl:when test="$PackagingType='EG'">Case, with pallet base, plastic</xsl:when>
			<xsl:when test="$PackagingType='EH'">Case, with pallet base, metal</xsl:when>
			<xsl:when test="$PackagingType='EI'">Case, isothermic</xsl:when>
			<xsl:when test="$PackagingType='EN'">Envelope</xsl:when>
			<xsl:when test="$PackagingType='FB'">Flexibag</xsl:when>
			<xsl:when test="$PackagingType='FC'">Crate, fruit</xsl:when>
			<xsl:when test="$PackagingType='FD'">Crate, framed</xsl:when>
			<xsl:when test="$PackagingType='FE'">Flexitank</xsl:when>
			<xsl:when test="$PackagingType='FI'">Firkin</xsl:when>
			<xsl:when test="$PackagingType='FL'">Flask</xsl:when>
			<xsl:when test="$PackagingType='FO'">Footlocker</xsl:when>
			<xsl:when test="$PackagingType='FP'">Filmpack</xsl:when>
			<xsl:when test="$PackagingType='FR'">Frame</xsl:when>
			<xsl:when test="$PackagingType='FT'">Foodtainer</xsl:when>
			<xsl:when test="$PackagingType='FW'">Cart, flatbed</xsl:when>
			<xsl:when test="$PackagingType='FX'">Bag, flexible container</xsl:when>
			<xsl:when test="$PackagingType='GB'">Bottle, gas</xsl:when>
			<xsl:when test="$PackagingType='GI'">Girder</xsl:when>
			<xsl:when test="$PackagingType='GL'">Container, gallon</xsl:when>
			<xsl:when test="$PackagingType='GR'">Receptacle, glass</xsl:when>
			<xsl:when test="$PackagingType='GU'">Tray, containing horizontally stacked flat items</xsl:when>
			<xsl:when test="$PackagingType='GY'">Bag, gunny</xsl:when>
			<xsl:when test="$PackagingType='GZ'">Girders, in bundle/bunch/truss</xsl:when>
			<xsl:when test="$PackagingType='HA'">Basket, with handle, plastic</xsl:when>
			<xsl:when test="$PackagingType='HB'">Basket, with handle, wooden</xsl:when>
			<xsl:when test="$PackagingType='HC'">Basket, with handle, cardboard</xsl:when>
			<xsl:when test="$PackagingType='HG'">Hogshead</xsl:when>
			<xsl:when test="$PackagingType='HN'">Hanger</xsl:when>
			<xsl:when test="$PackagingType='HR'">Hamper</xsl:when>
			<xsl:when test="$PackagingType='IA'">Package, display, wooden</xsl:when>
			<xsl:when test="$PackagingType='IB'">Package, display, cardboard</xsl:when>
			<xsl:when test="$PackagingType='IC'">Package, display, plastic</xsl:when>
			<xsl:when test="$PackagingType='ID'">Package, display, metal</xsl:when>
			<xsl:when test="$PackagingType='IE'">Package, show</xsl:when>
			<xsl:when test="$PackagingType='IF'">Package, flow</xsl:when>
			<xsl:when test="$PackagingType='IG'">Package, paper wrapped</xsl:when>
			<xsl:when test="$PackagingType='IH'">Drum, plastic</xsl:when>
			<xsl:when test="$PackagingType='IK'">Package, cardboard, with bottle grip-holes</xsl:when>
			<xsl:when test="$PackagingType='IL'">Tray, rigid, lidded stackable (CEN TS 14482:2002)</xsl:when>
			<xsl:when test="$PackagingType='IN'">Ingot</xsl:when>
			<xsl:when test="$PackagingType='IZ'">Ingots, in bundle/bunch/truss</xsl:when>
			<xsl:when test="$PackagingType='JB'">Bag, jumbo</xsl:when>
			<xsl:when test="$PackagingType='JC'">Jerrican, rectangular</xsl:when>
			<xsl:when test="$PackagingType='JG'">Jug</xsl:when>
			<xsl:when test="$PackagingType='JR'">Jar</xsl:when>
			<xsl:when test="$PackagingType='JT'">Jutebag</xsl:when>
			<xsl:when test="$PackagingType='JY'">Jerrican, cylindrical</xsl:when>
			<xsl:when test="$PackagingType='KG'">Keg</xsl:when>
			<xsl:when test="$PackagingType='KI'">Kit</xsl:when>
			<xsl:when test="$PackagingType='LE'">Luggage</xsl:when>
			<xsl:when test="$PackagingType='LG'">Log</xsl:when>
			<xsl:when test="$PackagingType='LT'">Lot</xsl:when>
			<xsl:when test="$PackagingType='LU'">Lug</xsl:when>
			<xsl:when test="$PackagingType='LV'">Liftvan</xsl:when>
			<xsl:when test="$PackagingType='LZ'">Logs, in bundle/bunch/truss</xsl:when>
			<xsl:when test="$PackagingType='MA'">Crate, metal</xsl:when>
			<xsl:when test="$PackagingType='MB'">Bag, multiply</xsl:when>
			<xsl:when test="$PackagingType='MC'">Crate, milk</xsl:when>
			<xsl:when test="$PackagingType='ME'">Container, metal</xsl:when>
			<xsl:when test="$PackagingType='MR'">Receptacle, metal</xsl:when>
			<xsl:when test="$PackagingType='MS'">Sack, multi-wall</xsl:when>
			<xsl:when test="$PackagingType='MT'">Mat</xsl:when>
			<xsl:when test="$PackagingType='MW'">Receptacle, plastic wrapped</xsl:when>
			<xsl:when test="$PackagingType='MX'">Matchbox</xsl:when>
			<xsl:when test="$PackagingType='NA'">Not available</xsl:when>
			<xsl:when test="$PackagingType='NE'">Unpacked or unpackaged</xsl:when>
			<xsl:when test="$PackagingType='NF'">Unpacked or unpackaged, single unit</xsl:when>
			<xsl:when test="$PackagingType='NG'">Unpacked or unpackaged, multiple units</xsl:when>
			<xsl:when test="$PackagingType='NS'">Nest</xsl:when>
			<xsl:when test="$PackagingType='NT'">Net</xsl:when>
			<xsl:when test="$PackagingType='NU'">Net, tube, plastic</xsl:when>
			<xsl:when test="$PackagingType='NV'">Net, tube, textile</xsl:when>
			<xsl:when test="$PackagingType='OA'">Pallet, CHEP 40 cm x 60 cm</xsl:when>
			<xsl:when test="$PackagingType='OB'">Pallet, CHEP 80 cm x 120 cm</xsl:when>
			<xsl:when test="$PackagingType='OC'">Pallet, CHEP 100 cm x 120 cm</xsl:when>
			<xsl:when test="$PackagingType='OD'">Pallet, AS 4068-1993</xsl:when>
			<xsl:when test="$PackagingType='OE'">Pallet, ISO T11</xsl:when>
			<xsl:when test="$PackagingType='OF'">Platform, unspecified weight or dimension</xsl:when>
			<xsl:when test="$PackagingType='OK'">Block</xsl:when>
			<xsl:when test="$PackagingType='OT'">Octabin</xsl:when>
			<xsl:when test="$PackagingType='OU'">Container, outer</xsl:when>
			<xsl:when test="$PackagingType='P2'">Pan</xsl:when>
			<xsl:when test="$PackagingType='PA'">Packet</xsl:when>
			<xsl:when test="$PackagingType='PB'">Pallet, box Combined open-ended box and pallet</xsl:when>
			<xsl:when test="$PackagingType='PC'">Parcel</xsl:when>
			<xsl:when test="$PackagingType='PD'">Pallet, modular, collars 80cms * 100cms</xsl:when>
			<xsl:when test="$PackagingType='PE'">Pallet, modular, collars 80cms * 120cms</xsl:when>
			<xsl:when test="$PackagingType='PF'">Pen</xsl:when>
			<xsl:when test="$PackagingType='PG'">Plate</xsl:when>
			<xsl:when test="$PackagingType='PH'">Pitcher</xsl:when>
			<xsl:when test="$PackagingType='PI'">Pipe</xsl:when>
			<xsl:when test="$PackagingType='PJ'">Punnet</xsl:when>
			<xsl:when test="$PackagingType='PK'">Package</xsl:when>
			<xsl:when test="$PackagingType='PL'">Pail</xsl:when>
			<xsl:when test="$PackagingType='PN'">Plank</xsl:when>
			<xsl:when test="$PackagingType='PO'">Pouch</xsl:when>
			<xsl:when test="$PackagingType='PP'">Piece</xsl:when>
			<xsl:when test="$PackagingType='PR'">Receptacle, plastic</xsl:when>
			<xsl:when test="$PackagingType='PT'">Pot</xsl:when>
			<xsl:when test="$PackagingType='PU'">Tray</xsl:when>
			<xsl:when test="$PackagingType='PV'">Pipes, in bundle/bunch/truss</xsl:when>
			<xsl:when test="$PackagingType='PX'">Pallet</xsl:when>
			<xsl:when test="$PackagingType='PY'">Plates, in bundle/bunch/truss</xsl:when>
			<xsl:when test="$PackagingType='PZ'">Planks, in bundle/bunch/truss</xsl:when>
			<xsl:when test="$PackagingType='QA'">Drum, steel, non-removable head</xsl:when>
			<xsl:when test="$PackagingType='QB'">Drum, steel, removable head</xsl:when>
			<xsl:when test="$PackagingType='QC'">Drum, aluminium, non-removable head</xsl:when>
			<xsl:when test="$PackagingType='QD'">Drum, aluminium, removable head</xsl:when>
			<xsl:when test="$PackagingType='QF'">Drum, plastic, non-removable head</xsl:when>
			<xsl:when test="$PackagingType='QG'">Drum, plastic, removable head</xsl:when>
			<xsl:when test="$PackagingType='QH'">Barrel, wooden, bung type</xsl:when>
			<xsl:when test="$PackagingType='QJ'">Barrel, wooden, removable head</xsl:when>
			<xsl:when test="$PackagingType='QK'">Jerrican, steel, non-removable head</xsl:when>
			<xsl:when test="$PackagingType='QL'">Jerrican, steel, removable head</xsl:when>
			<xsl:when test="$PackagingType='QM'">Jerrican, plastic, non-removable head</xsl:when>
			<xsl:when test="$PackagingType='QN'">Jerrican, plastic, removable head</xsl:when>
			<xsl:when test="$PackagingType='QP'">Box, wooden, natural wood, ordinary</xsl:when>
			<xsl:when test="$PackagingType='QQ'">Box, wooden, natural wood, with sift proof walls</xsl:when>
			<xsl:when test="$PackagingType='QR'">Box, plastic, expanded</xsl:when>
			<xsl:when test="$PackagingType='QS'">Box, plastic, solid</xsl:when>
			<xsl:when test="$PackagingType='RD'">Rod</xsl:when>
			<xsl:when test="$PackagingType='RG'">Ring</xsl:when>
			<xsl:when test="$PackagingType='RJ'">Rack, clothing hanger</xsl:when>
			<xsl:when test="$PackagingType='RK'">Rack</xsl:when>
			<xsl:when test="$PackagingType='RL'">Reel</xsl:when>
			<xsl:when test="$PackagingType='RO'">Roll</xsl:when>
			<xsl:when test="$PackagingType='RT'">Rednet</xsl:when>
			<xsl:when test="$PackagingType='RZ'">Rods, in bundle/bunch/truss</xsl:when>
			<xsl:when test="$PackagingType='SA'">Sack</xsl:when>
			<xsl:when test="$PackagingType='SB'">Slab</xsl:when>
			<xsl:when test="$PackagingType='SC'">Crate, shallow</xsl:when>
			<xsl:when test="$PackagingType='SD'">Spindle</xsl:when>
			<xsl:when test="$PackagingType='SE'">Sea-chest</xsl:when>
			<xsl:when test="$PackagingType='SH'">Sachet</xsl:when>
			<xsl:when test="$PackagingType='SI'">Skid</xsl:when>
			<xsl:when test="$PackagingType='SK'">Case, skeleton</xsl:when>
			<xsl:when test="$PackagingType='SL'">Slipsheet</xsl:when>
			<xsl:when test="$PackagingType='SM'">Sheetmetal</xsl:when>
			<xsl:when test="$PackagingType='SO'">Spool</xsl:when>
			<xsl:when test="$PackagingType='SP'">Sheet, plastic wrapping</xsl:when>
			<xsl:when test="$PackagingType='SS'">Case, steel</xsl:when>
			<xsl:when test="$PackagingType='ST'">Sheet</xsl:when>
			<xsl:when test="$PackagingType='SU'">Suitcase</xsl:when>
			<xsl:when test="$PackagingType='SV'">Envelope, steel</xsl:when>
			<xsl:when test="$PackagingType='SW'">Shrinkwrapped</xsl:when>
			<xsl:when test="$PackagingType='SX'">Set</xsl:when>
			<xsl:when test="$PackagingType='SY'">Sleeve</xsl:when>
			<xsl:when test="$PackagingType='SZ'">Sheets, in bundle/bunch/truss</xsl:when>
			<xsl:when test="$PackagingType='T1'">Tablet</xsl:when>
			<xsl:when test="$PackagingType='TB'">Tub</xsl:when>
			<xsl:when test="$PackagingType='TC'">Tea-chest</xsl:when>
			<xsl:when test="$PackagingType='TD'">Tube, collapsible</xsl:when>
			<xsl:when test="$PackagingType='TE'">Tyre</xsl:when>
			<xsl:when test="$PackagingType='TG'">Tank container, generic</xsl:when>
			<xsl:when test="$PackagingType='TI'">Tierce</xsl:when>
			<xsl:when test="$PackagingType='TK'">Tank, rectangular</xsl:when>
			<xsl:when test="$PackagingType='TL'">Tub, with lid</xsl:when>
			<xsl:when test="$PackagingType='TN'">Tin</xsl:when>
			<xsl:when test="$PackagingType='TO'">Tun</xsl:when>
			<xsl:when test="$PackagingType='TR'">Trunk</xsl:when>
			<xsl:when test="$PackagingType='TS'">Truss</xsl:when>
			<xsl:when test="$PackagingType='TT'">Bag, tote</xsl:when>
			<xsl:when test="$PackagingType='TU'">Tube</xsl:when>
			<xsl:when test="$PackagingType='TV'">Tube, with nozzle</xsl:when>
			<xsl:when test="$PackagingType='TW'">Pallet, triwall</xsl:when>
			<xsl:when test="$PackagingType='TY'">Tank, cylindrical</xsl:when>
			<xsl:when test="$PackagingType='TZ'">Tubes, in bundle/bunch/truss</xsl:when>
			<xsl:when test="$PackagingType='UC'">Uncaged</xsl:when>
			<xsl:when test="$PackagingType='UN'">Unit</xsl:when>
			<xsl:when test="$PackagingType='VA'">Vat</xsl:when>
			<xsl:when test="$PackagingType='VG'">Bulk, gas (at 1031 mbar and 15Â°C)</xsl:when>
			<xsl:when test="$PackagingType='VI'">Vial</xsl:when>
			<xsl:when test="$PackagingType='VK'">Vanpack</xsl:when>
			<xsl:when test="$PackagingType='VL'">Bulk, liquid</xsl:when>
			<xsl:when test="$PackagingType='VO'">Bulk, solid, large particles (Â“nodulesÂ”)</xsl:when>
			<xsl:when test="$PackagingType='VP'">Vacuum-packed</xsl:when>
			<xsl:when test="$PackagingType='VQ'">Bulk, liquefied gas (at abnormal temperature/pressure)</xsl:when>
			<xsl:when test="$PackagingType='VN'">Vehicle</xsl:when>
			<xsl:when test="$PackagingType='VR'">Bulk, solid, granular particles (Â“grainsÂ”)</xsl:when>
			<xsl:when test="$PackagingType='VS'">Bulk, scrap metal</xsl:when>
			<xsl:when test="$PackagingType='VY'">Bulk, solid, fine particles (Â“powdersÂ”)</xsl:when>
			<xsl:when test="$PackagingType='WA'">Intermediate bulk container</xsl:when>
			<xsl:when test="$PackagingType='WB'">Wickerbottle</xsl:when>
			<xsl:when test="$PackagingType='WC'">Intermediate bulk container, steel</xsl:when>
			<xsl:when test="$PackagingType='WD'">Intermediate bulk container, aluminium</xsl:when>
			<xsl:when test="$PackagingType='WF'">Intermediate bulk container, metal</xsl:when>
			<xsl:when test="$PackagingType='WG'">Intermediate bulk container, steel, pressurised > 10 kpa</xsl:when>
			<xsl:when test="$PackagingType='WH'">Intermediate bulk container, aluminium, pressurised > 10 kpa</xsl:when>
			<xsl:when test="$PackagingType='WJ'">Intermediate bulk container, metal, pressure 10 kpa</xsl:when>
			<xsl:when test="$PackagingType='WK'">Intermediate bulk container, steel, liquid</xsl:when>
			<xsl:when test="$PackagingType='WL'">Intermediate bulk container, aluminium, liquid</xsl:when>
			<xsl:when test="$PackagingType='WM'">Intermediate bulk container, metal, liquid</xsl:when>
			<xsl:when test="$PackagingType='WN'">Intermediate bulk container, woven plastic, without coat/liner</xsl:when>
			<xsl:when test="$PackagingType='WP'">Intermediate bulk container, woven plastic, coated</xsl:when>
			<xsl:when test="$PackagingType='WQ'">Intermediate bulk container, woven plastic, with liner</xsl:when>
			<xsl:when test="$PackagingType='WR'">Intermediate bulk container, woven plastic, coated and liner</xsl:when>
			<xsl:when test="$PackagingType='WS'">Intermediate bulk container, plastic film</xsl:when>
			<xsl:when test="$PackagingType='WT'">Intermediate bulk container, textile with out coat/liner</xsl:when>
			<xsl:when test="$PackagingType='WU'">Intermediate bulk container, natural wood, with inner liner</xsl:when>
			<xsl:when test="$PackagingType='WV'">Intermediate bulk container, textile, coated</xsl:when>
			<xsl:when test="$PackagingType='WW'">Intermediate bulk container, textile, with liner</xsl:when>
			<xsl:when test="$PackagingType='WX'">Intermediate bulk container, textile, coated and liner</xsl:when>
			<xsl:when test="$PackagingType='WY'">Intermediate bulk container, plywood, with inner liner</xsl:when>
			<xsl:when test="$PackagingType='WZ'">Intermediate bulk container, reconstituted wood, with inner liner</xsl:when>
			<xsl:when test="$PackagingType='XA'">Bag, woven plastic, without inner coat/liner</xsl:when>
			<xsl:when test="$PackagingType='XB'">Bag, woven plastic, sift proof</xsl:when>
			<xsl:when test="$PackagingType='XC'">Bag, woven plastic, water resistant</xsl:when>
			<xsl:when test="$PackagingType='XD'">Bag, plastics film</xsl:when>
			<xsl:when test="$PackagingType='XF'">Bag, textile, without inner coat/liner</xsl:when>
			<xsl:when test="$PackagingType='XG'">Bag, textile, sift proof</xsl:when>
			<xsl:when test="$PackagingType='XH'">Bag, textile, water resistant</xsl:when>
			<xsl:when test="$PackagingType='XJ'">Bag, paper, multi-wall</xsl:when>
			<xsl:when test="$PackagingType='XK'">Bag, paper, multi-wall, water resistant</xsl:when>
			<xsl:when test="$PackagingType='YA'">Composite packaging, plastic receptacle in steel drum</xsl:when>
			<xsl:when test="$PackagingType='YB'">Composite packaging, plastic receptacle in steel crate box</xsl:when>
			<xsl:when test="$PackagingType='YC'">Composite packaging, plastic receptacle in aluminium drum</xsl:when>
			<xsl:when test="$PackagingType='YD'">Composite packaging, plastic receptacle in aluminium crate</xsl:when>
			<xsl:when test="$PackagingType='YF'">Composite packaging, plastic receptacle in wooden box</xsl:when>
			<xsl:when test="$PackagingType='YG'">Composite packaging, plastic receptacle in plywood drum</xsl:when>
			<xsl:when test="$PackagingType='YH'">Composite packaging, plastic receptacle in plywood box</xsl:when>
			<xsl:when test="$PackagingType='YJ'">Composite packaging, plastic receptacle in fibre drum</xsl:when>
			<xsl:when test="$PackagingType='YK'">Composite packaging, plastic receptacle in fibreboard box</xsl:when>
			<xsl:when test="$PackagingType='YL'">Composite packaging, plastic receptacle in plastic drum</xsl:when>
			<xsl:when test="$PackagingType='YM'">Composite packaging, plastic receptacle in solid plastic box</xsl:when>
			<xsl:when test="$PackagingType='YN'">Composite packaging, glass receptacle in steel drum</xsl:when>
			<xsl:when test="$PackagingType='YP'">Composite packaging, glass receptacle in steel crate box</xsl:when>
			<xsl:when test="$PackagingType='YQ'">Composite packaging, glass receptacle in aluminium drum</xsl:when>
			<xsl:when test="$PackagingType='YR'">Composite packaging, glass receptacle in aluminium crate</xsl:when>
			<xsl:when test="$PackagingType='YS'">Composite packaging, glass receptacle in wooden box</xsl:when>
			<xsl:when test="$PackagingType='YT'">Composite packaging, glass receptacle in plywood drum</xsl:when>
			<xsl:when test="$PackagingType='YV'">Composite packaging, glass receptacle in wickerwork hamper</xsl:when>
			<xsl:when test="$PackagingType='YW'">Composite packaging, glass receptacle in fibre drum</xsl:when>
			<xsl:when test="$PackagingType='YX'">Composite packaging, glass receptacle in fibreboard box</xsl:when>
			<xsl:when test="$PackagingType='YY'">Composite packaging, glass receptacle in expandable plastic pack</xsl:when>
			<xsl:when test="$PackagingType='YZ'">Composite packaging, glass receptacle in solid plastic pack</xsl:when>
			<xsl:when test="$PackagingType='ZA'">Intermediate bulk container, paper, multi-wall</xsl:when>
			<xsl:when test="$PackagingType='ZB'">Bag, large</xsl:when>
			<xsl:when test="$PackagingType='ZC'">Intermediate bulk container, paper, multi-wall, water resistant</xsl:when>
			<xsl:when test="$PackagingType='ZD'">Intermediate bulk container, rigid plastic, with structural equipment, solids</xsl:when>
			<xsl:when test="$PackagingType='ZF'">Intermediate bulk container, rigid plastic, freestanding, solids</xsl:when>
			<xsl:when test="$PackagingType='ZG'">Intermediate bulk container, rigid plastic, with structural equipment, pressurised</xsl:when>
			<xsl:when test="$PackagingType='ZH'">Intermediate bulk container, rigid plastic, freestanding, pressurised</xsl:when>
			<xsl:when test="$PackagingType='ZJ'">Intermediate bulk container, rigid plastic, with structural equipment, liquids</xsl:when>
			<xsl:when test="$PackagingType='ZK'">Intermediate bulk container, rigid plastic, freestanding, liquids</xsl:when>
			<xsl:when test="$PackagingType='ZL'">Intermediate bulk container, composite, rigid plastic, solids</xsl:when>
			<xsl:when test="$PackagingType='ZM'">Intermediate bulk container, composite, flexible plastic, solids</xsl:when>
			<xsl:when test="$PackagingType='ZN'">Intermediate bulk container, composite, rigid plastic, pressurised</xsl:when>
			<xsl:when test="$PackagingType='ZP'">Intermediate bulk container, composite, flexible plastic, pressurised</xsl:when>
			<xsl:when test="$PackagingType='ZQ'">Intermediate bulk container, composite, rigid plastic, liquids</xsl:when>
			<xsl:when test="$PackagingType='ZR'">Intermediate bulk container, composite, flexible plastic, liquids</xsl:when>
			<xsl:when test="$PackagingType='ZS'">Intermediate bulk container, composite</xsl:when>
			<xsl:when test="$PackagingType='ZT'">Intermediate bulk container, fibreboard</xsl:when>
			<xsl:when test="$PackagingType='ZU'">Intermediate bulk container, flexible</xsl:when>
			<xsl:when test="$PackagingType='ZV'">Intermediate bulk container, metal, other than steel</xsl:when>
			<xsl:when test="$PackagingType='ZW'">Intermediate bulk container, natural wood</xsl:when>
			<xsl:when test="$PackagingType='ZX'">Intermediate bulk container, plywood</xsl:when>
			<xsl:when test="$PackagingType='ZY'">Intermediate bulk container, reconstituted wood</xsl:when>
			<xsl:otherwise><xsl:value-of select="$PackagingType"/></xsl:otherwise>
		</xsl:choose>		
	</xsl:template>
	<xsl:template name="Country">
		<xsl:param name="CountryType" />
		<xsl:choose>
			<xsl:when test="$CountryType='AF'">Afganistan</xsl:when>
			<xsl:when test="$CountryType='DE'">Almanya</xsl:when>
			<xsl:when test="$CountryType='AD'">Andorra</xsl:when>
			<xsl:when test="$CountryType='AO'">Angola</xsl:when>
			<xsl:when test="$CountryType='AG'">Antigua ve Barbuda</xsl:when>
			<xsl:when test="$CountryType='AR'">Arjantin</xsl:when>
			<xsl:when test="$CountryType='AL'">Arnavutluk</xsl:when>
			<xsl:when test="$CountryType='AW'">Aruba</xsl:when>
			<xsl:when test="$CountryType='AU'">Avustralya</xsl:when>
			<xsl:when test="$CountryType='AT'">Avusturya</xsl:when>
			<xsl:when test="$CountryType='AZ'">Azerbaycan</xsl:when>
			<xsl:when test="$CountryType='BS'">Bahamalar</xsl:when>
			<xsl:when test="$CountryType='BH'">Bahreyn</xsl:when>
			<xsl:when test="$CountryType='BD'">Bangladeş</xsl:when>
			<xsl:when test="$CountryType='BB'">Barbados</xsl:when>
			<xsl:when test="$CountryType='EH'">Batı Sahra (MA)</xsl:when>
			<xsl:when test="$CountryType='BE'">Belçika</xsl:when>
			<xsl:when test="$CountryType='BZ'">Belize</xsl:when>
			<xsl:when test="$CountryType='BJ'">Benin</xsl:when>
			<xsl:when test="$CountryType='BM'">Bermuda</xsl:when>
			<xsl:when test="$CountryType='BY'">Beyaz Rusya</xsl:when>
			<xsl:when test="$CountryType='BT'">Bhutan</xsl:when>
			<xsl:when test="$CountryType='AE'">Birleşik Arap Emirlikleri</xsl:when>
			<xsl:when test="$CountryType='US'">Birleşik Devletler</xsl:when>
			<xsl:when test="$CountryType='GB'">Birleşik Krallık</xsl:when>
			<xsl:when test="$CountryType='BO'">Bolivya</xsl:when>
			<xsl:when test="$CountryType='BA'">Bosna-Hersek</xsl:when>
			<xsl:when test="$CountryType='BW'">Botsvana</xsl:when>
			<xsl:when test="$CountryType='BR'">Brezilya</xsl:when>
			<xsl:when test="$CountryType='BN'">Bruney</xsl:when>
			<xsl:when test="$CountryType='BG'">Bulgaristan</xsl:when>
			<xsl:when test="$CountryType='BF'">Burkina Faso</xsl:when>
			<xsl:when test="$CountryType='BI'">Burundi</xsl:when>
			<xsl:when test="$CountryType='TD'">Çad</xsl:when>
			<xsl:when test="$CountryType='KY'">Cayman Adaları</xsl:when>
			<xsl:when test="$CountryType='GI'">Cebelitarık (GB)</xsl:when>
			<xsl:when test="$CountryType='CZ'">Çek Cumhuriyeti</xsl:when>
			<xsl:when test="$CountryType='DZ'">Cezayir</xsl:when>
			<xsl:when test="$CountryType='DJ'">Cibuti</xsl:when>
			<xsl:when test="$CountryType='CN'">Çin</xsl:when>
			<xsl:when test="$CountryType='DK'">Danimarka</xsl:when>
			<xsl:when test="$CountryType='CD'">Demokratik Kongo Cumhuriyeti</xsl:when>
			<xsl:when test="$CountryType='TL'">Doğu Timor</xsl:when>
			<xsl:when test="$CountryType='DO'">Dominik Cumhuriyeti</xsl:when>
			<xsl:when test="$CountryType='DM'">Dominika</xsl:when>
			<xsl:when test="$CountryType='EC'">Ekvador</xsl:when>
			<xsl:when test="$CountryType='GQ'">Ekvator Ginesi</xsl:when>
			<xsl:when test="$CountryType='SV'">El Salvador</xsl:when>
			<xsl:when test="$CountryType='ID'">Endonezya</xsl:when>
			<xsl:when test="$CountryType='ER'">Eritre</xsl:when>
			<xsl:when test="$CountryType='AM'">Ermenistan</xsl:when>
			<xsl:when test="$CountryType='MF'">Ermiş Martin (FR)</xsl:when>
			<xsl:when test="$CountryType='EE'">Estonya</xsl:when>
			<xsl:when test="$CountryType='ET'">Etiyopya</xsl:when>
			<xsl:when test="$CountryType='FK'">Falkland Adaları</xsl:when>
			<xsl:when test="$CountryType='FO'">Faroe Adaları (DK)</xsl:when>
			<xsl:when test="$CountryType='MA'">Fas</xsl:when>
			<xsl:when test="$CountryType='FJ'">Fiji</xsl:when>
			<xsl:when test="$CountryType='CI'">Fildişi Sahili</xsl:when>
			<xsl:when test="$CountryType='PH'">Filipinler</xsl:when>
			<xsl:when test="$CountryType='FI'">Finlandiya</xsl:when>
			<xsl:when test="$CountryType='FR'">Fransa</xsl:when>
			<xsl:when test="$CountryType='GF'">Fransız Guyanası (FR)</xsl:when>
			<xsl:when test="$CountryType='PF'">Fransız Polinezyası (FR)</xsl:when>
			<xsl:when test="$CountryType='GA'">Gabon</xsl:when>
			<xsl:when test="$CountryType='GM'">Gambiya</xsl:when>
			<xsl:when test="$CountryType='GH'">Gana</xsl:when>
			<xsl:when test="$CountryType='GN'">Gine</xsl:when>
			<xsl:when test="$CountryType='GW'">Gine Bissau</xsl:when>
			<xsl:when test="$CountryType='GD'">Grenada</xsl:when>
			<xsl:when test="$CountryType='GL'">Grönland (DK)</xsl:when>
			<xsl:when test="$CountryType='GP'">Guadeloupe (FR)</xsl:when>
			<xsl:when test="$CountryType='GT'">Guatemala</xsl:when>
			<xsl:when test="$CountryType='GG'">Guernsey (GB)</xsl:when>
			<xsl:when test="$CountryType='ZA'">Güney Afrika</xsl:when>
			<xsl:when test="$CountryType='KR'">Güney Kore</xsl:when>
			<xsl:when test="$CountryType='GE'">Gürcistan</xsl:when>
			<xsl:when test="$CountryType='GY'">Guyana</xsl:when>
			<xsl:when test="$CountryType='HT'">Haiti</xsl:when>
			<xsl:when test="$CountryType='IN'">Hindistan</xsl:when>
			<xsl:when test="$CountryType='HR'">Hırvatistan</xsl:when>
			<xsl:when test="$CountryType='NL'">Hollanda</xsl:when>
			<xsl:when test="$CountryType='HN'">Honduras</xsl:when>
			<xsl:when test="$CountryType='HK'">Hong Kong (CN)</xsl:when>
			<xsl:when test="$CountryType='VG'">İngiliz Virjin Adaları</xsl:when>
			<xsl:when test="$CountryType='IQ'">Irak</xsl:when>
			<xsl:when test="$CountryType='IR'">İran</xsl:when>
			<xsl:when test="$CountryType='IE'">İrlanda</xsl:when>
			<xsl:when test="$CountryType='ES'">İspanya</xsl:when>
			<xsl:when test="$CountryType='IL'">İsrail</xsl:when>
			<xsl:when test="$CountryType='SE'">İsveç</xsl:when>
			<xsl:when test="$CountryType='CH'">İsviçre</xsl:when>
			<xsl:when test="$CountryType='IT'">İtalya</xsl:when>
			<xsl:when test="$CountryType='IS'">İzlanda</xsl:when>
			<xsl:when test="$CountryType='JM'">Jamaika</xsl:when>
			<xsl:when test="$CountryType='JP'">Japonya</xsl:when>
			<xsl:when test="$CountryType='JE'">Jersey (GB)</xsl:when>
			<xsl:when test="$CountryType='KH'">Kamboçya</xsl:when>
			<xsl:when test="$CountryType='CM'">Kamerun</xsl:when>
			<xsl:when test="$CountryType='CA'">Kanada</xsl:when>
			<xsl:when test="$CountryType='ME'">Karadağ</xsl:when>
			<xsl:when test="$CountryType='QA'">Katar</xsl:when>
			<xsl:when test="$CountryType='KZ'">Kazakistan</xsl:when>
			<xsl:when test="$CountryType='KE'">Kenya</xsl:when>
			<xsl:when test="$CountryType='CY'">Kıbrıs</xsl:when>
			<xsl:when test="$CountryType='KG'">Kırgızistan</xsl:when>
			<xsl:when test="$CountryType='KI'">Kiribati</xsl:when>
			<xsl:when test="$CountryType='CO'">Kolombiya</xsl:when>
			<xsl:when test="$CountryType='KM'">Komorlar</xsl:when>
			<xsl:when test="$CountryType='CG'">Kongo Cumhuriyeti</xsl:when>
			<xsl:when test="$CountryType='KV'">Kosova (RS)</xsl:when>
			<xsl:when test="$CountryType='CR'">Kosta Rika</xsl:when>
			<xsl:when test="$CountryType='CU'">Küba</xsl:when>
			<xsl:when test="$CountryType='KW'">Kuveyt</xsl:when>
			<xsl:when test="$CountryType='KP'">Kuzey Kore</xsl:when>
			<xsl:when test="$CountryType='LA'">Laos</xsl:when>
			<xsl:when test="$CountryType='LS'">Lesoto</xsl:when>
			<xsl:when test="$CountryType='LV'">Letonya</xsl:when>
			<xsl:when test="$CountryType='LR'">Liberya</xsl:when>
			<xsl:when test="$CountryType='LY'">Libya</xsl:when>
			<xsl:when test="$CountryType='LI'">Lihtenştayn</xsl:when>
			<xsl:when test="$CountryType='LT'">Litvanya</xsl:when>
			<xsl:when test="$CountryType='LB'">Lübnan</xsl:when>
			<xsl:when test="$CountryType='LU'">Lüksemburg</xsl:when>
			<xsl:when test="$CountryType='HU'">Macaristan</xsl:when>
			<xsl:when test="$CountryType='MG'">Madagaskar</xsl:when>
			<xsl:when test="$CountryType='MO'">Makao (CN)</xsl:when>
			<xsl:when test="$CountryType='MK'">Makedonya</xsl:when>
			<xsl:when test="$CountryType='MW'">Malavi</xsl:when>
			<xsl:when test="$CountryType='MV'">Maldivler</xsl:when>
			<xsl:when test="$CountryType='MY'">Malezya</xsl:when>
			<xsl:when test="$CountryType='ML'">Mali</xsl:when>
			<xsl:when test="$CountryType='MT'">Malta</xsl:when>
			<xsl:when test="$CountryType='IM'">Man Adası (GB)</xsl:when>
			<xsl:when test="$CountryType='MH'">Marshall Adaları</xsl:when>
			<xsl:when test="$CountryType='MQ'">Martinique (FR)</xsl:when>
			<xsl:when test="$CountryType='MU'">Mauritius</xsl:when>
			<xsl:when test="$CountryType='YT'">Mayotte (FR)</xsl:when>
			<xsl:when test="$CountryType='MX'">Meksika</xsl:when>
			<xsl:when test="$CountryType='FM'">Mikronezya</xsl:when>
			<xsl:when test="$CountryType='EG'">Mısır</xsl:when>
			<xsl:when test="$CountryType='MN'">Moğolistan</xsl:when>
			<xsl:when test="$CountryType='MD'">Moldova</xsl:when>
			<xsl:when test="$CountryType='MC'">Monako</xsl:when>
			<xsl:when test="$CountryType='MR'">Moritanya</xsl:when>
			<xsl:when test="$CountryType='MZ'">Mozambik</xsl:when>
			<xsl:when test="$CountryType='MM'">Myanmar</xsl:when>
			<xsl:when test="$CountryType='NA'">Namibya</xsl:when>
			<xsl:when test="$CountryType='NR'">Nauru</xsl:when>
			<xsl:when test="$CountryType='NP'">Nepal</xsl:when>
			<xsl:when test="$CountryType='NE'">Nijer</xsl:when>
			<xsl:when test="$CountryType='NG'">Nijerya</xsl:when>
			<xsl:when test="$CountryType='NI'">Nikaragua</xsl:when>
			<xsl:when test="$CountryType='NO'">Norveç</xsl:when>
			<xsl:when test="$CountryType='CF'">Orta Afrika Cumhuriyeti</xsl:when>
			<xsl:when test="$CountryType='UZ'">Özbekistan</xsl:when>
			<xsl:when test="$CountryType='PK'">Pakistan</xsl:when>
			<xsl:when test="$CountryType='PW'">Palau</xsl:when>
			<xsl:when test="$CountryType='PA'">Panama</xsl:when>
			<xsl:when test="$CountryType='PG'">Papua Yeni Gine</xsl:when>
			<xsl:when test="$CountryType='PY'">Paraguay</xsl:when>
			<xsl:when test="$CountryType='PE'">Peru</xsl:when>
			<xsl:when test="$CountryType='PL'">Polonya</xsl:when>
			<xsl:when test="$CountryType='PT'">Portekiz</xsl:when>
			<xsl:when test="$CountryType='PR'">Porto Riko (US)</xsl:when>
			<xsl:when test="$CountryType='RE'">Réunion (FR)</xsl:when>
			<xsl:when test="$CountryType='RO'">Romanya</xsl:when>
			<xsl:when test="$CountryType='RW'">Ruanda</xsl:when>
			<xsl:when test="$CountryType='RU'">Rusya</xsl:when>
			<xsl:when test="$CountryType='BL'">Saint Barthélemy (FR)</xsl:when>
			<xsl:when test="$CountryType='KN'">Saint Kitts ve Nevis</xsl:when>
			<xsl:when test="$CountryType='LC'">Saint Lucia</xsl:when>
			<xsl:when test="$CountryType='PM'">Saint Pierre ve Miquelon (FR)</xsl:when>
			<xsl:when test="$CountryType='VC'">Saint Vincent ve Grenadinler</xsl:when>
			<xsl:when test="$CountryType='WS'">Samoa</xsl:when>
			<xsl:when test="$CountryType='SM'">San Marino</xsl:when>
			<xsl:when test="$CountryType='ST'">São Tomé ve Príncipe</xsl:when>
			<xsl:when test="$CountryType='SN'">Senegal</xsl:when>
			<xsl:when test="$CountryType='SC'">Seyşeller</xsl:when>
			<xsl:when test="$CountryType='SL'">Sierra Leone</xsl:when>
			<xsl:when test="$CountryType='CL'">Şili</xsl:when>
			<xsl:when test="$CountryType='SG'">Singapur</xsl:when>
			<xsl:when test="$CountryType='RS'">Sırbistan</xsl:when>
			<xsl:when test="$CountryType='SK'">Slovakya Cumhuriyeti</xsl:when>
			<xsl:when test="$CountryType='SI'">Slovenya</xsl:when>
			<xsl:when test="$CountryType='SB'">Solomon Adaları</xsl:when>
			<xsl:when test="$CountryType='SO'">Somali</xsl:when>
			<xsl:when test="$CountryType='SS'">South Sudan</xsl:when>
			<xsl:when test="$CountryType='SJ'">Spitsbergen (NO)</xsl:when>
			<xsl:when test="$CountryType='LK'">Sri Lanka</xsl:when>
			<xsl:when test="$CountryType='SD'">Sudan</xsl:when>
			<xsl:when test="$CountryType='SR'">Surinam</xsl:when>
			<xsl:when test="$CountryType='SY'">Suriye</xsl:when>
			<xsl:when test="$CountryType='SA'">Suudi Arabistan</xsl:when>
			<xsl:when test="$CountryType='SZ'">Svaziland</xsl:when>
			<xsl:when test="$CountryType='TJ'">Tacikistan</xsl:when>
			<xsl:when test="$CountryType='TZ'">Tanzanya</xsl:when>
			<xsl:when test="$CountryType='TH'">Tayland</xsl:when>
			<xsl:when test="$CountryType='TW'">Tayvan</xsl:when>
			<xsl:when test="$CountryType='TG'">Togo</xsl:when>
			<xsl:when test="$CountryType='TO'">Tonga</xsl:when>
			<xsl:when test="$CountryType='TT'">Trinidad ve Tobago</xsl:when>
			<xsl:when test="$CountryType='TN'">Tunus</xsl:when>
			<xsl:when test="$CountryType='TR'">Türkiye</xsl:when>
			<xsl:when test="$CountryType='TM'">Türkmenistan</xsl:when>
			<xsl:when test="$CountryType='TC'">Turks ve Caicos</xsl:when>
			<xsl:when test="$CountryType='TV'">Tuvalu</xsl:when>
			<xsl:when test="$CountryType='UG'">Uganda</xsl:when>
			<xsl:when test="$CountryType='UA'">Ukrayna</xsl:when>
			<xsl:when test="$CountryType='OM'">Umman</xsl:when>
			<xsl:when test="$CountryType='JO'">Ürdün</xsl:when>
			<xsl:when test="$CountryType='UY'">Uruguay</xsl:when>
			<xsl:when test="$CountryType='VU'">Vanuatu</xsl:when>
			<xsl:when test="$CountryType='VA'">Vatikan</xsl:when>
			<xsl:when test="$CountryType='VE'">Venezuela</xsl:when>
			<xsl:when test="$CountryType='VN'">Vietnam</xsl:when>
			<xsl:when test="$CountryType='WF'">Wallis ve Futuna (FR)</xsl:when>
			<xsl:when test="$CountryType='YE'">Yemen</xsl:when>
			<xsl:when test="$CountryType='NC'">Yeni Kaledonya (FR)</xsl:when>
			<xsl:when test="$CountryType='NZ'">Yeni Zelanda</xsl:when>
			<xsl:when test="$CountryType='CV'">Yeşil Burun Adaları</xsl:when>
			<xsl:when test="$CountryType='GR'">Yunanistan</xsl:when>
			<xsl:when test="$CountryType='ZM'">Zambiya</xsl:when>
			<xsl:when test="$CountryType='ZW'">Zimbabve</xsl:when>
			<xsl:otherwise><xsl:value-of select="$CountryType"/></xsl:otherwise>
		</xsl:choose>
		
	</xsl:template>
	<xsl:template name='Party_Other'>
		<xsl:param name="PartyType" />
		<xsl:for-each select="cbc:WebsiteURI">
			<tr align="left">
				<td>
					<xsl:text>Web Sitesi: </xsl:text>
					<xsl:value-of select="."/>
				</td>
			</tr>
		</xsl:for-each>
		<xsl:for-each select="cac:Contact/cbc:ElectronicMail">
			<tr align="left">
				<td>
					<xsl:text>E-Posta: </xsl:text>
					<xsl:value-of select="."/>
				</td>
			</tr>
		</xsl:for-each>	
		<xsl:for-each select="cac:Contact">
			<xsl:if test="cbc:Telephone or cbc:Telefax">
				<tr align="left">
					<td style="width:469px; " align="left">
						<xsl:for-each select="cbc:Telephone">
							<xsl:text>Tel: </xsl:text>
							<xsl:apply-templates/>
						</xsl:for-each>
						<xsl:for-each select="cbc:Telefax">
							<xsl:text> Fax: </xsl:text>
							<xsl:apply-templates/>
						</xsl:for-each>
						<xsl:text>&#160;</xsl:text>
					</td>
				</tr>
			</xsl:if>
		</xsl:for-each>
		<xsl:if test="$PartyType!='TAXFREE' and $PartyType!='EXPORT'">
			<xsl:for-each select="cac:PartyTaxScheme/cac:TaxScheme/cbc:Name">
				<tr align="left">
					<td>
						<xsl:text>Vergi Dairesi: </xsl:text>
						<xsl:apply-templates/>
					</td>
				</tr>
			</xsl:for-each>
			<xsl:for-each select="cac:PartyIdentification">
			<tr align="left">
				<td>
					<xsl:value-of select="cbc:ID/@schemeID"/>
					<xsl:text>: </xsl:text>
					<xsl:value-of select="cbc:ID"/>
				</td>
			</tr>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>
	<xsl:template name="Curr_Type">
		<xsl:value-of select="format-number(., '###.##0,00', 'european')"/>		
		<xsl:if	test="@currencyID">
			<xsl:text> </xsl:text>
			<xsl:choose>
				<xsl:when test="@currencyID = 'TRL' or @currencyID = 'TRY'">
					<xsl:text>TL</xsl:text>					
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="@currencyID"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:if>		
	</xsl:template>

 <xsl:template name="geneliskonto">
  <tr id="lineTableTr">
   <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;">
    <span>
     <xsl:text>&#160;</xsl:text>
    </span>
   </td>
   <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
    <span>
     <xsl:text>&#160;</xsl:text>
    </span>
   </td>
   <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="left">
    <span>
     <table border="0">
      <tbody>
       <xsl:for-each select="//n1:Invoice/cac:AllowanceCharge">
        <tr>
         <td>
          <xsl:text>&#160;&#160;&#160;&#160;&#160;</xsl:text>
          <xsl:text>İndirim</xsl:text>
         </td>
        </tr>
       </xsl:for-each>
      </tbody>
     </table>
    </span>
   </td>
   <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
    <span>
     <xsl:text>&#160;</xsl:text>
    </span>
   </td>
   <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
    <span>
     <xsl:text>&#160;</xsl:text>
    </span>
   </td>
   <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
    <span>
     <xsl:text>&#160;</xsl:text>
    </span>
   </td>
   <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
    <span>
     <table border="0">
      <tbody>
       <xsl:for-each select="//n1:Invoice/cac:AllowanceCharge">
        <tr>
         <td>
          <xsl:choose>
           <xsl:when test="normalize-space(cbc:AllowanceChargeReason)">
            <xsl:value-of select="cbc:AllowanceChargeReason"/>
           </xsl:when>
           <xsl:otherwise>
            <xsl:if test="normalize-space(cbc:MultiplierFactorNumeric)">
             <xsl:text>%</xsl:text>
             <xsl:value-of
              select="format-number(cbc:MultiplierFactorNumeric * 100, '###.##0,00', 'european')"/>
            </xsl:if>
           </xsl:otherwise>
          </xsl:choose>
         </td>
        </tr>
       </xsl:for-each>
      </tbody>
     </table>
    </span>
   </td>
   <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
    <span>
     <table border="0">
      <tbody>
       <xsl:for-each select="//n1:Invoice/cac:AllowanceCharge">
        <tr>
         <td>
          <xsl:value-of select="format-number(cbc:Amount, '###.##0,00', 'european')"/>
          <xsl:if test="cbc:Amount/@currencyID">
           <xsl:text> </xsl:text>
           <xsl:if test="cbc:Amount/@currencyID = 'TRY'">
            <xsl:text>TL</xsl:text>
           </xsl:if>
           <xsl:if test="cbc:Amount/@currencyID != 'TRY'">
            <xsl:value-of select="cbc:Amount/@currencyID"/>
           </xsl:if>
          </xsl:if>
         </td>
        </tr>
       </xsl:for-each>
      </tbody>
     </table>
    </span>
   </td>
   <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
    <span>
     <xsl:text>&#160;</xsl:text>
    </span>
   </td>
   <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
    <span>
     <xsl:text>&#160;</xsl:text>
    </span>
   </td>
   <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
    <span>
     <xsl:text>&#160;</xsl:text>
    </span>
   </td>
   <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
    <span>
     <xsl:text>&#160;</xsl:text>
    </span>
   </td>
   <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
    <span>
     <xsl:text>&#160;</xsl:text>
    </span>
   </td>
  </tr>
 </xsl:template>


</xsl:stylesheet>

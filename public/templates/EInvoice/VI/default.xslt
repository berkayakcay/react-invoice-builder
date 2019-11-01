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
	exclude-result-prefixes="cac cbc ccts clm54217 clm5639 clm66411 clmIANAMIMEMediaType fn link n1 qdt udt xbrldi xbrli xdt xlink xs xsd xsi">
	<xsl:decimal-format name="european" decimal-separator="," grouping-separator="." NaN=""/>
	<xsl:output version="4.0" method="html" indent="no" encoding="UTF-8"
		doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN"
		doctype-system="http://www.w3.org/TR/html4/loose.dtd"/>
	<xsl:param name="SV_OutputFormat" select="'HTML'"/>
	<xsl:variable name="XML" select="/"/>
	<xsl:template match="/">

		<html>
			<head>
				<style type="text/css">
					body{
					    background-color: #FFFFFF;
					    font-family: 'Tahoma', "Times New Roman", Times, serif;
					    font-size: 11px;
					    color: #000;
					}
					
					h1,
					h2{
					    padding-bottom: 3px;
					    padding-top: 3px;
					    margin-bottom: 5px;
					    text-transform: uppercase;
					    font-family: Arial, Helvetica, sans-serif;
					}
					
					h1{
					    font-size: 1.4em;
					    text-transform: none;
					}
					
					h2{
					    font-size: 1em;
					    color: brown;
					}
					
					h3{
					    font-size: 1em;
					    color: #000;
					    text-align: justify;
					    margin: 0;
					    padding: 0;
					}
					
					h4{
					    font-size: 1.1em;
					    font-style: bold;
					    font-family: Arial, Helvetica, sans-serif;
					    color: #000;
					    margin: 0;
					    padding: 0;
					}
					
					hr{
					    border: 0;
					    color: #9E9E9E;
					    background-color: #9E9E9E;
					    height: 1px;
					    width: 100%;
					    text-align: left;
					}
					
					p,
					ul,
					ol{
					    margin-top: 1.5em;
					}
					
					ul,
					ol{
					    margin-left: 3em;
					}
					
					blockquote{
					    margin-left: 3em;
					    margin-right: 3em;
					    font-style: italic;
					}
					
					a{
					    text-decoration: none;
					    color: #70A300;
					}
					
					a:hover{
					    border: none;
					    color: #70A300;
					}
					
					table{
					    border-spacing: 0px;
					}
					
					td{
					    /*border-color:gray;*/
					}
					
					.borderRight{
					    border-right: 1px solid gray;
					}
					
					#despatchTable{
					    border-collapse: collapse;
					    font-size: 11px;
					    float: right;
					    /*border-color:gray;*/
					    border: 2px solid black;
					}
					
					#ettnTable{
					    border-collapse: collapse;
					    font-size: 11px;
					    /*border-color:gray;*/
					}
					
					#customerPartyTable{
					    border-width: 0px;
					    border-spacing: ;
					    border-style: inset;
					    border-collapse: separate;
					    background-color: 
					    }
					
					#customerIDTable{
					    border-width: 2px;
					    border-spacing: ;
					    border-style: inset;
					    border-collapse: collapse;
					    background-color: 
					    }
					
					#customerIDTableTd{
					    border-width: 2px;
					    border-spacing: ;
					    border-style: inset;
					    border-collapse: collapse;
					    background-color: 
					    }
					
					#lineTable{
					    border-width: 2px;
					    border-spacing: ;
					    border-style: inset;
					    border-color: black;
					    border-collapse: collapse;
					}
					
					.lineTableTd{
					    border: 1px solid black;
					    padding: 1px;
					    border-style: inset;
					    background-color: #FFF;
					}
					
					#lineTableTr{
					    border-width: 1px;
					    padding: 0px;
					    border-style: inset;
					    border-color: black;
					    background-color: #FFF;
					    -moz-border-radius: 5px;
					}
					
					#lineTableDummyTd{
					    border-width: 1px;
					    border-color: white;
					    padding: 1px;
					    border-style: inset;
					    border-color: black;
					    background-color: #FFF;
					}
					
					.lineTableBudgetTd{
					    border-width: 2px;
					    border-spacing: 0px;
					    padding: 1px;
					    border-style: inset;
					    border-color: black;
					    background-color: #FFF;
					    -moz-border-radius: 5px;
					}
					
					.notesTable{
					    border: 2px solid black;
					}
					
					#notesTableTd{
					    border-width: 0px;
					    border-spacing: ;
					    border-style: inset;
					    border-color: black;
					    border-collapse: collapse;
					}
					
					.budgetContainerTable{
					    border-width: 0px;
					    border-spacing: 0px;
					    border-style: inset;
					    border-color: black;
					    border-collapse: collapse;
					    background-color: #FFF;
					}</style>

				<title>e-Fatura</title>
			</head>
			<body>
				<xsl:for-each select="$XML">
					<table style="border-color:blue;width:800px;" border="0" cellspacing="0"
						width="800" cellpadding="0">
						<tbody>
							<tr valign="top">
								<td width="40%" align="center">

									<!-- firma logo -->

									<img style="width:100px;height:100px;" align="middle"
										src=""/>


									<table align="center" border="0" width="100%">
										<tbody>

											<xsl:if
												test="normalize-space(//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PartyName/cbc:Name) != ''">
												<tr align="center" valign="top">
												<td>
												<br/>
												<strong>
												<xsl:value-of
												select="normalize-space(//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PartyName/cbc:Name)"
												/>
												</strong>
												<br/>
												</td>
												</tr>
											</xsl:if>

											<tr align="center" valign="top">
												<td>
												<xsl:value-of
												select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:StreetName"/>
												<xsl:text>&#160;</xsl:text>
												<xsl:value-of
												select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:BuildingNumber"/>
												<xsl:text>&#160;</xsl:text>
												<xsl:value-of
												select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:BuildingName"/>
												<xsl:text>&#160;</xsl:text>
												<xsl:value-of
												select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:PostalZone"/>
												<xsl:text>&#160;</xsl:text>
												<xsl:value-of
												select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:CitySubdivisionName"/>
												<xsl:text>&#160;/&#160;</xsl:text>
												<xsl:value-of
												select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:CityName"/>
												<br/>
												</td>
											</tr>

											<xsl:for-each select="//n1:Invoice/cbc:Note">
												<xsl:choose>
												<xsl:when test="substring(., 0, 5) = 'UPA:'">
												<tr align="center" valign="top">
												<td>
												<xsl:value-of
												select="normalize-space(substring(., 5))"/>
												</td>
												</tr>
												</xsl:when>
												</xsl:choose>
											</xsl:for-each>

											<xsl:if
												test="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telephone or //n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telefax">
												<tr align="center" valign="top">
												<td>
												<xsl:if
												test="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telephone != ''">
												<xsl:value-of
												select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telephone"/>
												<xsl:text>&#160;</xsl:text>
												</xsl:if>
												<xsl:if
												test="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telefax != ''">
												<xsl:value-of
												select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telefax"
												/>
												</xsl:if>
												</td>
												</tr>
											</xsl:if>

											<xsl:for-each
												select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:ElectronicMail">
												<tr align="center" valign="top">
												<td>

												<xsl:text>E-Posta: </xsl:text>

												<xsl:value-of select="."/>
												</td>
												</tr>
											</xsl:for-each>

											<xsl:for-each
												select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:Name">
												<tr align="center" valign="top">
												<td>

												<xsl:text>Vergi Dairesi: </xsl:text>

												<xsl:value-of select="."/>
												</td>
												</tr>
											</xsl:for-each>

											<xsl:for-each
												select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification">
												<tr align="center" valign="top">
												<td>
												<xsl:if
												test="normalize-space(./cbc:ID/@schemeID) = 'VKN'">
												<span>

												<xsl:text>Vergi Numaras&#305;: </xsl:text>

												<xsl:value-of select="."/>
												</span>
												</xsl:if>
												</td>
												</tr>
											</xsl:for-each>


											<xsl:for-each
												select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cbc:WebsiteURI">
												<tr align="center" valign="top">
												<td>

												<xsl:text>Web Sitesi: </xsl:text>

												<xsl:value-of select="."/>
												</td>
												</tr>
											</xsl:for-each>


											<tr align="center" valign="top">
												<td>

												<xsl:for-each select="//n1:Invoice/cbc:Note">

												<xsl:choose>
												<xsl:when test="substring(., 0, 8) = 'UPL:SI:'">
												<xsl:value-of select="substring(., 8)"/>
												<br/>
												</xsl:when>
												</xsl:choose>

												</xsl:for-each>
												</td>
											</tr>

										</tbody>
									</table>

								</td>
								<td width="20%"> </td>
								<td width="40%" align="center" valign="middle" rowspan="2">

									<!-- header - sağ üst köşe -->

									<table width="100%" id="despatchTable" border="1">
										<xsl:if test="//n1:Invoice/cbc:CustomizationID">
											<tr align="left">
												<td width="35%">
												<span style="font-weight:bold; ">
												<xsl:text>Özelleştirme No:</xsl:text>
												</span>
												</td>
												<td width="65%">
												<xsl:value-of
												select="//n1:Invoice/cbc:CustomizationID"/>
												</td>
											</tr>
										</xsl:if>
										<xsl:if test="//n1:Invoice/cbc:ProfileID">
											<tr align="left">
												<td>
												<span style="font-weight:bold; ">
												<xsl:text>Senaryo:</xsl:text>
												</span>
												</td>
												<td>
												<xsl:value-of select="//n1:Invoice/cbc:ProfileID"
												/>
												</td>
											</tr>
										</xsl:if>
										<xsl:if test="//n1:Invoice/cbc:ID">
											<tr align="left">
												<td>
												<span style="font-weight:bold; ">
												<xsl:text>e-Fatura No:</xsl:text>
												</span>
												</td>
												<td>
												<xsl:value-of select="//n1:Invoice/cbc:ID"/>
												</td>
											</tr>
										</xsl:if>
										<xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode">
											<tr align="left">
												<td>
												<span style="font-weight:bold; ">
												<xsl:text>Fatura Tipi:</xsl:text>
												</span>
												</td>
												<td>
												<xsl:value-of
												select="//n1:Invoice/cbc:InvoiceTypeCode"/>
												</td>
											</tr>
										</xsl:if>
										<xsl:if test="//n1:Invoice/cbc:IssueDate">
											<tr style="height:13px">
												<td align="left">
												<span style="font-weight:bold; ">
												<xsl:text>e-Fatura Tarihi:</xsl:text>
												</span>
												</td>
												<td align="left">
												<xsl:value-of
												select="substring(//n1:Invoice/cbc:IssueDate, 9, 2)"
												/>.<xsl:value-of
												select="substring(//n1:Invoice/cbc:IssueDate, 6, 2)"
												/>.<xsl:value-of
												select="substring(//n1:Invoice/cbc:IssueDate, 1, 4)"
												/>
												</td>
											</tr>
										</xsl:if>
										<xsl:if test="//n1:Invoice/cac:DespatchDocumentReference">
											<tr style="height:13px; ">
												<td align="left">
												<span style="font-weight:bold; ">
												<xsl:text>İrsaliye No:</xsl:text>
												</span>
												<span>
												<xsl:text>&#160;</xsl:text>
												</span>
												</td>
												<td align="left">
												<xsl:value-of
												select="//n1:Invoice/cac:DespatchDocumentReference/cbc:ID"
												/>
												</td>
											</tr>
											<tr style="height:13px; ">
												<td align="left">
												<span style="font-weight:bold; ">
												<xsl:text>İrsaliye Tarihi:</xsl:text>
												</span>
												</td>
												<td align="left">
												<xsl:value-of
												select="substring(//n1:Invoice/cac:DespatchDocumentReference/cbc:IssueDate, 9, 2)"
												/>-<xsl:value-of
												select="substring(//n1:Invoice/cac:DespatchDocumentReference/cbc:IssueDate, 6, 2)"
												/>-<xsl:value-of
												select="substring(//n1:Invoice/cac:DespatchDocumentReference/cbc:IssueDate, 1, 4)"
												/>
												</td>
											</tr>
										</xsl:if>

										<xsl:if test="//n1:Invoice/cac:OrderReference/cbc:ID">
											<tr style="height:13px">
												<td align="left">
												<span style="font-weight:bold; ">
												<xsl:text>Sipariş No:</xsl:text>
												</span>
												</td>
												<td align="left">
												<xsl:value-of
												select="//n1:Invoice/cac:OrderReference/cbc:ID"/>
												</td>
											</tr>
										</xsl:if>
										<xsl:if test="//n1:Invoice/cac:OrderReference/cbc:IssueDate">
											<tr style="height:13px">
												<td align="left">
												<span style="font-weight:bold; ">
												<xsl:text>Sipariş Tarihi:</xsl:text>
												</span>
												</td>
												<td align="left">
												<xsl:value-of
												select="substring(//n1:Invoice/cac:OrderReference/cbc:IssueDate, 9, 2)"
												/>-<xsl:value-of
												select="substring(//n1:Invoice/cac:OrderReference/cbc:IssueDate, 6, 2)"
												/>-<xsl:value-of
												select="substring(//n1:Invoice/cac:OrderReference/cbc:IssueDate, 1, 4)"
												/>
												</td>
											</tr>
										</xsl:if>



										<xsl:for-each select="//n1:Invoice/cbc:Note">

											<xsl:choose>
												<xsl:when test="substring(., 0, 5) = 'UPR:'">
												<tr style="height:13px">
												<td align="left">
												<span style="font-weight:bold; ">
												<xsl:value-of
												select="normalize-space(substring-before(substring(., 5), ':'))"/>
												<xsl:text>:</xsl:text>
												</span>
												</td>
												<td align="left">
												<xsl:value-of
												select="normalize-space(substring-after(substring(., 5), ':'))"
												/>
												</td>
												</tr>
												</xsl:when>
											</xsl:choose>

										</xsl:for-each>


									</table>


								</td>
							</tr>
							<tr align="center" valign="top">

								<td width="40%" valign="middle" align="center">

									<!-- header - sol alt köşe (müşteri bilgileri) -->

									<hr/>

									<table id="customerPartyTable" align="center" border="0">
										<tbody>
											<tr>
												<td>

												<table align="center" border="0">
												<tbody>

												<tr align="center" valign="top">
												<td>
												<xsl:if
												test="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID/@schemeID = 'TCKN'">
												<xsl:for-each
												select="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:Person">
												<xsl:if test="cbc:FirstName != ''">
												<xsl:value-of select="cbc:FirstName"
												/>&#160;</xsl:if>
												<xsl:if test="cbc:FamilyName != ''">
												<xsl:value-of select="cbc:FamilyName"
												/>&#160;</xsl:if>
												</xsl:for-each>
												</xsl:if>

												<xsl:if
												test="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID/@schemeID != 'TCKN'">
												<xsl:value-of
												select="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyName/cbc:Name"
												/>
												</xsl:if>
												</td>
												</tr>

												<tr align="center" valign="top">
												<td>
												<xsl:if
												test="normalize-space(//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:StreetName) != ''">
												<span>
												<xsl:value-of
												select="normalize-space(//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:StreetName)"
												/>
												</span>
												</xsl:if>
												<xsl:if
												test="normalize-space(//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:BuildingName) != ''">
												<span>
												<xsl:text>&#160;</xsl:text>
												<xsl:value-of
												select="normalize-space(//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:BuildingName)"
												/>
												</span>
												</xsl:if>
												<xsl:if
												test="normalize-space(//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:BuildingNumber) != ''">
												<span>
												<xsl:text>&#160;</xsl:text>
												<xsl:text>NO:&#160;</xsl:text>
												<xsl:value-of
												select="normalize-space(//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:BuildingNumber)"
												/>
												</span>
												<br/>
												</xsl:if>
												</td>
												</tr>


												<tr align="center" valign="top">
												<td>
												<xsl:if
												test="normalize-space(//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:PostalZone) != ''">
												<xsl:text>&#160;</xsl:text>
												<span>
												<xsl:value-of
												select="normalize-space(//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:PostalZone)"
												/>
												</span>
												<xsl:text>&#160;</xsl:text>
												</xsl:if>
												<xsl:if
												test="normalize-space(//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:CitySubdivisionName) != ''">
												<span>
												<xsl:value-of
												select="normalize-space(//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:CitySubdivisionName)"
												/>
												</span>
												<xsl:text>&#160;/&#160;</xsl:text>
												</xsl:if>
												<xsl:if
												test="normalize-space(//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:CityName) != ''">
												<span>
												<xsl:value-of
												select="normalize-space(//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:CityName)"
												/>
												</span>
												<br/>
												</xsl:if>
												</td>
												</tr>

												<xsl:for-each
												select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:Name">
												<tr align="center" valign="top">
												<td>

												<xsl:text>Vergi Dairesi: </xsl:text>

												<xsl:value-of select="."/>
												</td>
												</tr>
												</xsl:for-each>


												<xsl:for-each
												select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification">
												<xsl:if
												test="normalize-space(./cbc:ID/@schemeID) = 'VKN'">
												<tr align="center" valign="top">
												<td>

												<xsl:text>Vergi Numaras&#305;: </xsl:text>

												<xsl:value-of select="."/>
												</td>
												</tr>
												</xsl:if>
												</xsl:for-each>

												<xsl:for-each
												select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification">
												<xsl:if
												test="normalize-space(./cbc:ID/@schemeID) = 'TCKN'">
												<tr align="center" valign="top">
												<td>

												<xsl:text>TCKN: </xsl:text>

												<xsl:value-of select="."/>
												</td>
												</tr>
												</xsl:if>
												</xsl:for-each>


												<xsl:for-each
												select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cbc:WebsiteURI">
												<xsl:if test="normalize-space(.) != ''">
												<tr align="center" valign="top">
												<td>

												<xsl:text>Web Sitesi:&#160;</xsl:text>

												<xsl:value-of select="normalize-space(.)"/>
												</td>
												</tr>
												</xsl:if>
												</xsl:for-each>

												<xsl:for-each
												select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:ElectronicMail">
												<xsl:if test="normalize-space(.) != ''">
												<tr align="center" valign="top">
												<td>

												<xsl:text>E-Posta: </xsl:text>

												<xsl:value-of select="normalize-space(.)"/>
												</td>
												</tr>
												</xsl:if>
												</xsl:for-each>

												<xsl:if
												test="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:Telephone or //n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:Telefax">
												<tr align="center" valign="top">
												<td>
												<xsl:if
												test="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:Telephone">
												<xsl:value-of
												select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:Telephone"/>
												<xsl:text>&#160;</xsl:text>
												</xsl:if>
												<xsl:if
												test="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:Telefax">
												<xsl:value-of
												select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:Telefax"
												/>
												</xsl:if>
												</td>
												</tr>
												</xsl:if>

												<tr align="center" valign="top">
												<td>

												<xsl:for-each select="//n1:Invoice/cbc:Note">

												<xsl:choose>
												<xsl:when test="substring(., 0, 5) = 'UPL:'">

												<xsl:choose>
												<xsl:when test="substring(., 0, 8) = 'UPL:CI:'"> </xsl:when>
												<xsl:when test="substring(., 0, 8) = 'UPL:SI:'"> </xsl:when>
												<xsl:otherwise>
												<xsl:value-of select="substring(., 5)"/>
												<br/>
												</xsl:otherwise>
												</xsl:choose>

												</xsl:when>
												</xsl:choose>

												</xsl:for-each>
												</td>
												</tr>

												</tbody>
												</table>

												</td>
											</tr>
										</tbody>
									</table>

									<br/>
								</td>

								<td width="20%" align="center" valign="center">

									<!-- header - orta kısım (efatura logo) -->

									<center>
										<img style="width:91px;" align="middle" alt="E-Fatura Logo"
											src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAIBAQIBAQICAgICAgICAwUDAwMDAwYEBAMFBwYHBwcGBwcICQsJCAgKCAcHCg0KCgsMDAwMBwkODw0MDgsMDAz/2wBDAQICAgMDAwYDAwYMCAcIDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCABmAGkDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD9/KKKDxQAEVxnxk/aC8Gfs/6Cuo+L/EOm6LBIdsEc0oM92/ZIohl5HP8AdQE15P8AF79rHWfHXizVfBnwn/sprnRX8jxF4y1RsaJ4VY9Y+o+03QBBEKsFXI3suQD8z3Pxh0XwV4k1+P4Q6bL8XPj/AOG/Flr4f1nVvF8RkurpZBMTJasWEdvatJA8O6LaiYJIYgbvUw2WynrPTy/zey/PyOSpiUtIn0F8QP23/Hl/4PvNc8J/DC78P+G7QBpPEXj2Z9It1QkAOtpGkt2V5By6R987RzXIap8W/HeueKW0bVf2kvBeja0oWV9K8IeEo7ueOJ7Z7lZd1zJKxiMMbMJQoQ8Y5IFdF4T/AGevil8dvAvxH8PfEQWWmeCfihG14mn6rd/2nq/hd57JIpbKLyz5BjinTzY5BIfvEbBkFfVvDP7H/hXSdX8J6zqz3mv+J/CnhuXwsur3TLFPf2kqxiQTCMKrMfLGCAMbmx1Nauph6S5bK/lr+Lv53sSoVJangXwQW5/aL+EWo+P/AA5+018T7jw/psJuJ7w6bpKRhRAs5byhbkrhGBKNhhnBFUPhV8cPGnjf4a6r4y8HftP+E9Y8O6G0QvpfHXg+GwgtPNjSSMSTQvb7Q6OhDEHhhwelfUHw/wD2Y/A3wu+EN54D0WwvLfwne2R059Pm1i8uljtjF5PkxtLKzxJ5fygRlQO2DXkviz/gk58Idf8AhTqHg6xj8QaLo2pAvNFb6zPKski2n2SB3ErNvEMXCIflJ5YMQMOGLw0pSU7pXVvdi9Ot9NwdCqkrL8yxD+1P8YPhFCsvxB+Eq+KNH2CQ638OL86uojIyHaylWO4wRz+68z2B616t8Cv2pPAX7SelS3Pg3xLp2ry2p23dkHMV9YP3Se3fEsTD0dRXz437G/xE+Dvxrj8Z6X4y8Q+NNDTT7axn8PadcxaVcTx2Fmq2S+Y77X33H2gygNGrCdMgiPDeRaj8VfC/xcQ6t8adDn+EHxgl8ft4P8M6x4RSSPV7IGK0KSzzJlZ7ZZ7oQuzhoWOw7RngeDpVVenrt8P/AMi9fVoPazhpL8f8z9IKK+X/AIXftceJvgf4p0jwb8a3027s9bnFl4b+ImlgLo/iGTOFhuUUkWd0egBYxyNnY2flr6fBDAEHg15dahKm7S279GdNOoprQWiiisTQK+aP2sfjpqPjvxpefCzwhrbeHobC0F/468VxHnwtp7AlYoTyPtk4BCAg7F3PgkKD6h+1b8eov2cfgdrHiUW5vtUVVstHsF5k1PUJmEVtboOpLysg47E18+/D/wCEnh3xR+zF8RvhZJqOo+JPiTLdW2peNbnQ9Sgt9Tl1md4bkyxM7fIsBEQUONuyILhjkH0cFSUV7ea0vp+r+V/vOatO75EeoXv7PHwq+J37Ow+CMGg39r4T1/QnuBEtlNE1uu6M+bJK6/Ldl5VkxIfMYhmIIDV237Pf7MXg/wDZs8FaXpXh3RtLt7nT7JbOXUY7GGC6vRuMjs7RqPvSM7lRhQXOAK1vgz8I7b4OeE2sI9R1TWr+8mN3qOqalKsl5qVwVVDLKVCrnaiKAqhVVFAAArrTXNUxE2nBSbje/q+5pCmtJNajZJFiQsxAVRkk1+dH/BTj/go7cfa7zwN4F1WawWzfbqWrWszRSKwwfLidSCMdyPp617H/AMFS/wBso/AX4eL4Z0S5EfiXxBGVDow3WcHIaT6noP8A61fiz8XfiK91O9nBIzDJMj5yWJ7mvieIs5dFfV6L16s/qDwL8Ko5nNZ1mUL00/ci9n/efl2O51n9sbx9HeSBfil45AUnpr1z/wDF1yeu/t5fEt76Oy034jfEK8vLhhHEia5dFnYnAAAevEvEWsyiVLa1WSa6uGCIiLuZ2PAAFfpV/wAEsP8Agl/beDdOHjrx3DF/aaw/aW88fJpsQ5PXjdjqe1fM5dTxmLqWU2o9Xdn73x/mXDfC+E5pYWnOrLSMeSN2/uO4/wCCZ3wL+LHiHxNp3in4jfEX4jT7SJrfRxr1y0ABBx5wLHd1Hy9K/Qf9oP8AZY8LftU/DPUdD8QQXFjcalbJbf2vp2yHVLVEmjnAinKMU/eRI31UHqAR8R+Lf+C0Pgf9nn4p2Gi2fhGa78L+f9nn1ZZgrgA48xUxyvfqOK/RnwT4usPHfhex1bTJkuLHUIEnhkU5DowyD+tfoOTYmlD3cNNuUd31P4u8Rcuzl14Y7NsOqUaqvFJJK3ay2fqfGVzb+Gf2XfgL448LfHCF9T0fxFqceh+H/BljB9ptZdNjKR2y6XAMzSy7JFklc4cTKcYwrN3X7MvxV1z9mr4r6Z8FvHmqXut6Lrls138O/FN9kT6laooJ0y8ZsH7bCnIYgebHzjcrCvdfjh8Jo/ij4QuBZ/ZLLxVYWl1/wj+sSQCSXRrqa3eETxkjIOHIOOor4U8N/sx3/izwpf8AhTx34h1fwP4l1SVLHwLBrfiRNV1RNbsWnuYb+OQ75FizvZF8xciedSm14kT7GjKniKcnUdn1/wA0vLqflc1KnJWP0foryT9iT9omf9pj9n7S9c1S1XTPFOnyzaP4k07o2nanbOYriMjsCy719UdD3r1uvEqU3CbhLdHbGSkk0fNXxmUfHX/goF8PPBLgSaN8NdNl8eakh5V7xmNpYIw9i1zKPeL6V6b4T/ZG+G/gj4pxeOdL8I6Va+MkiuIG1pEP224SeQySiWTOZcsSQX3FckDAJFeZfsjsfGH7aH7R3iaQZNtq2leGoD/cjtbFZGX/AL+XDH/gVfStdeKnKDVKLskl+Ku/zMqSUk5PuBGazvFfiO28JeGr3U7yQQ21jC00rnoqqCSf0rRr5d/4K3/F1/hd+yPqtrbyeXd+IpE06PBwdrHL4/4CDXlYqsqNKVV9Ee/w/lU8zzKhgIb1JJfe9fwPys/ba/aVvPjL8T/EHim6mZvtszQ2SEnEVupIRR6cc/UmvkzX9WMcMtxI2ScnJrt/i9rRudSjtlJ2xjmvPo/D9z488X6XoFkpe51O5S2QAZOWYD+tfj1epPEV7vVtn+omV4TDZJlEYwXLCnH8Ej6l/wCCRH7Gz/HX4kP421mya4sNOm8nTY5Fykkvd8f7I6e9fqJ/wUcuZP2eP+Cf3iGXTw0Ml0IrOZ0HISRwrdPYkV5T8D/2gPhd/wAE4vCeieDtZs9Zn1LTtOhll+xWqyohdASWO4HcTz07it/41f8ABVv4D/tJ/CfWfCOuWPil9N1e3aCQNYKrJkcMDv4IPI+lffYdYbDYSWHVRKbX4n8WZx/rBnnE1HPKmDqVMNGcWrK6cE+ny1Pxe+PnxAbxjqFpa2paViBHGoHLMSK/oV/4Jjrqem/ss+FNO1VpGu7HTYY33dQdo4/DpX5QfsifAz4IfET9sCy0TQbvxT4g1INLPYpf2ccdtAsYLEsQxJIHTjrX7d/BvwIngbwvDboAMKM46VnwzgnT5qrd79jt+kBxXDG1aOXU6UoKCv7ys9fI7CvN7j9kf4dX/wAdbr4k3nhTR7/xlcwW0C6hdWyTSWvkFijw7gfKc5UMy4LCOPP3RXpBoNfYRnKPwu1z+aGk9z5d+H0f/CgP+Cnvi/w8g8nQfjToEfiizjHEaarYFLa7CjpmSB7eRveMnktX1FXzF+3cg8JftF/s0+Lo/llsvHEnh+Vh1MGo2U0RXPvLHAf+A19OeYPf8q6sV70adTq1+Wn5JGNJ8rlHzPmj/gnzP5XxQ/aPs5CftMXxOuZ2B6iOSxsth+hCmvpivlz9naYfDr/gpf8AHrwvKfLi8W6XovjKwU9HAiayuCPpJChP/XRa+jvD/jfSPFd3fQaZqdhfzaZMbe7S3nWRraQdUcAna3seaWO/i37qL/BFYaEnBtLY1TX5u/8ABfXxkYE+H2iByBJJdXjLnrtCKP8A0Kv0ir8rP+DglZbb4rfDuY5EMmn3aA9tweM/1r5riCTWBnby/M/XvBGhCrxjhFPpzP5qLPzC8Z3ZutfuWJ6MRXov/BMbwH/wsj9uDw+JIhLBpJa9YEZAKjj9a8w8Q/8AITuT/tGvpv8A4IU6Qmqftfa07D5oNOXaD7yAV+dZNTU8ZCL7n9weLGNlhOFsROnvy2+/Q99/ar/4JhfGX4sfGzW/FFr4m0aOz1mffa24DkwQgAIp4xwBXwt48/tnwDqOr6ZdXNvcyaXO9q80a4V2UlSR+Ir+j7xi9p4X+G19qU6xoljZPLuI+7hCa/nI+Pms/wBo2d/fuAs2p3UlwwB6FmLf1r3OJcDRw/LOn8Ur3PybwB4xzTOY1sPjGnSoqMY2SXf9Eex/8ENtGn1/9sTUtWAJOmWJVXx3kO0j8s1++2hoU0uHd12jNfjD/wAG7vgQ3ur+KtaeMET3kUCNjsqkkfma/aW1Ty7aNfQV9Lw5S5MFHzP5/wDHDMfrXFNez0jZfciQUZ5ornPiR8W/DXwh0y1vPE+t6boVpeXC2kM97OsMckrAkIGYgZIVj+Br3W0tWfkMISnLlgrs8I/4KVDzYPghbpjzpfiz4caNe5CXQd/yRWP4V9NYHoK+Yf2sLtPiV+2v+zl4St3SeGw1HUfGd2FOQIrWzaGBj7GW5BHuor6ez7Gu3EK1Kn5pv8WcsNZy9T5P/b7kP7Pf7QHwh+OcatHpOjag/g7xbMo+WHStRZFS4f0SG6SFmPYMT2rH/Z3+H1n+yz+1xd6Xq2r+DNCTxY90dEit5j/aXimJ5DP5lwNoXdEzFVYszNucDAIFfUfxi+FOjfHP4V+IPB3iC2W80XxLYTafeRHqY5EKkg9mGcgjkEAjpXwv8MfDuo+I4Lv4beMtNvPEHxv+AUUa6Gov109vG+jCaN7K785v4QYoxKAcho2B+/WWJpuvh41IfFT/APSf+B/ke3k2LjSqTwtV2hVVum6238/1P0MByB71+b//AAcP+CZZ/hn4G8SxJmPS9Qltp2x91ZVGP1UV9cfsd/H68+MPhq9s9V1DTtc1nRLh7fUtR0q3aLSxcbyTaws7FpTCrKrSAYJB6HKjF/4Ke/AY/tC/sa+L9GgiE1/Bam9sxjJ82I7xj8sfjXi5lT+sYKcY9UfW8A5g8i4qwmIruyjNJvylpf01P56/EiZv3Yf8tBkV9If8EO/FcHhb9uOSymA3axp7RR8/xKQ1fM+p6nGi+XMTHPASjq3BBHWui/ZO+LifBH9rLwT4mE2y3tdSiS4IPHludrZ9sGvzDLKvscXCT6M/0F8Rcu/tPhrEUKercG18ldH9Af8AwUO8d/8ACA/sU+L7xHCSTWH2aMk4+aQhB/Ov59fj/fiGyhhBPyoTiv2M/wCCznxis7L9j3w7aC4UReI72CRXB4ZEXzM/yr8S/jf4pt9Y1F/IkDpgKp9a97imvz4iMF0S/E/Hvo65W8JkFfF1FbnnL/yVW/O5+t//AAb1/D8aT+z3BqBU7tTu5bgkjtnA/lX6eAYXFfGn/BG74fjwZ+yt4ShMflv/AGfG7DGMlhuz+or7MByM19rltPkw0I+SP5H44x31vPMTX7zl+YjNtB5r4b/aw+IvxI8XftR6T4HHhjSPFngfUdRtWmtNR0FtQ0uW1kfypT9sCBYbmERNJsbJ/fH+FM17j+2j+0Xpfwz8O2/hm28aL4O8XeInSHTL4acdQjsnMiKj3EYBCQu5WLc2OZOCCMjw3xhY6z8Afh3H8P8AwnY6dpvx6+O9wzXttpd/Pc6do6/Mt3q6I+PJjVCXIAG6RlXJIBrqjQliaqoQdurfZeZy5fUhl1B46vBSck1GLX/kyfl3V/kehfsd4+Pn7WPxU+LyKJPD+n+V4C8KyDlHt7Ri99Mh6FZLohMj/n2x2NfUeD6/pXJfAj4M6N+zz8H/AA94K0CIxaT4ds0tId335SOXkb1d3LOx7sxNddXbiqqqVG47LRei0R8zTi0td2FeD/tqfshXPx8ttF8W+DNVTwp8W/Arvc+Gdc2kxncMSWd0o5ktZlyrL2yGHIwfeKKzo1ZUpqcNypwUlZnxx+yH4r8LftEfG2S+8QL4h+Hvxi+H1t9k1bwIL0W9jYlnLS3dtEgAube4ZlPmEsDhPutyfWvh/wDtZaf8Xviz4q0O0trf/hEPDzDTpNdlnRbe8v2ClrWPcQWZQx3YBGeM54qX9rH9iTwz+1JHp2rvdah4V8eeGyZdA8WaO/k6lpUnPG7pLCSTuifKtnoDzXyJ+0ZZeK/Bvh6Hw9+0R4Tv5dNsLia5s/in4B0kXdm0skLQNcanp+xjBJ5bD94FZQwBVlwM7VcKqy58JZPdx7+j6r8T08Djacp8mYt2skpb8vnY4f8AaL/4INeEfiR491PxP4a8UaxHp3iC4e9jis1hkt497FiI2A5XJOK85X/g3rsWuUb/AISnxMChyCIYuP0r7D+BHxD8VJqMt98JvEfgfx/8H/D+gTxaPpGh3sdxdM8FvEtrbyIcSx3DS+YXJbG0DKhjmvRrr9sHxJ8OvF/gnwx4w+Hs41rxNBbyXdzp82LG0eaZYvKR5QvmSR7tzoDuCjKhuK+YnlGFjJ+1pcr80fqMeP8AilU1RweO9pDl0tJXtbZp9Utzxb46/wDBLiT9pX4C+CPDev8AjLxNGfA9kbWBo44ibw4ADyZH3goxxXzBd/8ABvVp9xqCufE/iV0RwcGGL5ufpX6EaL/wUI0jxjHCNL8PataGHxhaeFrpbqBZMicuBMhjk2hSEzuycAjK81S/a7+O3xZ+G3x18OaJ4D8Gvr2i3lml/cyx6dPP5xS6jSW185R5ULvCzFGkKqCpJOBg3Vy/BT/euN3oceW8X8VYVf2dTxHs4vmdm0l3f33PTv2V/hePhB8MrDS5CUjsLeOBWbj5UUKCfyrkviL+354Y0r4yXvwt0+eWz8eTIY9O+3W5W1uJXhV4Cjbh5iuzbRgjmOTJAXJ83+N9p43vNW8dx/Fnx74W8EfCHUbGW3s4rrUo7S6SQPFJBKjxBJMcOjoZPm4ABBrjf2f/ABh4s8c+FNH0X4G+FTq+pafpp0if4t+LNNks7BbXzWcJZxuPOuwhI2gYjyoyR29jD4TEVkuRckFu3ov6/qx8ZWlgcO5V8VUVWo9VGL0Tavdu2tno1+Jen8Wan8A7Xw/4l+KumW3jj9oLVpbm18FeHtOCf2m8E20/Z7poW8l4omBcyMNkYBIJIJr3z9kT9lzU/hfqGs+PfiBqMHiH4r+M1Q6texD/AEbSYBzHp1mCMrbxnJyeXYlj/CF0f2Yv2M9D/Z4v9R8RXmo6h4y+IfiBFGs+KdWYPeXmORFGo+SCAdoowBwCdx5r2OuxypUafsMPrfeXV/8AA/M8LGYytjK3t69l2itorskFFFFcpiFFFFABTZI1mjZHVWVhggjIIoooA8A+L3/BMD4M/F3xHJrp8Lf8Ip4mkO4634WupNFvmbOdzPblQ7Z7uGNcnH+wH8V/BJC+Df2ofiNbW6fct/E+mWfiFVHYb2EUp/GQ0UV2Qx1dK3Ndedn+dznlSgtUrDof2cP2n4v3H/C/fAflA583/hXCiUn+/j7XjdU5/YX+LfjI48X/ALTvj2eBusPhnR7LQQ3qN+JpB+Diiiuuvi5wS5El/wBux/yEo3erf3s6T4af8EyfhD8P/EEWt3+g3XjjxHC29NX8XX0ut3Ubf3k88skbe6Kpr36GFLeJY40VEQYVVGAo9AKKK82rXqVXepJv1NoQjFe6h1FFFZFhRRRQB//Z"/>
										<h1 align="center">
											<span style="font-weight:bold;">e-FATURA</span>
										</h1>
									</center>
								</td>
								<td width="40%" align="right" valign="top">
									<!-- header - sağ alt köşe -->
								</td>

							</tr>
							<tr align="left">

								<table id="ettnTable" width="800">
									<tr>
										<td align="left" width="50%" valign="bottom">


											<xsl:text>ETTN: </xsl:text>
											<xsl:value-of select="//n1:Invoice/cbc:UUID"/>

										</td>
										<td align="right" width="50%px" valign="bottom">
											<xsl:text>&#160;</xsl:text>
											<!--
											<xsl:for-each select="//n1:Invoice/cbc:Note">

												<xsl:choose>
													<xsl:when test="substring(.,0,6) = 'UPHR:'">
														<xsl:value-of select="substring(.,6)" />
														<br />
													</xsl:when>
												</xsl:choose>

											</xsl:for-each>
											-->
										</td>
									</tr>
								</table>
							</tr>
						</tbody>
					</table>
					<div id="lineTableAligner">
						<span>
							<xsl:text>&#160;</xsl:text>
						</span>
					</div>
					<table border="1" id="lineTable" width="800">
						<tbody>
							<tr id="lineTableTr">
								<td class="lineTableTd" align="center" width="20%">
									<span style="font-weight:bold; ">
										<xsl:text>Ürün Kodu</xsl:text>
									</span>
								</td>
								<td class="lineTableTd" align="center" width="50%">
									<span style="font-weight:bold; ">
										<xsl:text>Ürün Adı</xsl:text>
									</span>
								</td>
								<td class="lineTableTd" align="center" width="10%">
									<span style="font-weight:bold; ">
										<xsl:text>Birim</xsl:text>
									</span>
								</td>
								<td class="lineTableTd" align="center" width="10%">
									<span style="font-weight:bold; ">
										<xsl:text>Miktar</xsl:text>
									</span>
								</td>
								<td class="lineTableTd" align="center" width="10%">
									<span style="font-weight:bold; ">
										<xsl:text>Toplam Tutar</xsl:text>
									</span>
								</td>
							</tr>

							<xsl:for-each select="//n1:Invoice/cac:InvoiceLine">
								<xsl:choose>
									<xsl:when test=".">
										<xsl:apply-templates select="."/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="//n1:Invoice"/>
									</xsl:otherwise>
								</xsl:choose>
							</xsl:for-each>

						</tbody>
					</table>
				</xsl:for-each>


				<table class="budgetContainerTable" style="margin-top:10px;">
					<tr>
						<td>

							<table class="budgetContainerTable" width="460" style="width:460px;">
								<tr class="budgetContainerTr">
									<td>

										<xsl:for-each
											select="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount">

											<xsl:value-of select="./cbc:CurrencyCode"/>
											<xsl:text>&#160;</xsl:text>
											<xsl:value-of select="./cbc:ID"/>
											<xsl:text>&#160;</xsl:text>
											<xsl:value-of select="./cbc:PaymentNote"/>
											<br/>

										</xsl:for-each>


									</td>
								</tr>
							</table>



						</td>
						<td>
							<table class="budgetContainerTable" width="337" style="width:337px;">

								<tr class="budgetContainerTr" align="right">
									<td class="lineTableBudgetTd" align="right" width="270"
										style="width:270px;">
										<strong>
											<xsl:text>Toplam Tutar: </xsl:text>
										</strong>
									</td>
									<td class="lineTableBudgetTd" width="101" style="width:101px;"
										align="right">
										<xsl:value-of
											select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount"
										/>
									</td>
								</tr>
								<tr class="budgetContainerTr" align="right">
									<td class="lineTableBudgetTd" align="right" width="270"
										style="width:270px;">
										<strong>
											<xsl:text>İndirim: </xsl:text>
										</strong>
									</td>
									<td class="lineTableBudgetTd" width="101" style="width:101px;"
										align="right">
										<xsl:value-of
											select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount"
										/>
									</td>
								</tr>
								<xsl:for-each select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
									<xsl:choose>
										<xsl:when
											test="((./cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = '0071') or (./cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = '0073') or (./cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = '0074') or (./cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = '0075') or (./cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = '0076') or (./cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = '0077'))">
											<xsl:if test="./cbc:Percent != '0'">
												<tr class="budgetContainerTr" align="right">
												<td class="lineTableBudgetTd" align="right"
												width="270" style="width:270px;">
												<strong>
												<xsl:text>Toplam ÖTV (%</xsl:text>
												<xsl:value-of
												select="format-number(./cbc:Percent, '###.##0', 'european')"/>
												<xsl:text>): </xsl:text>
												</strong>
												</td>
												<td class="lineTableBudgetTd" width="101"
												style="width:101px;" align="right">
												<xsl:value-of select="./cbc:TaxAmount"/>
												</td>
												</tr>
											</xsl:if>
										</xsl:when>
										<xsl:otherwise>
											<tr class="budgetContainerTr" align="right">
												<td class="lineTableBudgetTd" align="right"
												width="270" style="width:270px;">
												<strong>
												<xsl:text>Toplam KDV (%</xsl:text>
												<xsl:value-of
												select="format-number(./cbc:Percent, '###.##0', 'european')"/>
												<xsl:text>): </xsl:text>
												</strong>
												</td>
												<td class="lineTableBudgetTd" width="101"
												style="width:101px;" align="right">
												<xsl:value-of select="./cbc:TaxAmount"/>
												</td>
											</tr>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:for-each>
								<tr class="budgetContainerTr" align="right">
									<td class="lineTableBudgetTd" align="right" width="270"
										style="width:270px;">
										<strong>
											<xsl:text>Vergi Dahil Toplam Tutar: </xsl:text>
										</strong>
									</td>
									<td class="lineTableBudgetTd" width="101" style="width:101px;"
										align="right">
										<xsl:value-of
											select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount"
										/>
									</td>
								</tr>

							</table>
						</td>
					</tr>
				</table>

				<table class="notesTable" width="800" align="left" height="50" cellpadding="2"
					cellspacing="2"
					style="margin-top:10px;margin-bottom:10px;width:800px;text-align:left;">
					<tr>
						<td id="notesTableTd">



							<table style="width:100%;text-align:left;float:left;" width="100%"
								align="left" cellpadding="2" cellspacing="2">
								<xsl:for-each select="//n1:Invoice/cbc:Note">
									<xsl:choose>
										<xsl:when test="substring(., 0, 5) = 'N3C:'">

											<tr align="left">
												<td style="width:33%;text-align:left;">
												<xsl:value-of
												select="substring-before(substring(., 5), '!#')"/>
												</td>

												<td style="width:33%;text-align:left;">
												<xsl:value-of
												select="substring-before(substring-after(substring(., 5), '!#'), '!#')"
												/>
												</td>

												<td style="width:33%;text-align:left;">
												<xsl:value-of
												select="substring-after(substring-after(substring(., 5), '!#'), '!#')"
												/>
												</td>
											</tr>
										</xsl:when>

										<xsl:when test="substring(., 0, 13) = ':N3C-AYIRAC:'">
											<tr align="left">
												<td colspan="3">
												<hr/>
												</td>
											</tr>
										</xsl:when>

									</xsl:choose>
								</xsl:for-each>
							</table>

							<div class="clear"/>

							<table style="width:100%;text-align:left;float:left;" width="100%"
								align="left" cellpadding="2" cellspacing="2">
								<xsl:for-each select="//n1:Invoice/cbc:Note">
									<xsl:choose>
										<xsl:when test="substring(., 0, 5) = 'N2C:'">

											<tr align="left">
												<td style="width:50%;text-align:left;">
												<xsl:value-of
												select="substring-before(substring(., 5), '!#')"/>
												</td>

												<td style="width:50%;text-align:left;">
												<xsl:value-of
												select="substring-after(substring(., 5), '!#')"/>
												</td>
											</tr>
										</xsl:when>

										<xsl:when test="substring(., 0, 13) = ':N2C-AYIRAC:'">
											<tr align="left">
												<td colspan="2">
												<hr/>
												</td>
											</tr>
										</xsl:when>

									</xsl:choose>
								</xsl:for-each>
							</table>

							<div class="clear"/>

							<div style="width:100%;text-align:left;float:left;">
								<xsl:for-each select="//n1:Invoice/cbc:Note">
									<xsl:choose>
										<xsl:when test="substring(., 0, 5) = 'NOT:'">
											<xsl:value-of select="substring(., 5)"/>
											<br/>
										</xsl:when>

										<xsl:when test="substring(., 0, 13) = ':NOT-AYIRAC:'">
											<hr/>
										</xsl:when>

									</xsl:choose>
								</xsl:for-each>
							</div>

							<div class="clear"/>

						</td>
					</tr>
				</table>


			</body>
		</html>
	</xsl:template>

	<xsl:template match="dateFormatter">
		<xsl:value-of select="substring(., 9, 2)"/> - <xsl:value-of select="substring(., 6, 2)"/> -
			<xsl:value-of select="substring(., 1, 4)"/>
	</xsl:template>

	<xsl:template match="//n1:Invoice/cac:InvoiceLine">
		<tr id="lineTableTr">
			<td class="lineTableTd" align="center">
				<span>
					<xsl:text>&#160;</xsl:text>
					<xsl:value-of select="./cac:Item/cac:SellersItemIdentification/cbc:ID"/>
				</span>
			</td>
			<td class="lineTableTd" align="left">
				<span>
					<xsl:text>&#160;</xsl:text>
					<xsl:value-of select="./cac:Item/cbc:Name"/>
				</span>
			</td>
			<td class="lineTableTd" align="right">
				<span>
					<xsl:text>&#160;</xsl:text>
					<xsl:if test="./cbc:InvoicedQuantity/@unitCode">
						<xsl:for-each select="./cbc:InvoicedQuantity">
							<xsl:text>&#160;</xsl:text>
							<xsl:choose>
								<xsl:when test="@unitCode = '26'">
									<span>
										<xsl:text>Ton</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'BX'">
									<span>
										<xsl:text>Kutu</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'LTR'">
									<span>
										<xsl:text>LT</xsl:text>
									</span>
								</xsl:when>

								<xsl:when test="@unitCode = 'NIU' or @unitCode = 'C62'">
									<span>
										<xsl:text>Adet</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'KGM'">
									<span>
										<xsl:text>KG</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'KJO'">
									<span>
										<xsl:text>kJ</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'GRM'">
									<span>
										<xsl:text>G</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'MGM'">
									<span>
										<xsl:text>MG</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'NT'">
									<span>
										<xsl:text>Net Ton</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'GT'">
									<span>
										<xsl:text>GT</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'MTR'">
									<span>
										<xsl:text>M</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'MMT'">
									<span>
										<xsl:text>MM</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'KTM'">
									<span>
										<xsl:text>KM</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'MLT'">
									<span>
										<xsl:text>ML</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'MMQ'">
									<span>
										<xsl:text>MM3</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'CLT'">
									<span>
										<xsl:text>CL</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'CMK'">
									<span>
										<xsl:text>CM2</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'CMQ'">
									<span>
										<xsl:text>CM3</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'CMT'">
									<span>
										<xsl:text>CM</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'MTK'">
									<span>
										<xsl:text>M2</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'MTQ'">
									<span>
										<xsl:text>M3</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'DAY'">
									<span>
										<xsl:text> Gün</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'MON'">
									<span>
										<xsl:text> Ay</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'PA'">
									<span>
										<xsl:text> Paket</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'KWH'">
									<span>
										<xsl:text> KWH</xsl:text>
									</span>
								</xsl:when>
							</xsl:choose>
						</xsl:for-each>
					</xsl:if>
				</span>

			</td>
			<td class="lineTableTd" align="right">
				<span>
					<xsl:text>&#160;</xsl:text>
					<xsl:value-of
						select="format-number(./cbc:InvoicedQuantity, '###.##0,####', 'european')"/>
				</span>
			</td>
			<td class="lineTableTd" align="right">
				<span>
					<xsl:text>&#160;</xsl:text>
					<xsl:value-of select="./cbc:LineExtensionAmount"/>
				</span>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>

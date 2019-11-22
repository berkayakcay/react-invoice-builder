<?xml version="1.0" encoding="UTF-8"?><!-- DWXMLSource="file:///E|/EFATURA/OZSEC/5920196527_FYS2014000000956.xml" -->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	exclude-result-prefixes="cac cbc ccts clm54217 clm5639 clm66411 clmIANAMIMEMediaType fn link n1 qdt udt xbrldi xbrli xdt xlink xs xsd xsi"
	xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"
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
	xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"
	xmlns:ext="urn:oasis:names:specification:ubl:schema:xsd:CommonExtensionComponents-2"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<xsl:decimal-format name="european" decimal-separator="," grouping-separator="." NaN=""/>
	<xsl:output version="4.0" method="html" indent="no" encoding="UTF-8"
		doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN"
		doctype-system="http://www.w3.org/TR/html4/loose.dtd"/>
	<xsl:param name="SV_OutputFormat" select="'HTML'"/>
	<xsl:variable name="XML" select="/"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>e-Fatura</title>
				<style>
					body
					{
					    background: #FFFFFF;
					    font-family: Arial, Helvetica, sans-serif;
					    font-size: 9pt;
					    color: #000000;
					    /*margin: 0.79in 0.6in;*/
					    margin: 0;
					}
					h1,
					h2,
					h3,
					h4,
					h5
					{
					    margin-top: 0;
					}
					table{
					    border-collapse: collapse;
					    border-spacing: 0;
					}
					td{
					    padding: 3px;
					}
					hr{
					    border: none;
					    height: 1px;
					    background: black;
					}
					#nm{
					    margin: 0;
					}
					#a4
					{
					    width: 8.3in;
					    font-size: 8pt;
					}
					#bold{
					    font-weight: bold;
					}
					#topright
					#bold
					{
					    padding: 0 10px 0 0;
					    text-align: right
					
					}
					#customerTopLeft,
					#customerTopRight,
					#customerBottomLeft,
					#customerBottomRight
					{
					    height: 20px;
					}
					#customerTopLeft
					{
					    border-left: 1px solid black;
					    border-top: 1px solid black;
					}
					.banka_bilgi tr td{
					    font-size: 9 px;
					    padding: 1px;
					}
					.musteri_logo_alani_2{
					    vertical-align: middle;
					    text-align: center;
					}
					.adresyaz{
					    font-family: "Times New Roman";
					    color: #000000;
					    float: left;
					    height: 12px;
					    width: 425px;
					    font-size: 11px;
					    border-top-color: #CAEAFF;
					    border-right-color: #CAEAFF;
					    border-bottom-color: #CAEAFF;
					    border-left-color: #CAEAFF;
					    text-align: justify;
					}
					.adresyaz1{
					    font-family: "Times New Roman";
					    color: #000066;
					    float: left;
					    height: 13px;
					    width: 425px;
					    font-size: 13px;
					    border-top-color: #CAEAFF;
					    border-right-color: #CAEAFF;
					    border-bottom-color: #CAEAFF;
					    border-left-color: #CAEAFF;
					    text-align: justify;
					}
					.bas{
					    font-size: 11px;
					}
					.basd{
					    font-size: 9px;
					}
					
					.temizle{
					    clear: both;
					}
					.dipnot{
					    font-family: "Times New Roman";
					    color: #000000;
					    float: left;
					    height: 10px;
					    width: 800px;
					    font-size: 14px;
					    border-top-color: #CAEAFF;
					    border-right-color: #CAEAFF;
					    border-bottom-color: #CAEAFF;
					    border-left-color: #CAEAFF;
					
					}
					#customerTopRight
					{
					    border-right: 1px solid black;
					    border-top: 1px solid black;
					}
					#customerBottomLeft{
					    border-left: 1px solid black;
					    border-bottom: 1px solid black;
					}
					#customerBottomRight{
					    border-right: 1px solid black;
					    border-bottom: 1px solid black;
					}
					#invoiceWrapper{
					    border: 1px solid black;
					    height: 330px;
					}
					#invoice{
					    height: 100%;
					}
					#invoice th{
					    background: #f5f5f5;
					    padding: 6px 0;
					    border-bottom: 1px solid black;
					    border-right: 1px solid black;
					}
					#invoice th:last-child,
					#invoice tr td:last-child{
					    border-right: none;
					}
					#invoice td{
					    line-height: 22px;
					    padding: 2px 6px;
					    border-right: 1px
					 solid black;
					    vertical-align: top;
					}
					#invoice tr:last-child td{
					    height: 100%;
					}
					#generalTotal td{
					    padding: 8px 6px;
					}
					#generalTotal
					#box{
					    border-left: 1px solid black;
					    border-right: 1px solid black;
					    border-bottom: 1px solid black;
					
					}
					#footer
					{
					    font-size: 8pt;
					    border: 1px solid black;
					    line-height: 1.5;
					}
					#footer
					td
					{
					    padding: 1px;
					}
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
			<body style="margin-left:15px">
				<div id="a4">
					<xsl:for-each select="$XML">
						<table border="0" cellspacing="0" cellpadding="0">
							<tr valign="top">
								<td width="400" align="left" height="70">
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
								</td>
								<td width="100" align="left" height="100">
									
								</td>
								<td width="300" align="right" height="100">
									{{LOGO}}
								</td>
							</tr>
						</table>


						<table border="0" cellspacing="0" cellpadding="0">
							<tr valign="top">
								<td width="100%" font-size="8px" height="15"> </td>
								<td width="15%" align="left">
									<table border="0" cellspacing="0" cellpadding="0" width="100%"> </table>

								</td>

							</tr>
						</table>
						<table border="0" cellspacing="0" cellpadding="0" width="100%">
							<tr>
								<td width="45%">
									<table border="0" cellspacing="0" cellpadding="0" width="100%">
										<tr>
											<td id="customerTopLeft" width="20px"/>
											<td/>
											<td id="customerTopRight" width="20px"/>
										</tr>
										<tr>
											<td/>
											<td>
												<xsl:for-each select="n1:Invoice">
												<xsl:for-each select="cac:AccountingCustomerParty">
												<xsl:for-each select="cac:Party">
												<span id="bold">
												<xsl:text>SAYIN&#160;</xsl:text>
												</span>
												</xsl:for-each>
												</xsl:for-each>
												</xsl:for-each>
												<xsl:for-each select="n1:Invoice">
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
												<xsl:text>&#160;</xsl:text>
												</span>
												</xsl:for-each>
												<xsl:for-each select="cbc:FirstName">
												<xsl:apply-templates/>
												<span>
												<xsl:text>&#160;</xsl:text>
												</span>
												</xsl:for-each>
												<xsl:for-each select="cbc:MiddleName">
												<xsl:apply-templates/>
												<span>
												<xsl:text>&#160; </xsl:text>
												</span>
												</xsl:for-each>
												<xsl:for-each select="cbc:FamilyName">
												<xsl:apply-templates/>
												<span>
												<xsl:text>&#160;</xsl:text>
												</span>
												</xsl:for-each>
												<xsl:for-each select="cbc:NameSuffix">
												<xsl:apply-templates/>
												</xsl:for-each>
												</xsl:for-each>
												</xsl:for-each>
												</xsl:for-each>
												</xsl:for-each>
												<br/>
												<xsl:for-each select="n1:Invoice">
												<xsl:for-each select="cac:AccountingCustomerParty">
												<xsl:for-each select="cac:Party">
												<xsl:for-each select="cac:PostalAddress">
												<xsl:for-each select="cbc:StreetName">
												<xsl:apply-templates/>
												<span>
												<xsl:text>&#160;</xsl:text>
												</span>
												</xsl:for-each>
												<xsl:for-each select="cbc:BuildingName">
												<xsl:apply-templates/>
												</xsl:for-each>
												<xsl:for-each select="cbc:BuildingNumber">
												<span>
												<xsl:text> No:</xsl:text>
												</span>
												<xsl:apply-templates/>
												<span>
												<xsl:text>&#160;</xsl:text>
												</span>
												</xsl:for-each>
												<xsl:for-each select="cbc:PostalZone">
												<xsl:apply-templates/>
												<span>
												<xsl:text>&#160;</xsl:text>
												</span>
												</xsl:for-each>
												<xsl:for-each select="cbc:CitySubdivisionName">
												<xsl:apply-templates/>
												<span>
												<xsl:text>/ </xsl:text>
												</span>
												</xsl:for-each>
												<xsl:for-each select="cbc:CityName">
												<xsl:apply-templates/>
												<span>
												<xsl:text>&#160;</xsl:text>
												</span>
												</xsl:for-each>
												</xsl:for-each>
												</xsl:for-each>
												</xsl:for-each>
												</xsl:for-each>

												<br/>
												<xsl:for-each select="n1:Invoice">
												<xsl:for-each select="cac:AccountingCustomerParty">
												<xsl:for-each select="cac:Party">
												<xsl:for-each select="cac:Contact">
												<xsl:if test="cbc:Telephone or cbc:Telefax">
												<xsl:for-each select="cbc:Telephone">
												<span>
												<xsl:text>Tel: </xsl:text>
												</span>
												<xsl:apply-templates/>
												</xsl:for-each>
												<xsl:text>&#160;</xsl:text>
												<xsl:for-each select="cbc:Telefax">
												<span>
												<xsl:text>Fax: </xsl:text>
												</span>
												<xsl:apply-templates/>
												</xsl:for-each>
												<span>
												<xsl:text>&#160;</xsl:text>
												</span>
												</xsl:if>
												<br/>
												<xsl:if
												test="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:Name">
												<!--<xsl:text>V.D.: </xsl:text>-->
												<!--<xsl:value-of select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:Name" />-->
												</xsl:if>
												</xsl:for-each>
												</xsl:for-each>
												</xsl:for-each>
												</xsl:for-each>
												<xsl:for-each
												select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme">
												<xsl:text>&#160;</xsl:text>
												<xsl:text>V.D: </xsl:text>
												<xsl:value-of select="cbc:Name"/>
												</xsl:for-each>

												<xsl:for-each
												select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification">
												<xsl:text>&#160;</xsl:text>
												<xsl:value-of select="cbc:ID/@schemeID"/>
												<xsl:text>: </xsl:text>
												<xsl:value-of select="cbc:ID"/>
												</xsl:for-each>
											</td>
											<td/>
										</tr>
										<tr>
											<td id="customerBottomLeft" width="20px"/>
											<td/>
											<td id="customerBottomRight" width="20px"/>
										</tr>
									</table>
								</td>
								<!--<td width="15%" align="center">-->

								<!--</td>-->
								<td width="17%" align="center">

									<table border="0" cellspacing="0" cellpadding="0" width="100%">


										<img style="width:91px;" align="middle" alt="E-Fatura Logo"
											src="data:image/jpeg;base64,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"/>
										<p>
											<b>E-Fatura</b>
										</p>


									</table>
								</td>



								<td with="20%"/>
								<td width="35%">
									<table border="0" cellspacing="0" cellpadding="0" id="topright"
										width="100%">
										<tr>
											<td>
												<span id="bold">
												<xsl:text> &#214;zelle&#351;tirme No:</xsl:text>
												</span>
											</td>
											<td>
												<xsl:for-each select="n1:Invoice">
												<xsl:for-each select="cbc:CustomizationID">
												<xsl:apply-templates/>
												</xsl:for-each>
												</xsl:for-each>
											</td>
										</tr>
										<tr>
											<td>
												<span id="bold">
												<xsl:text>Senaryo:</xsl:text>
												</span>
											</td>
											<td>
												<xsl:for-each select="n1:Invoice">
												<xsl:for-each select="cbc:ProfileID">
												<xsl:apply-templates/>
												</xsl:for-each>
												</xsl:for-each>
											</td>
										</tr>
										<tr>
											<td>
												<span id="bold">
												<xsl:text>Fatura Tipi:</xsl:text>
												</span>
											</td>
											<td>
												<xsl:for-each select="n1:Invoice">
												<xsl:for-each select="cbc:InvoiceTypeCode">
												<xsl:apply-templates/>
												</xsl:for-each>
												</xsl:for-each>
											</td>
										</tr>
										<tr>
											<td>
												<span id="bold">
												<xsl:text>Fatura No:</xsl:text>
												</span>
											</td>
											<td>
												<xsl:for-each select="n1:Invoice">
												<xsl:for-each select="cbc:ID">
												<xsl:apply-templates/>
												</xsl:for-each>
												</xsl:for-each>
											</td>
										</tr>
										<tr>
											<td>
												<span id="bold">
												<xsl:text>Fatura Tarihi:</xsl:text>
												</span>
											</td>
											<td>
												<xsl:for-each select="n1:Invoice">
												<xsl:for-each select="cbc:IssueDate">
												<xsl:value-of select="substring(., 9, 2)"/> -
												<xsl:value-of select="substring(., 6, 2)"/> -
												<xsl:value-of select="substring(., 1, 4)"/>
												</xsl:for-each>
												</xsl:for-each>
											</td>
										</tr>

										<xsl:if test="//n1:Invoice/cac:OrderReference">
											<tr>
												<td>
												<span id="bold">
												<xsl:text>Sipari&#351; No:</xsl:text>
												</span>
												</td>
												<td>
												<xsl:for-each
												select="n1:Invoice/cac:OrderReference">
												<xsl:for-each select="cbc:ID">
												<xsl:apply-templates/>
												</xsl:for-each>
												</xsl:for-each>
												</td>
											</tr>
										</xsl:if>
										<xsl:if test="//n1:Invoice/cac:OrderReference/cbc:IssueDate">
											<tr>
												<td>
												<span id="bold">
												<xsl:text>Sipari&#351; Tarihi:</xsl:text>
												</span>
												</td>
												<td>
												<xsl:for-each
												select="n1:Invoice/cac:OrderReference">
												<xsl:for-each select="cbc:IssueDate">
												<xsl:value-of select="substring(., 9, 2)"/> -
												<xsl:value-of select="substring(., 6, 2)"/> -
												<xsl:value-of select="substring(., 1, 4)"/>
												</xsl:for-each>
												</xsl:for-each>
												</td>
											</tr>
										</xsl:if>
									</table>
								</td>
							</tr>
						</table>
						<br/>
						<div id="invoiceWrapper">
							<table border="0" cellspacing="0" cellpadding="0" width="100%"
								id="invoice">
								<tr>
									<th align="center">
										<span id="bold">
											<xsl:text>Kod</xsl:text>
										</span>
									</th>
									<th align="center">
										<span id="bold">
											<xsl:text>A&#231;&#305;klama</xsl:text>
										</span>
									</th>
									<th align="center">
										<span id="bold">
											<xsl:text>Adet</xsl:text>
										</span>
									</th>
									<th align="center">
										<span id="bold">
											<xsl:text>İsk%</xsl:text>
										</span>
									</th>
									<th align="center">
										<span id="bold">
											<xsl:text>İsk Tutarı</xsl:text>
										</span>
									</th>
									<th align="center">
										<span id="bold">
											<xsl:text>KDV%</xsl:text>
										</span>
									</th>
									<th align="center">
										<span id="bold">
											<xsl:text>Fiyat</xsl:text>
										</span>
									</th>

									<th align="center">
										<span id="bold">
											<xsl:text>Tutar</xsl:text>
										</span>
									</th>
									<th align="center">
										<span id="bold">
											<xsl:text>Diger Vergiler&#305;</xsl:text>
										</span>
									</th>
								</tr>
								<xsl:choose>
									<xsl:when test="//n1:Invoice/cac:InvoiceLine">
										<xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="//n1:Invoice"/>
									</xsl:otherwise>
								</xsl:choose>
							</table>
						</div>
					</xsl:for-each>
					<table id="budgetContainerTable" width="800px">
						<tr id="budgetContainerTr" align="right">
							<td id="budgetContainerDummyTd"/>
							<td id="lineTableBudgetTd" align="right" width="200px">
								<span style="font-weight:bold; ">
									<xsl:text>Mal Hizmet Toplam Tutarı</xsl:text>
								</span>
							</td>
							<td id="lineTableBudgetTd" style="width:81px; " align="right">
								<span>
									<xsl:value-of
										select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount, '###.##0,00', 'european')"/>
									<xsl:if
										test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID">
										<xsl:text> </xsl:text>
										<xsl:if
											test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID = 'TRL'">
											<xsl:text>TL</xsl:text>
										</xsl:if>
										<xsl:if
											test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID != 'TRL'">
											<xsl:value-of
												select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID"
											/>
										</xsl:if>
									</xsl:if>
								</span>
							</td>
						</tr>
						<tr id="budgetContainerTr" align="right">
							<td id="budgetContainerDummyTd"/>
							<td id="lineTableBudgetTd" align="right" width="200px">
								<span style="font-weight:bold; ">
									<xsl:text>Toplam İskonto</xsl:text>
								</span>
							</td>
							<td id="lineTableBudgetTd" style="width:81px; " align="right">
								<span>
									<xsl:value-of
										select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount, '###.##0,00', 'european')"/>
									<xsl:if
										test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID">
										<xsl:text> </xsl:text>
										<xsl:if
											test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID = 'TRL'">
											<xsl:text>TL</xsl:text>
										</xsl:if>
										<xsl:if
											test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID != 'TRL'">
											<xsl:value-of
												select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID"
											/>
										</xsl:if>
									</xsl:if>
								</span>
							</td>
						</tr>
						<xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
							<tr id="budgetContainerTr" align="right">
								<xsl:choose>
									<xsl:when test="cac:TaxCategory/cbc:TaxExemptionReason">
										<td id="budgetContainerDummyTd"/>
										<td id="lineTableBudgetTd" width="211px" align="right">
											<span style="font-weight:bold; ">
												<xsl:text>Vergi Muafiyet Sebebi </xsl:text>
											</span>
										</td>
										<td id="lineTableBudgetTd" style="width:82px; "
											align="right">
											<xsl:text> </xsl:text>
											<xsl:value-of
												select="cac:TaxCategory/cbc:TaxExemptionReason"/>
										</td>
									</xsl:when>
									<xsl:otherwise>
										<td id="budgetContainerDummyTd"/>
										<td id="lineTableBudgetTd" width="211px" align="right">
											<span style="font-weight:bold; ">
												<xsl:text>Hesaplanan </xsl:text>
												<xsl:value-of
												select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
												<xsl:text>(%</xsl:text>
												<xsl:value-of select="cbc:Percent"/>
												<xsl:text>)</xsl:text>
											</span>
										</td>
										<td id="lineTableBudgetTd" style="width:82px; "
											align="right">
											<xsl:for-each select="cac:TaxCategory/cac:TaxScheme">
												<xsl:text> </xsl:text>
												<xsl:value-of
												select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
												<xsl:if test="../../cbc:TaxAmount/@currencyID">
												<xsl:text> </xsl:text>
												<xsl:if
												test="../../cbc:TaxAmount/@currencyID = 'TRL'">
												<xsl:text>TL</xsl:text>
												</xsl:if>
												<xsl:if
												test="../../cbc:TaxAmount/@currencyID != 'TRL'">
												<xsl:value-of
												select="../../cbc:TaxAmount/@currencyID"/>
												</xsl:if>
												</xsl:if>
											</xsl:for-each>
										</td>
									</xsl:otherwise>

								</xsl:choose>
							</tr>
						</xsl:for-each>
						<tr id="budgetContainerTr" align="right">
							<td id="budgetContainerDummyTd"/>
							<td id="lineTableBudgetTd" width="200px" align="right">
								<span style="font-weight:bold; ">
									<xsl:text>Vergiler Dahil Toplam Tutar</xsl:text>
								</span>
							</td>
							<td id="lineTableBudgetTd" style="width:82px; " align="right">
								<xsl:for-each select="n1:Invoice">
									<xsl:for-each select="cac:LegalMonetaryTotal">
										<xsl:for-each select="cbc:TaxInclusiveAmount">
											<xsl:value-of
												select="format-number(., '###.##0,00', 'european')"/>
											<xsl:if
												test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID">
												<xsl:text> </xsl:text>
												<xsl:if
												test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID = 'TRL'">
												<xsl:text>TL</xsl:text>
												</xsl:if>
												<xsl:if
												test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID != 'TRL'">
												<xsl:value-of
												select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID"
												/>
												</xsl:if>
											</xsl:if>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</td>
						</tr>
						<tr id="budgetContainerTr" align="right">
							<td id="budgetContainerDummyTd"/>
							<td id="lineTableBudgetTd" width="200px" align="right">
								<span style="font-weight:bold; ">
									<xsl:text>Ödenecek Tutar</xsl:text>
								</span>
							</td>
							<td id="lineTableBudgetTd" style="width:82px; " align="right">
								<xsl:for-each select="n1:Invoice">
									<xsl:for-each select="cac:LegalMonetaryTotal">
										<xsl:for-each select="cbc:PayableAmount">
											<xsl:value-of
												select="format-number(., '###.##0,00', 'european')"/>
											<xsl:if
												test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID">
												<xsl:text> </xsl:text>
												<xsl:if
												test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID = 'TRL'">
												<xsl:text>TL</xsl:text>
												</xsl:if>
												<xsl:if
												test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID != 'TRL'">
												<xsl:value-of
												select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID"
												/>
												</xsl:if>
											</xsl:if>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</td>
						</tr>
					</table>
					<table border="1" id="notesTable" width="800" align="left" height="100" style="margin-bottom: 10px;">
						<tbody>
							<tr align="left">
								<td id="notesTableTd">
									<xsl:if test="//n1:Invoice/cbc:Note">
										<b>Not: </b>
										<xsl:value-of select="//n1:Invoice/cbc:Note"/>
										<br/>
									</xsl:if>
								</td>
							</tr>
							{{NOTES.FIRST}}
							{{NOTES.SECOND}}
							{{NOTES.THIRD}}
						</tbody>
					</table>
					<br/>
					{{BANKINFO}}
				</div>
			</body>

		</html>
	</xsl:template>
	<xsl:template match="dateFormatter">
		<xsl:value-of select="substring(., 9, 2)"/> - <xsl:value-of select="substring(., 6, 2)"/> -
			<xsl:value-of select="substring(., 1, 4)"/>
	</xsl:template>
	<xsl:template match="//n1:Invoice/cac:InvoiceLine">
		<tr>
			<td width="8%" align="center">
				<span class="bas">
					<xsl:text>&#160;</xsl:text>
					<xsl:value-of select="./cbc:ID"/>
				</span>
			</td>
			<td width="25%">
				<span class="bas">
					<xsl:text>&#160;</xsl:text>
					<xsl:value-of select="./cac:Item/cbc:Name"/>
				</span>
			</td>
			<td width="8%" align="right">
				<span class="bas">
					<xsl:text>&#160;</xsl:text>
					<xsl:value-of
						select="format-number(./cbc:InvoicedQuantity, '###.###,##', 'european')"/>
					<xsl:if test="./cbc:InvoicedQuantity/@unitCode">
						<xsl:for-each select="./cbc:InvoicedQuantity">
							<xsl:text> </xsl:text>
							<xsl:choose>
								<xsl:when test="@unitCode = '26'">
									<span class="bas">
										<xsl:text>Ton</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'BX'">
									<span class="bas">
										<xsl:text>Kutu</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'NIU'">
									<span class="bas">
										<xsl:text>Adet</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'KGM'">
									<span class="bas">
										<xsl:text>KG</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'KJO'">
									<span class="bas">
										<xsl:text>kJ</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'GRM'">
									<span class="bas">
										<xsl:text>G</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'MGM'">
									<span class="bas">
										<xsl:text>MG</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'NT'">
									<span class="bas">
										<xsl:text>Net Ton</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'GT'">
									<span class="bas">
										<xsl:text>GT</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'MTR'">
									<span class="bas">
										<xsl:text>M</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'MMT'">
									<span class="bas">
										<xsl:text>MM</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'KTM'">
									<span class="bas">
										<xsl:text>KM</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'MLT'">
									<span class="bas">
										<xsl:text>ML</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'MMQ'">
									<span class="bas">
										<xsl:text>MM3</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'CLT'">
									<span class="bas">
										<xsl:text>CL</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'CMK'">
									<span class="bas">
										<xsl:text>CM2</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'CMQ'">
									<span class="bas">
										<xsl:text>CM3</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'CMT'">
									<span class="bas">
										<xsl:text>CM</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'MTK'">
									<span class="bas">
										<xsl:text>M2</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'MTQ'">
									<span class="bas">
										<xsl:text>M3</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'DAY'">
									<span class="bas">
										<xsl:text> Gün</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'MON'">
									<span class="bas">
										<xsl:text> Ay</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'PA'">
									<span class="bas">
										<xsl:text> Paket</xsl:text>
									</span>
								</xsl:when>
								<xsl:when test="@unitCode = 'KWH'">
									<span class="bas">
										<xsl:text> KWH</xsl:text>
									</span>
								</xsl:when>
							</xsl:choose>
						</xsl:for-each>
					</xsl:if>
				</span>
			</td>
			<!--iskonto -->
			<td width="4%" align="right">
				<span class="bas">
					<xsl:text>&#160;</xsl:text>
					<xsl:if test="./cac:AllowanceCharge/cbc:MultiplierFactorNumeric">
						<xsl:text> %</xsl:text>
						<xsl:value-of
							select="format-number(./cac:AllowanceCharge/cbc:MultiplierFactorNumeric * 100, '###.##0,00', 'european')"
						/>
					</xsl:if>
				</span>
			</td>
			<td width="8%" align="right">
				<span class="bas">
					<xsl:text>&#160;</xsl:text>
					<xsl:if test="./cac:AllowanceCharge">
						<!--<xsl:if test="./cac:AllowanceCharge/cbc:ChargeIndicator = true() ">+
										</xsl:if>
						<xsl:if test="./cac:AllowanceCharge/cbc:ChargeIndicator = false() ">-
										</xsl:if>-->
						<xsl:value-of
							select="format-number(./cac:AllowanceCharge/cbc:Amount, '###.##0,00', 'european')"
						/>
					</xsl:if>
					<xsl:if test="./cac:AllowanceCharge/cbc:Amount/@currencyID">
						<xsl:text> </xsl:text>
						<xsl:if test="./cac:AllowanceCharge/cbc:Amount/@currencyID = 'TRL'">
							<xsl:text>TL</xsl:text>
						</xsl:if>
						<xsl:if test="./cac:AllowanceCharge/cbc:Amount/@currencyID != 'TRL'">
							<xsl:value-of select="./cac:AllowanceCharge/cbc:Amount/@currencyID"/>
						</xsl:if>
					</xsl:if>
				</span>
			</td>
			<td width="6%" align="right">
				<span class="bas">
					<xsl:text>&#160;</xsl:text>
					<xsl:for-each
						select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
						<xsl:if test="cbc:TaxTypeCode = '0015'">
							<xsl:text> </xsl:text>
							<xsl:if test="../../cbc:Percent">
								<xsl:text/>
								<xsl:value-of
									select="format-number(../../cbc:Percent, '###.##0,00', 'european')"
								/>
							</xsl:if>
						</xsl:if>
					</xsl:for-each>
				</span>
			</td>
			<!--iskonto -->
			<td width="10%" align="right">
				<span class="bas">
					<xsl:text>&#160;</xsl:text>
					<xsl:value-of
						select="format-number(./cac:Price/cbc:PriceAmount, '###.##0,00', 'european')"/>
					<xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID">
						<xsl:text> </xsl:text>
						<xsl:if test='./cac:Price/cbc:PriceAmount/@currencyID = "TRL"'>
							<xsl:text>TL</xsl:text>
						</xsl:if>
						<xsl:if test='./cac:Price/cbc:PriceAmount/@currencyID != "TRL"'>
							<xsl:value-of select="./cac:Price/cbc:PriceAmount/@currencyID"/>
						</xsl:if>
					</xsl:if>
				</span>
			</td>
			<td width="10%" align="right">
				<span class="bas">
					<xsl:text>&#160;</xsl:text>
					<xsl:value-of
						select="format-number(./cbc:LineExtensionAmount, '###.##0,00', 'european')"/>
					<xsl:if test="./cbc:LineExtensionAmount/@currencyID">
						<xsl:text> </xsl:text>
						<xsl:if test='./cbc:LineExtensionAmount/@currencyID = "TRL"'>
							<xsl:text>TL</xsl:text>
						</xsl:if>
						<xsl:if test='./cbc:LineExtensionAmount/@currencyID != "TRL"'>
							<xsl:value-of select="./cbc:LineExtensionAmount/@currencyID"/>
						</xsl:if>
					</xsl:if>
				</span>
			</td>
			<td width="20%" align="right">
				<span class="basd">
					<xsl:text>&#160;</xsl:text>
					<xsl:for-each
						select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
						<xsl:if test="cbc:TaxTypeCode != '0015'">
							<xsl:text> </xsl:text>
							<xsl:value-of select="cbc:Name"/>
							<xsl:if test="../../cbc:Percent">
								<xsl:text> (%</xsl:text>
								<xsl:value-of
									select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
								<xsl:text>)=</xsl:text>
							</xsl:if>
							<xsl:value-of
								select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
							<xsl:if test="../../cbc:TaxAmount/@currencyID">
								<xsl:text> </xsl:text>
								<xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRL'">
									<xsl:text>TL</xsl:text>
								</xsl:if>
								<xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRL'">
									<xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
								</xsl:if>
							</xsl:if>
						</xsl:if>
					</xsl:for-each>
				</span>
			</td>
		</tr>
	</xsl:template>
	<xsl:template match="//n1:Invoice">
		<tr>
			<td colspan="6">
				<span class="bas">
					<xsl:text>&#160;</xsl:text>
				</span>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>

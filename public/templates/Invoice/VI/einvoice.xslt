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

									{{LOGO}}


									<table align="center" border="0" width="100%">
										<tbody>
											<tr align="center" valign="top">
												<xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">
													<td align="center">
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
											<tr align="center" valign="top">
												<xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">
												<td align="center">
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
												<tr align="center" valign="top">
													<xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">														
														<td align="center">
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
												<tr align="center" valign="top">
												<td>
												<xsl:text>Web Sitesi: </xsl:text>
												<xsl:value-of select="."/>
												</td>
												</tr>
											</xsl:for-each>
											<xsl:for-each
												select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:ElectronicMail">
												<tr align="center" valign="top">
												<td>
												<xsl:text>E-Posta: </xsl:text>
												<xsl:value-of select="."/>
												</td>
												</tr>
											</xsl:for-each>
											<tr align="center" valign="top">
												<xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">																											
													<td align="center">
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
												<tr align="center" valign="top">
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
								<td width="20%" valign="bottom" align="center"></td>
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
											<tr style="height:118px;" align="center" valign="top">
												<td width="40%" align="right" valign="bottom">
													<div class="hr" style="margin-top:10px;margin-bottom:5px"></div>
													
													<table align="center" border="0">
														<tbody>
															<tr>
																<xsl:for-each select="n1:Invoice/cac:AccountingCustomerParty/cac:Party">
																	<td style="width:469px; " align="left">
																		<span style="font-weight:bold; ">
																			<xsl:text>SAYIN</xsl:text>
																		</span>
																	</td>
																</xsl:for-each>													
															</tr>
															<tr align="center" valign="top">
																<xsl:choose>
																	<xsl:when test="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='PARTYTYPE' and text()='TAXFREE']">
																		<xsl:for-each select="n1:Invoice/cac:BuyerCustomerParty/cac:Party">
																			<xsl:call-template name="Party_Title">
																				<xsl:with-param name="PartyType">TAXFREE</xsl:with-param>
																			</xsl:call-template>
																		</xsl:for-each>															
																	</xsl:when>
																	<xsl:when test="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='PARTYTYPE' and text()='EXPORT']">
																		<xsl:for-each select="n1:Invoice/cac:BuyerCustomerParty/cac:Party">
																			<xsl:call-template name="Party_Title">
																				<xsl:with-param name="PartyType">EXPORT</xsl:with-param>
																			</xsl:call-template>
																		</xsl:for-each>															
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:for-each select="n1:Invoice/cac:AccountingCustomerParty/cac:Party">
																			<xsl:call-template name="Party_Title">
																				<xsl:with-param name="PartyType">OTHER</xsl:with-param>
																			</xsl:call-template>
																		</xsl:for-each>															
																	</xsl:otherwise>
																</xsl:choose>													
															</tr>
															<xsl:choose>
																<xsl:when test="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='PARTYTYPE' and text()='TAXFREE']">
																	<xsl:for-each select="n1:Invoice/cac:BuyerCustomerParty/cac:Party">
																		<tr  align="center" valign="top">
																			<xsl:call-template name="Party_Adress">
																				<xsl:with-param name="PartyType">TAXFREE</xsl:with-param>
																			</xsl:call-template>
																		</tr>
																		<xsl:call-template name="Party_Other">
																			<xsl:with-param name="PartyType">TAXFREE</xsl:with-param>
																		</xsl:call-template>
																	</xsl:for-each>															
																</xsl:when>
																<xsl:when test="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='PARTYTYPE' and text()='EXPORT']">
																	<xsl:for-each select="n1:Invoice/cac:BuyerCustomerParty/cac:Party">
																		<tr  align="center" valign="top">
																			<xsl:call-template name="Party_Adress">
																				<xsl:with-param name="PartyType">EXPORT</xsl:with-param>
																			</xsl:call-template>
																		</tr>
																		<xsl:call-template name="Party_Other">
																			<xsl:with-param name="PartyType">EXPORT</xsl:with-param>
																		</xsl:call-template>
																	</xsl:for-each>															
																</xsl:when>
																<xsl:otherwise>
																	<xsl:for-each select="n1:Invoice/cac:AccountingCustomerParty/cac:Party">
																		<tr  align="center" valign="top">
																			<xsl:call-template name="Party_Adress">
																				<xsl:with-param name="PartyType">OTHER</xsl:with-param>																	
																			</xsl:call-template>
																		</tr>
																		<xsl:call-template name="Party_Other">
																			<xsl:with-param name="PartyType">OTHER</xsl:with-param>
																		</xsl:call-template>
																	</xsl:for-each>
																</xsl:otherwise>
															</xsl:choose>																										
														</tbody>
													</table>
													<div class="hr" style="margin-top:5px;"></div>
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
											src="data:image/jpeg;base64,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"/>
										<h1 align="center">
											<span style="font-weight:bold;">e-Fatura</span>
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
								<th class="lineTableTd"><xsl:text>Sıra No</xsl:text></th>
								<th class="lineTableTd"><xsl:text>Mal Hizmet</xsl:text></th>
								<xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:Item/cbc:Description">
									<th  class="lineTableTd">
										<xsl:text>Açıklama</xsl:text>
									</th>
								</xsl:if>
								<xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:Item/cac:BuyersItemIdentification/cbc:ID">
									<th  class="lineTableTd">
										<xsl:text>Alıcı Ürün Kodu</xsl:text>
									</th>
								</xsl:if>
								<xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:Item/cac:SellersItemIdentification/cbc:ID">
									<th class="lineTableTd">
										<xsl:text>Satıcı Ürün Kodu</xsl:text>
									</th>
								</xsl:if>
								<th class="lineTableTd"><xsl:text>Miktar</xsl:text></th>
								<th class="lineTableTd"><xsl:text>Birim Fiyat</xsl:text></th>
								<xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:AllowanceCharge/cbc:MultiplierFactorNumeric and //n1:Invoice/cac:InvoiceLine/cac:AllowanceCharge/cbc:MultiplierFactorNumeric !=0">
									<th class="lineTableTd">
										<xsl:text>İskonto Oranı</xsl:text>
									</th>
								</xsl:if>
								<xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:AllowanceCharge">
									<th class="lineTableTd">
										<xsl:text>İskonto Tutarı</xsl:text>
									</th>
								</xsl:if>
								<th class="lineTableTd"><xsl:text>KDV Oranı</xsl:text></th>
								<th class="lineTableTd"><xsl:text>KDV Tutarı</xsl:text></th>
								<xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode !='0015' or //n1:Invoice/cac:WithholdingTaxTotal">
									<th class="lineTableTd"><xsl:text>Diğer Vergiler</xsl:text></th>
								</xsl:if>
								<th class="lineTableTd"><xsl:text>Mal Hizmet Tutarı</xsl:text></th>
								<xsl:if test="//n1:Invoice/cbc:ProfileID='IHRACAT'">
									<th class="lineTableTd"><xsl:text>Teslim Şartı</xsl:text></th>									
									<th class="lineTableTd"><xsl:text>Eşya Kap Cinsi</xsl:text></th>									
									<th class="lineTableTd"><xsl:text>Kap No</xsl:text></th>									
									<th class="lineTableTd"><xsl:text>Kap Adet</xsl:text></th>									
									<th class="lineTableTd"><xsl:text>Teslim/Bedel Ödeme Yeri</xsl:text></th>									
									<th class="lineTableTd"><xsl:text>Gönderilme Şekli</xsl:text></th>									
									<th class="lineTableTd"><xsl:text>GTİP</xsl:text></th>									
								</xsl:if>
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
							<table class="budgetContainerTable" width="337" style="width:337px;" border="1">
								<tr align="right">
									<td align="right" width="200px">
										<span style="font-weight:bold; ">
											<xsl:text>Mal Hizmet Toplam Tutarı</xsl:text>
										</span>
									</td>
									<td style="width:80px; " align="right">
										<xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount">
											<xsl:call-template name="Curr_Type"/>
										</xsl:for-each>
									</td>
								</tr>
								<xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
									<xsl:if test="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = '4171'">
										<tr align="right">
											<td  align="right" width="200px">
												<span style="font-weight:bold; ">
													<xsl:text>Teslim Bedeli</xsl:text>
												</span>
											</td>
											<td  style="width:81px; " align="right">
												<xsl:for-each select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount">
													<xsl:call-template name="Curr_Type"/>
												</xsl:for-each>
											</td>
										</tr>
									</xsl:if>
								</xsl:for-each>
								<tr align="right">
									<td  align="right" width="200px">
										<span style="font-weight:bold; ">
											<xsl:text>Toplam İskonto</xsl:text>
										</span>
									</td>
									<td  style="width:81px; " align="right">
										<xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount">
											<xsl:call-template name="Curr_Type"/>
										</xsl:for-each>
									</td>
								</tr>
								<xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
									<tr align="right">
										<td  width="211px" align="right">
											<span style="font-weight:bold; ">
												<xsl:text>Hesaplanan </xsl:text>
												<xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
												<xsl:if test="../../cbc:InvoiceTypeCode!='OZELMATRAH'">
													<xsl:text>(%</xsl:text>
													<xsl:value-of select="cbc:Percent"/>
													<xsl:text>)</xsl:text>
												</xsl:if>
											</span>
										</td>
										<td  style="width:82px; " align="right">
											<xsl:if test="../../cbc:InvoiceTypeCode='OZELMATRAH'">
												<xsl:text> </xsl:text>
												<xsl:text>DAHİLDİR</xsl:text>
											</xsl:if>
											<xsl:if test="../../cbc:InvoiceTypeCode!='OZELMATRAH'">
												<xsl:for-each select="cac:TaxCategory/cac:TaxScheme">
													<xsl:text> </xsl:text>
													<xsl:value-of
														select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
													<xsl:if test="../../cbc:TaxAmount/@currencyID">
														<xsl:text> </xsl:text>
														<xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRL' or ../../cbc:TaxAmount/@currencyID = 'TRY'">
															<xsl:text>TL</xsl:text>
														</xsl:if>
														<xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRL' and ../../cbc:TaxAmount/@currencyID != 'TRY'">
															<xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
														</xsl:if>
													</xsl:if>
												</xsl:for-each>
											</xsl:if>
										</td>
									</tr>
								</xsl:for-each>
								<xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
									<xsl:if test="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = '4171'">
										<tr align="right">
											<td  align="right" width="200px">
												<span style="font-weight:bold; ">
													<xsl:text>KDV Matrahı</xsl:text>
												</span>
											</td>
											<td  style="width:81px; " align="right">
												<xsl:value-of
														select="format-number(sum(//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=0015]/cbc:TaxableAmount), '###.##0,00', 'european')"/>										
												<xsl:if
													test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID">
													<xsl:text> </xsl:text>
													<xsl:if
														test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID = 'TRL' or //n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID = 'TRY'">
														<xsl:text>TL</xsl:text>
													</xsl:if>
													<xsl:if
														test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID != 'TRL' and //n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID != 'TRY'">
														<xsl:value-of
															select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID"
														/>
													</xsl:if>
												</xsl:if>
											</td>
										</tr>
										<tr align="right">
											<td  align="right" width="200px">
												<span style="font-weight:bold; ">
													<xsl:text>Tevkifat Dahil Toplam Tutar</xsl:text>
												</span>
											</td>
											<td  style="width:81px; " align="right">
												<xsl:for-each select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount">
													<xsl:call-template name="Curr_Type"/>
												</xsl:for-each>
											</td>
										</tr>
										<tr align="right">
											<td  align="right" width="200px">
												<span style="font-weight:bold; ">
													<xsl:text>Tevkifat Hariç Toplam Tutar</xsl:text>
												</span>
											</td>
											<td  style="width:81px; " align="right">
												<xsl:for-each select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount">
													<xsl:call-template name="Curr_Type"/>
												</xsl:for-each>
											</td>
										</tr>
									</xsl:if>						
								</xsl:for-each>
								<xsl:for-each select="n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal">
									<tr align="right">
										<td  width="211px" align="right">
											<span style="font-weight:bold; ">
												<xsl:text>Hesaplanan KDV Tevkifat</xsl:text>
												<xsl:text>(%</xsl:text>
												<xsl:value-of select="cbc:Percent"/>
												<xsl:text>)</xsl:text>
											</span>
										</td>
										<td  style="width:82px; " align="right">
											<xsl:for-each select="cac:TaxCategory/cac:TaxScheme">
												<xsl:text> </xsl:text>
												<xsl:value-of
													select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
												<xsl:if test="../../cbc:TaxAmount/@currencyID">
													<xsl:text> </xsl:text>
													<xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRL' or ../../cbc:TaxAmount/@currencyID = 'TRY'">
														<xsl:text>TL</xsl:text>
													</xsl:if>
													<xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRL' and ../../cbc:TaxAmount/@currencyID != 'TRY'">
														<xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
													</xsl:if>
												</xsl:if>
											</xsl:for-each>
										</td>
									</tr>
								</xsl:for-each>
								<xsl:if
									test="sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=9015]/cbc:TaxableAmount)>0">
									<tr align="right">
										<td  width="211px" align="right">
											<span style="font-weight:bold; ">
												<xsl:text>Tevkifata Tabi İşlem Tutarı</xsl:text>
											</span>
										</td>
										<td  style="width:82px; " align="right">
											<xsl:value-of
												select="format-number(sum(n1:Invoice/cac:InvoiceLine[cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=9015]/cbc:LineExtensionAmount), '###.##0,00', 'european')"/>
											<xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode = 'TRL'">
												<xsl:text>TL</xsl:text>
											</xsl:if>
											<xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode != 'TRL'">
												<xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode"/>
											</xsl:if>
										</td>
									</tr>
									<tr align="right">
										<td  width="211px" align="right">
											<span style="font-weight:bold; ">
												<xsl:text>Tevkifata Tabi İşlem Üzerinden Hes. KDV</xsl:text>
											</span>
										</td>
										<td  style="width:82px; " align="right">
											<xsl:value-of
												select="format-number(sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=9015]/cbc:TaxableAmount), '###.##0,00', 'european')"/>
											<xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode = 'TRL'">
												<xsl:text>TL</xsl:text>
											</xsl:if>
											<xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode != 'TRL'">
												<xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode"/>
											</xsl:if>
										</td>
									</tr>
								</xsl:if>					
								<xsl:if test = "n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]">
									<tr align="right">
										<td  width="211px" align="right">
											<span style="font-weight:bold; ">
												<xsl:text>Tevkifata Tabi İşlem Tutarı</xsl:text>
											</span>
										</td>
										<td  style="width:82px; " align="right">
											<xsl:if test = "n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]">
												<xsl:value-of
													select="format-number(sum(n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]/cbc:LineExtensionAmount), '###.##0,00', 'european')"/>
											</xsl:if>
											<xsl:if test = "//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=&apos;9015&apos;">
												<xsl:value-of
													select="format-number(sum(n1:Invoice/cac:InvoiceLine[cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=9015]/cbc:LineExtensionAmount), '###.##0,00', 'european')"/>
											</xsl:if>								
											<xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode = 'TRL' or n1:Invoice/cbc:DocumentCurrencyCode = 'TRY'">
												<xsl:text>TL</xsl:text>
											</xsl:if>
											<xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode != 'TRL' and n1:Invoice/cbc:DocumentCurrencyCode != 'TRY'">
												<xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode"/>
											</xsl:if>
										</td>
									</tr>
									<tr align="right">
										<td  width="211px" align="right">
											<span style="font-weight:bold; ">
												<xsl:text>Tevkifata Tabi İşlem Üzerinden Hes. KDV</xsl:text>
											</span>
										</td>
										<td  style="width:82px; " align="right">
											<xsl:if test = "n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]">
												<xsl:value-of
													select="format-number(sum(n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme]/cbc:TaxableAmount), '###.##0,00', 'european')"/>
											</xsl:if>
											<xsl:if test = "//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=&apos;9015&apos;">
												<xsl:value-of
													select="format-number(sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=9015]/cbc:TaxableAmount), '###.##0,00', 'european')"/>
											</xsl:if>
											<xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode = 'TRL' or n1:Invoice/cbc:DocumentCurrencyCode = 'TRY'">
												<xsl:text>TL</xsl:text>
											</xsl:if>
											<xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode != 'TRL' and n1:Invoice/cbc:DocumentCurrencyCode != 'TRY'">
												<xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode"/>
											</xsl:if>
										</td>
									</tr>
								</xsl:if>
								<tr align="right">
									<td  width="200px" align="right">
										<span style="font-weight:bold; ">
											<xsl:text>Vergiler Dahil Toplam Tutar</xsl:text>
										</span>
									</td>
									<td  style="width:82px; " align="right">
										<xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount">
											<xsl:call-template name="Curr_Type"/>
										</xsl:for-each>
									</td>
								</tr>
								<tr align="right">
									<td  width="200px" align="right">
										<span style="font-weight:bold; ">
											<xsl:text>Ödenecek Tutar</xsl:text>
										</span>
									</td>
									<td  style="width:82px; " align="right">
										<xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount">
											<xsl:call-template name="Curr_Type"/>
										</xsl:for-each>
									</td>
								</tr>
									<xsl:if	test="//n1:Invoice/cac:PricingExchangeRate and //n1:Invoice/cbc:DocumentCurrencyCode != 'TRY' and //n1:Invoice/cbc:DocumentCurrencyCode != 'TRL'">
								<xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
									
										<tr align="right">
											<td  align="right" width="200px">
												<span style="font-weight:bold; ">
													<xsl:text>Hesaplanan </xsl:text>
													<xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
													<xsl:text>(%</xsl:text>
													<xsl:value-of select="cbc:Percent"/>
													<xsl:text>) (TL)</xsl:text>
												</span>
											</td>
											<td  style="width:81px; " align="right">
												<span>
													<xsl:value-of
														select="format-number(cbc:TaxAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
													<xsl:text> TL</xsl:text>
												</span>
											</td>
										</tr>
									
								</xsl:for-each>	
										</xsl:if>
								<xsl:if
									test="//n1:Invoice/cac:PricingExchangeRate and //n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID != 'TRL' and //n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID != 'TRY'">
									<tr align="right">
										<td  align="right" width="200px">
											<span style="font-weight:bold; ">
												<xsl:text>Mal Hizmet Toplam Tutarı(TL)</xsl:text>
											</span>
										</td>
										<td  style="width:81px; " align="right">
											<xsl:value-of
												select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
											<xsl:text> TL</xsl:text>
										</td>
									</tr>
									<tr align="right">
										<td  width="200px" align="right">
											<span style="font-weight:bold; ">
												<xsl:text>Vergiler Dahil Toplam Tutar(TL)</xsl:text>
											</span>
										</td>
										<td  style="width:82px; " align="right">
											<xsl:value-of
												select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
											<xsl:text> TL</xsl:text>
										</td>
									</tr>
									<tr align="right">
										<td  width="200px" align="right">
											<span style="font-weight:bold; ">
												<xsl:text>Ödenecek Tutar(TL)</xsl:text>
											</span>
										</td>
										<td  style="width:82px; " align="right">
											<xsl:value-of
												select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
											<xsl:text> TL</xsl:text>
										</td>
									</tr>
								</xsl:if>
							</table>

						</td>
					</tr>
				</table>

				{{BANKINFO}}

				<table class="notesTable" width="800" align="left" height="50" cellpadding="2"
					cellspacing="2"
					style="margin-top:10px;margin-bottom:10px;width:800px;text-align:left;">
					<tbody>
							<tr align="left">
								<td id="notesTableTd">
									<xsl:for-each select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
										<xsl:if	test="(cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode='0015' or ../../cbc:InvoiceTypeCode='OZELMATRAH') and cac:TaxCategory/cbc:TaxExemptionReason">									
											<b>Vergi İstisna Muafiyet Sebebi: </b>
											<xsl:value-of select="cac:TaxCategory/cbc:TaxExemptionReasonCode"/>
											<xsl:text>-</xsl:text>
											<xsl:value-of select="cac:TaxCategory/cbc:TaxExemptionReason"/>
											<br/>
										</xsl:if>
										<xsl:if	test="starts-with(cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode,'007') and cac:TaxCategory/cbc:TaxExemptionReason">									
											<b>ÖTV İstisna Muafiyet Sebebi: </b>
											<xsl:value-of select="cac:TaxCategory/cbc:TaxExemptionReasonCode"/>
											<xsl:text>-</xsl:text>
											<xsl:value-of select="cac:TaxCategory/cbc:TaxExemptionReason"/>
											<br/>
										</xsl:if>
									</xsl:for-each>
									<xsl:for-each select="//n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
										<b>Tevkifat Sebebi: </b>
										<xsl:value-of select="cbc:TaxTypeCode"/>
										<xsl:text>-</xsl:text>
										<xsl:value-of select="cbc:Name"/>
										<br/>
									</xsl:for-each>
									<xsl:for-each select="//n1:Invoice/cbc:Note">
										<b>Not: </b>
										<xsl:value-of select="."/>	
										<br/>
										<br/>
									</xsl:for-each>									
									<xsl:if test="//n1:Invoice/cac:PaymentMeans/cbc:InstructionNote">
										<b>Ödeme Notu: </b>
										<xsl:value-of
											select="//n1:Invoice/cac:PaymentMeans/cbc:InstructionNote"/>
										<br/>
									</xsl:if>
									<xsl:if
										test="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:PaymentNote">
										<b>Hesap Açıklaması: </b>
										<xsl:value-of
											select="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:PaymentNote"/>
										<br/>
									</xsl:if>
									<xsl:if test="//n1:Invoice/cac:PaymentTerms/cbc:Note">
										<b>Ödeme Koşulu: </b>
										<xsl:value-of select="//n1:Invoice/cac:PaymentTerms/cbc:Note"/>
										<br/>
									</xsl:if>
									<xsl:if test="//n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='PARTYTYPE']='TAXFREE' and //n1:Invoice/cac:TaxRepresentativeParty/cac:PartyTaxScheme/cbc:ExemptionReasonCode">
										<br/>
										<b>VAT OFF - NO CASH REFUND </b>
									</xsl:if>
								</td>
							</tr>
							{{NOTES.FIRST}}
			                {{NOTES.SECOND}}
			                {{NOTES.THIRD}}
						</tbody>
				</table>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="dateFormatter">
		<xsl:value-of select="substring(., 9, 2)"/> - <xsl:value-of select="substring(., 6, 2)"/> -
			<xsl:value-of select="substring(., 1, 4)"/>
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
</xsl:stylesheet>

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
	xmlns:ds="http://www.w3.org/2000/09/xmldsig#"
	xmlns:ns8="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2"
	xmlns:xades="http://uri.etsi.org/01903/v1.3.2#"
	exclude-result-prefixes="cac cbc ccts clm54217 clm5639 clm66411 clmIANAMIMEMediaType fn link n1 qdt udt xbrldi xbrli xdt xlink xs xsd xsi ext ds ns8 xades">
	<xsl:decimal-format name="european" decimal-separator="," grouping-separator="." NaN=""/>
	<xsl:output version="4.0" method="html" indent="no" encoding="UTF-8"
		doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN"
		doctype-system="http://www.w3.org/TR/html4/loose.dtd"/>
	<xsl:param name="SV_OutputFormat" select="'HTML'"/>
	<xsl:variable name="XML" select="/"/>
	<xsl:template match="/">


		<!-- XSLT_DEF:009a0efc4a11c82c75e5e643d7f150e2 -->
		<!--DEGISKENLER-->
		<xsl:variable name="ublversiyon" select="//n1:Invoice/cbc:UBLVersionID"/>
		<xsl:variable name="ublversiyon_str"
			select="concat(//n1:Invoice/cbc:CustomizationID, ' / UBL ', //n1:Invoice/cbc:UBLVersionID)"/>
		<xsl:variable name="ubl21">
			<xsl:choose>
				<xsl:when test="$ublversiyon = '2.1'">
					<xsl:value-of select="'1'"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="0"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="my_nl2">
			<xsl:text>&#xa;</xsl:text>
		</xsl:variable>
		<xsl:variable name="my_br">
			<xsl:text disable-output-escaping="yes">&lt;br/&gt;</xsl:text>
		</xsl:variable>
		<xsl:variable name="musteri_adi"
			select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyName/cbc:Name"/>
		<xsl:variable name="firma_adi"
			select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PartyName/cbc:Name"/>
		<xsl:variable name="firma_adresi"
			select="concat('', //n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:StreetName, '&#160;', //n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:BuildingName, '&#160;', //n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:BuildingNumber, '&#160;', //n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:PostalZone, '&#160;', $my_br, //n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:CitySubdivisionName, ' / ', //n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PostalAddress/cbc:CityName)"/>

		<xsl:variable name="fatura_no" select="//n1:Invoice/cbc:ID"/>
		<xsl:variable name="fatura_id" select="//n1:Invoice/cbc:UUID"/>
		<xsl:variable name="fatura_tarihi" select="//n1:Invoice/cbc:IssueDate"/>
		<xsl:variable name="fatura_zamani" select="//n1:Invoice/cbc:IssueTime"/>
		<xsl:variable name="fatura_tipi" select="//n1:Invoice/cbc:InvoiceTypeCode"/>
		<xsl:variable name="fatura_profili" select="//n1:Invoice/cbc:ProfileID"/>
		<xsl:variable name="fatura_doviz_kodu" select="//n1:Invoice/cbc:DocumentCurrencyCode"/>
		<xsl:variable name="fatura_dovizi">
			<xsl:choose>
				<xsl:when test="$fatura_doviz_kodu = 'TRL' or $fatura_doviz_kodu = 'TRY'">
					<xsl:value-of select="'TL'"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="//n1:Invoice/cbc:DocumentCurrencyCode"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>

		<xsl:variable name="firma_adi2">
			<xsl:text disable-output-escaping="yes">Test</xsl:text>
		</xsl:variable>
		<xsl:variable name="firma_adresi2">
			<xsl:text disable-output-escaping="yes">Adres Bilgisi Satır 1&lt;br&gt;Adres Bilgisi Satır 2</xsl:text>
		</xsl:variable>
		<xsl:variable name="firma_vkno_alt1">
			<xsl:for-each
				select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID">
				<xsl:if test="@schemeID = 'TCKN' and position() = 1">
					<xsl:value-of select="." disable-output-escaping="yes"/>
				</xsl:if>
			</xsl:for-each>
		</xsl:variable>
		<xsl:variable name="firma_vkno_alt2">
			<xsl:for-each
				select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID">
				<xsl:if test="@schemeID = 'VKN' and position() = 1">
					<xsl:value-of select="." disable-output-escaping="yes"/>
				</xsl:if>
			</xsl:for-each>
		</xsl:variable>
		<xsl:variable name="firma_vkno">
			<xsl:choose>
				<xsl:when test="$firma_vkno_alt1 and $firma_vkno_alt1 != ''">
					<xsl:value-of select="$firma_vkno_alt1" disable-output-escaping="yes"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$firma_vkno_alt2" disable-output-escaping="yes"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="firma_vkno2">
			<xsl:text disable-output-escaping="yes"><!--22229282302--></xsl:text>
		</xsl:variable>
		<xsl:variable name="firma_vdaire_alt1">
			<xsl:value-of
				select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:Name"
				disable-output-escaping="yes"/>
		</xsl:variable>
		<xsl:variable name="firma_vdaire_alt2">
			<xsl:text disable-output-escaping="yes"/>
		</xsl:variable>
		<xsl:variable name="firma_vdaire">
			<xsl:choose>
				<xsl:when test="$firma_vdaire_alt1 and $firma_vdaire_alt1 != ''">
					<xsl:value-of select="$firma_vdaire_alt1" disable-output-escaping="yes"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$firma_vdaire_alt2" disable-output-escaping="yes"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="firma_tel_alt1">
			<xsl:value-of
				select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telephone"
				disable-output-escaping="yes"/>
		</xsl:variable>
		<xsl:variable name="firma_tel_alt2">
			<xsl:text disable-output-escaping="yes"> 05556259955 --></xsl:text>
		</xsl:variable>
		<xsl:variable name="firma_tel">
			<xsl:choose>
				<xsl:when test="$firma_tel_alt1 and $firma_tel_alt1 != ''">
					<xsl:value-of select="$firma_tel_alt1" disable-output-escaping="yes"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$firma_tel_alt2" disable-output-escaping="yes"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="firma_fax_alt1">
			<xsl:value-of
				select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telefax"
				disable-output-escaping="yes"/>
		</xsl:variable>
		<xsl:variable name="firma_fax_alt2">
			<xsl:text disable-output-escaping="yes"><!--02163163444--></xsl:text>
		</xsl:variable>
		<xsl:variable name="firma_fax">
			<xsl:choose>
				<xsl:when test="$firma_fax_alt1 and $firma_fax_alt1 != ''">
					<xsl:value-of select="$firma_fax_alt1" disable-output-escaping="yes"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$firma_fax_alt2" disable-output-escaping="yes"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="firma_mersis_alt1">
			<xsl:value-of
				select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID = 'MERSISNO']"
				disable-output-escaping="yes"/>
		</xsl:variable>
		<xsl:variable name="firma_mersis_alt2">
			<xsl:text disable-output-escaping="yes"/>
		</xsl:variable>
		<xsl:variable name="firma_mersis">
			<xsl:choose>
				<xsl:when test="$firma_mersis_alt1 and $firma_mersis_alt1 != ''">
					<xsl:value-of select="$firma_mersis_alt1" disable-output-escaping="yes"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$firma_mersis_alt2" disable-output-escaping="yes"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="firma_email_alt1">
			<xsl:value-of
				select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:ElectronicMail"
				disable-output-escaping="yes"/>
		</xsl:variable>
		<xsl:variable name="firma_email_alt2">
			<xsl:text disable-output-escaping="yes">ozgurguler@gmail.com</xsl:text>
		</xsl:variable>
		<xsl:variable name="firma_email">
			<xsl:choose>
				<xsl:when test="$firma_email_alt1 and $firma_email_alt1 != ''">
					<xsl:value-of select="$firma_email_alt1" disable-output-escaping="yes"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$firma_email_alt2" disable-output-escaping="yes"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="firma_web_alt1">
			<xsl:value-of select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cbc:WebsiteURI"
				disable-output-escaping="yes"/>
		</xsl:variable>
		<xsl:variable name="firma_web_alt2">
			<xsl:text disable-output-escaping="yes">www.ozgurguler.net</xsl:text>
		</xsl:variable>
		<xsl:variable name="firma_web">
			<xsl:choose>
				<xsl:when test="$firma_web_alt1 and $firma_web_alt1 != ''">
					<xsl:value-of select="$firma_web_alt1" disable-output-escaping="yes"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$firma_web_alt2" disable-output-escaping="yes"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="firma_ticaretno_alt1">
			<xsl:value-of
				select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID = 'TICARETSICILNO']"
				disable-output-escaping="yes"/>
		</xsl:variable>
		<xsl:variable name="firma_ticaretno_alt2">
			<xsl:text disable-output-escaping="yes"/>
		</xsl:variable>
		<xsl:variable name="firma_ticaretno">
			<xsl:choose>
				<xsl:when test="$firma_ticaretno_alt1 and $firma_ticaretno_alt1 != ''">
					<xsl:value-of select="$firma_ticaretno_alt1" disable-output-escaping="yes"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$firma_ticaretno_alt2" disable-output-escaping="yes"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="satir_sayisi" select="count(//n1:Invoice/cac:InvoiceLine)"/>
		<xsl:variable name="bos_satir" select="20 - count(//n1:Invoice/cac:InvoiceLine)"/>
		<xsl:variable name="bos_satir_olsun" select="0"/>
		<html>
			<title><xsl:value-of select="$musteri_adi"/> Fatura No:<xsl:value-of select="$fatura_no"
				/></title>
			<head>
				<style type="text/css">
					*{
					    font-family: "Tahoma", "Times New Roman", Times, serif;
					    font-size: 10px;
					    color: #353432;
					}
					body{
					    margin: 0px;
					    padding: 0px;
					    padding-left: 4px;
					}
					.page_container{
					    width: 800px;
					}
					.pw{
					    width: 800px;
					}
					.fatura_head_table{
					}
					img.logo{
					    border: 0px;
					}
					.firma_adi{
					    display: block;
					    color: #2c4e73;
					    font-size: 1.2em;
					    font-weight: bold;
					    margin-top: 10px;
					}
					.firma_adresi{
					    display: block;
					}
					.cerceve_ust{
					    position: relative;
					    width: 400px;
					    height: 15px;
					    margin-top: 5px;
					}
					.cerceve_alt{
					    position: relative;
					    width: 400px;
					    height: 15px;
					    margin-bottom: 5px;
					}
					span.cerceve_box{
					    display: inline-block;
					    width: 15px;
					    height: 15px;
					}
					.corner_tl{
					    position: absolute;
					    top: 0px;
					    left: 0px;
					    border: 0px none;
					    border-top: 2px solid #2c4e73;
					    border-left: 2px solid #2c4e73;
					}
					.corner_tr{
					    position: absolute;
					    top: 0px;
					    right: 0px;
					    border: 0px none;
					    border-top: 2px solid #2c4e73;
					    border-right: 2px solid #2c4e73;
					}
					.corner_bl{
					    position: absolute;
					    top: 0px;
					    left: 0px;
					    border: 0px none;
					    border-bottom: 2px solid #2c4e73;
					    border-left: 2px solid #2c4e73;
					}
					.corner_br{
					    position: absolute;
					    top: 0px;
					    right: 0px;
					    border: 0px none;
					    border-bottom: 2px solid #2c4e73;
					    border-right: 2px solid #2c4e73;
					}
					.cerceve_orta{
					    padding-right: 10px;
					    padding-left: 10px;
					    padding-top: 0px;
					    padding-bottom: 0px;
					}
					.efatura_cap_div{
					    border-radius: 6px;
					    width: 100%;
					    padding: 8px;
					    background: #2c4e73;
					    color: #ffffff
					}
					.firma_vd{
					}
					.pair_key{
					    display: inline-block;
					    width: 100px;
					    font-weight: bold;
					}
					.pair_seperator{
					    display: inline-block;
					    width: 10px;
					    text-align: left;
					}
					.pair_value{
					    display: inline-block;
					}
					.cerceve{
					    border-radius: 6px;
					    border: 1px solid #2c4e73;
					    margin-top: 5px;
					    margin-bottom: 5px;
					    width: 100%;
					}
					.pad6px,
					.pad6x{
					    padding: 6px;
					}
					.pad10px,
					.pad10x{
					    padding: 10px;
					}
					.tablo_satir{
					    width: 800px;
					    border-spacing: 0px;
					}
					td{
					    vertical-align: top;
					}
					.alt_toplam_tablosu{
					    width: 800px;
					}
					.alt_toplam_key{
					    display: inline-block;
					    width: 250px;
					    font-weight: bold;
					}
					.alt_toplam_sep{
					    display: inline-block;
					}
					.alt_toplam_val{
					    display: inline-block;
					    width: 120px;
					    margin-left: 3px;
					    text-align: right
					}
					.toplam_satiri{
					    padding: 3px;
					}
					.row_banka{
					    font-weight: bold;
					    color: #649726;
					}
					a{
					    text-decoration: none;
					    color: #649726;
					}
					a:hover{
					    font-weight: bold;
					    color: #2c4e73;
					}
					.alt_toplam_key{
					    color: #4e4d49;
					}
					.alt_toplam_val{
					    color: #4e4d49;
					}
					.fatura_not_container{
					    color: #649726;
					}
					.satir_miktar span{
					    white-space: nowrap;
					}
					span.span_satir_miktar{
					    white-space: nowrap !important;
					    display: inline-block !important;
					}
					span.span_satir_miktar span{
					    display: inline !important;
					}
					.span_satir_bfiyat,
					.span_satir_kdv_oran,
					.span_satir_kdv_tutar,
					.span_satir_toplam,
					span.span_satir_miktar{
					    white-space: nowrap !important;
					    display: block !important;
					    text-align: right
					}
					.fatura_bilgi{
					    min-width: 210px !important;
					}
					.row_banka_cap{
					    display: inline-block;
					    width: 100px;
					}
					.row_banka_cap2{
					    display: inline-block;
					    width: 160px;
					}
					.row_banka_cap3{
					    display: inline-block;
					    width: 220px;
					}
					.row_banka_cap4{
					    display: inline-block;
					    width: 350px;
					}
					.row_banka{
					    margin-bottom: 5px;
					}
					.row_banka_sep{
					    display: inline-block;
					    width: 10px;
					}
					.fatura_not_container_w_box{
					    border: 1px solid #2c4e73;
					    padding: 8px;
					    border-radius: 6px;
					    margin-top: 4px;
					    overflow: visible;
					    overflow-wrap: break-word;
					    word-wrap: break-word;
					    max-width: 780px;
					}
					.efatura_text{
					    text-align: center;
					    color: #bbbbbb;
					    font-size: 12px;
					}
					div.irsaliye_item_container{
					    margin-top: 14px;
					    margin-bottom: 10px;
					    display: block;
					    visibility: visible;
					}
					span.alt_irsaliye_item{
					    padding: 4px;
					    margin-right: 3px;
					    border: 1px solid #dddddd;
					    background: #eeeeee;
					    margin-top: 10px;
					    display: inline-block;
					}
					.gib_logo_container{
					    text-align: center;
					}
					.span_satir_iskonto_oran div,
					.span_satir_iskonto_tutar div{
					    padding-right: 4px;
					    white-space: nowrap !important;
					    display: block !important;
					}
					.myright,
					.myright div{
					    text-align: right;
					}
					.fatura_not_container_w_box_cap{
					    background: #eeeeee;
					    color: #1e1e1e;
					    font-size: 14px;
					    font-weight: bold;
					    padding: 4px;
					    border-radius: 6px;
					    border: 1px solid #cccccc;
					}
					.fatura_not_container_w_box_cap2{
					    font-size: 12px;
					    font-weight: bold;
					    padding: 4px;
					}
					.earsiv_iade_pair{
					    font-weight: bold;
					}
					.earsiv_iade_pair_bosluk{
					    height: 30px;
					}
					.earsiv_iade_tablosu{
					    border: 2px solid #cccccc;
					}
					.fatura_not_container_w_box_capheadaer{
					    padding: 6px;
					    color: #ffffff;
					    background: #666666;
					}
					tr.earsiv_iade_odd,
					tr.earsiv_iade_even{
					    height: 20px;
					}
					tr.earsiv_iade_odd{
					    background: #eeeeee;
					}
					.mytext_bold{
					    font-weight: bold;
					}
					.bos_satir{
					    min-width: 30px;
					    min-height: 16px;
					    display: block;
					}
					#tablo_satir{
					    border: 1px solid #d9d9d9;
					}
					.kolon_baslik{
					    border-bottom: 1px solid #d9d9d9;
					    border-right: 1px solid #d9d9d9;
					    background: #2c4e73;
					    color: #ffffff;
					}
					
					tr.tr_baslik td:last-child,
					tr.satir td:last-child{
					    border-right: 0px none;
					}
					.kolon_baslik span{
					    display: block;
					    text-align: center;
					    color: #ffffff;
					    font-weight: bold;
					    padding: 3px;
					}
					tr.satir td{
					    border-bottom: 1px solid #d9d9d9;
					    border-right: 1px solid #d9d9d9;
					}
					td.kolon_deger span{
					    display: block;
					    padding: 2px;
					}
					.tablo_satir tr:last-child td{
					    border-bottom: 0px none;
					}
					
					.myframe{
					    margin-top: 5px;
					    margin-bottom: 5px;
					    border: 1px solid #d9d9d9;
					    padding: 6px;
					    border-radius: 6px;
					}
					.frmbanka{
					    margin-top: 5px;
					    margin-bottom: 5px;
					    border: 1px solid #d9d9d9;
					    padding: 6px;
					    border-radius: 6px;
					}
					tr.odd{
					    background: #ffffff;
					}
					tr.even{
					    background: #f5f5f5;
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
			<body>

				<div class="page_container">
					<table class="pw fatura_head_table" width="800" cellpadding="0px">
						<tbody>
							<tr>
								<td colspan="3">
									<div>
										{{LOGO}}
									</div>

								</td>

							</tr>

							<tr>

								<td>

									<div class="firma_adi">
										<xsl:choose>
											<xsl:when test="$firma_adi and $firma_adi != ''">
												<xsl:value-of select="$firma_adi"
												disable-output-escaping="yes"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="$firma_adi2"
												disable-output-escaping="yes"/>
											</xsl:otherwise>
										</xsl:choose>
									</div>
									<div class="firma_adresi">
										<xsl:choose>
											<xsl:when test="$firma_adresi and $firma_adresi != ''">
												<xsl:value-of select="$firma_adresi"
												disable-output-escaping="yes"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="$firma_adresi2"
												disable-output-escaping="yes"/>
											</xsl:otherwise>
										</xsl:choose>
									</div>
									<!--KAYNAK ADRES SONRASI belkiii-->
									<div class="cerceve_ust">
										<div class="pad6px">
											<span class="cerceve_box corner_tl"/>
											<span class="cerceve_box corner_tr"/>
										</div>
									</div>
									<div class="cerceve_orta">
										<div class="musteri_adi">
											<xsl:call-template name="printMusteriAdi"/>
										</div>
										<div class="musteri_adres"><xsl:value-of
												select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:StreetName"
												disable-output-escaping="yes"
												/><xsl:text>&#160;</xsl:text><xsl:value-of
												select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:BuildingName"
												disable-output-escaping="yes"
												/><xsl:text>&#160;</xsl:text><xsl:if
												test="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:BuildingNumber"
												>No : <xsl:value-of
												select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:BuildingNumber"
												disable-output-escaping="yes"
												/></xsl:if><xsl:text disable-output-escaping="yes">&lt;br/&gt;</xsl:text><xsl:value-of
												select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:CitySubdivisionName"
												disable-output-escaping="yes"
												/><xsl:text>&#160;</xsl:text>/<xsl:text>&#160;</xsl:text><xsl:value-of
												select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:CityName"
												disable-output-escaping="yes"/><xsl:call-template
												name="firma_adres_extra"/></div>
										<div class="musteri_vd">
											<xsl:if
												test="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:Name != '' and //n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:Name != 'null'">
												<div>
												<span class="pair_key">Vergi Dairesi</span>
												<span class="pair_seperator">:</span>
												<span class="pair_value">
												<xsl:value-of
												select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:Name"
												/>
												</span>
												</div>
											</xsl:if>
											<xsl:call-template name="printMusteriVergiNo"/>
										</div>
										<!--HEDEF ADRES SONRASI belkiiii-->
									</div>
									<div class="cerceve_alt">
										<span class="cerceve_box corner_bl"/>
										<span class="cerceve_box corner_br"/>
									</div>
								</td>
								<td>
									<div>
										<div class="gib_logo_container">
											<img
												src="data:image/png;base64,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"
												class="gib_logo" border="0"/>
										</div>
										<div class="efatura_text">E-FATURA</div>
									</div>
									<div>
                                        <div class="signature_logo_container" style="margin-top: 10px;">
                                            {{IMZA}}
                                        </div>
                                    </div>
								</td>
								<td>
									<div class="cerceve">
										<div class="pad6px">
											<div class="firma_vd">
												<div>
												<span class="pair_key">Vergi No</span>
												<span class="pair_seperator">:</span>
												<span class="pair_value">
												<xsl:choose>
												<xsl:when
												test="$firma_vkno and $firma_vkno != '' and $firma_vkno = '123654654'">
												<xsl:value-of select="$firma_vkno2"/>
												</xsl:when>
												<xsl:otherwise>
												<xsl:value-of select="$firma_vkno"/>
												</xsl:otherwise>
												</xsl:choose>
												</span>
												</div>
												<xsl:if
												test="$firma_vdaire != '' and $firma_vdaire != 'null'">
												<div>
												<span class="pair_key">Vergi Dairesi</span>
												<span class="pair_seperator">:</span>
												<span class="pair_value">
												<xsl:value-of select="$firma_vdaire"/>
												</span>
												</div>
												</xsl:if>
												<xsl:if
												test="$firma_ticaretno != '' and $firma_ticaretno != 'null'">
												<div>
												<span class="pair_key">Ticaret Sicil No</span>
												<span class="pair_seperator">:</span>
												<span class="pair_value">
												<xsl:value-of select="$firma_ticaretno"/>
												</span>
												</div>
												</xsl:if>
												<xsl:if
												test="$firma_mersis != '' and $firma_mersis != 'null'">
												<div>
												<span class="pair_key">Mersis No</span>
												<span class="pair_seperator">:</span>
												<span class="pair_value">
												<xsl:value-of select="$firma_mersis"/>
												</span>
												</div>
												</xsl:if>
											</div>
											<div class="firma_tel">
												<xsl:if
												test="$firma_tel != '' and $firma_tel != 'null'">
												<div>
												<span class="pair_key">Tel</span>
												<span class="pair_seperator">:</span>
												<span class="pair_value">
												<xsl:value-of select="$firma_tel"/>
												</span>
												</div>
												</xsl:if>
												<xsl:if
												test="$firma_fax != '' and $firma_fax != 'null'">
												<div>
												<span class="pair_key">Fax</span>
												<span class="pair_seperator">:</span>
												<span class="pair_value">
												<xsl:value-of select="$firma_fax"/>
												</span>
												</div>
												</xsl:if>
												<xsl:if
												test="$firma_email != '' and $firma_email != 'null'">
												<div>
												<span class="pair_key">E-Posta</span>
												<span class="pair_seperator">:</span>
												<span class="pair_value">
												<a>
												<xsl:attribute name="href">mailto:<xsl:value-of
												select="$firma_email"/></xsl:attribute>
												<xsl:value-of select="$firma_email"/>
												</a>
												</span>
												</div>
												</xsl:if>
												<xsl:if
												test="$firma_web != '' and $firma_web != 'null'">
												<div>
												<span class="pair_key">İnternet Sitesi</span>
												<span class="pair_seperator">:</span>
												<span class="pair_value">
												<a>
												<xsl:attribute name="href">
												<xsl:if test="not(contains($firma_web, 'http'))">
												<xsl:value-of select="'http://'"/>
												</xsl:if>
												<xsl:value-of select="$firma_web"/>
												</xsl:attribute>
												<xsl:value-of select="$firma_web"/>
												</a>
												</span>
												</div>
												</xsl:if>

												<!--FİRMA BİLGİ KUTUSU not eklersen deme sakın 
belki lazım olur-->
											</div>

										</div>
									</div>
									<div class="cerceve">
										<div class="pad6px">
											<div class="fatura_bilgi">
												<xsl:if
												test="$ublversiyon_str != '' and $ublversiyon_str != 'null'">
												<div>
												<span class="pair_key">Versiyon</span>
												<span class="pair_seperator">:</span>
												<span class="pair_value">
												<xsl:value-of select="$ublversiyon_str"/>
												</span>
												</div>
												</xsl:if>
												<xsl:if
												test="//n1:Invoice/cbc:ProfileID != '' and //n1:Invoice/cbc:ProfileID != 'null'">
												<div>
												<span class="pair_key">Senaryo</span>
												<span class="pair_seperator">:</span>
												<span class="pair_value">
												<xsl:value-of select="//n1:Invoice/cbc:ProfileID"
												/>
												</span>
												</div>
												</xsl:if>
												<xsl:if
												test="//n1:Invoice/cbc:InvoiceTypeCode != '' and //n1:Invoice/cbc:InvoiceTypeCode != 'null'">
												<div>
												<span class="pair_key">Fatura Tipi</span>
												<span class="pair_seperator">:</span>
												<span class="pair_value">
												<xsl:value-of
												select="//n1:Invoice/cbc:InvoiceTypeCode"/>
												</span>
												</div>
												</xsl:if>
												<xsl:if
												test="//n1:Invoice/cbc:ID != '' and //n1:Invoice/cbc:ID != 'null'">
												<div>
												<span class="pair_key">Fatura No</span>
												<span class="pair_seperator">:</span>
												<span class="pair_value">
												<xsl:value-of select="//n1:Invoice/cbc:ID"/>
												</span>
												</div>
												</xsl:if>
												<xsl:if
												test="//n1:Invoice/cbc:IssueDate != '' and //n1:Invoice/cbc:IssueDate != 'null'">
												<div>
												<span class="pair_key">Fatura Tarihi</span>
												<span class="pair_seperator">:</span>
												<span class="pair_value">
												<xsl:if
												test="//n1:Invoice/cbc:IssueDate != '' and //n1:Invoice/cbc:IssueDate != 'null'">
												<xsl:for-each select="//n1:Invoice/cbc:IssueDate"
												><xsl:value-of select="substring(., 9, 2)"
												/>-<xsl:value-of select="substring(., 6, 2)"
												/>-<xsl:value-of select="substring(., 1, 4)"
												/></xsl:for-each>
												</xsl:if>
												</span>
												</div>
												</xsl:if>
												<xsl:if
												test="//n1:Invoice/cac:OrderReference/cbc:ID != '' and //n1:Invoice/cac:OrderReference/cbc:ID != 'null'">
												<div>
												<span class="pair_key">Sipariş No</span>
												<span class="pair_seperator">:</span>
												<span class="pair_value">
												<xsl:value-of
												select="//n1:Invoice/cac:OrderReference/cbc:ID"/>
												</span>
												</div>
												</xsl:if>
												<xsl:if
												test="//n1:Invoice/cac:OrderReference/cbc:IssueDate != '' and //n1:Invoice/cac:OrderReference/cbc:IssueDate != 'null'">
												<div>
												<span class="pair_key">Sipariş Tarihi</span>
												<span class="pair_seperator">:</span>
												<span class="pair_value">
												<xsl:value-of
												select="//n1:Invoice/cac:OrderReference/cbc:IssueDate"
												/>
												</span>
												</div>
												</xsl:if>
												<!--FATURA BİLGİ KUTUSU not eklersen deme sakın 
belki lazım olur

-->
											</div>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="tablo_bosluk"/>
					<table border="0" id="tablo_satir" borderspacing="0" cellpadding="0"
						class="tablo_satir">
						<tbody>
							<tr class="tr_baslik">
								<td class="satir_sira kolon_baslik">
									<span>#</span>
								</td>
								<td class="satir_kod kolon_baslik">
									<span>Kod</span>
								</td>
								<td class="satir_mal kolon_baslik">
									<span>Mal/Hizmet</span>
								</td>
								<td class="satir_miktar kolon_baslik">
									<span>Miktar</span>
								</td>
								<td class="satir_bfiyat kolon_baslik">
									<span>Birim Fiyat</span>
								</td>
								<td class="satir_iskonto_oran kolon_baslik">
									<span>İskonto Oranı</span>
								</td>
								<td class="satir_iskonto_tutar kolon_baslik">
									<span>İskonto Tutar</span>
								</td>
								<td class="satir_kdv_oran kolon_baslik">
									<span>KDV Oranı</span>
								</td>
								<td class="satir_kdv_tutar kolon_baslik">
									<span>KDV Tutarı</span>
								</td>
								<td class="satir_vergiler kolon_baslik">
									<span>Diğer Vergiler</span>
								</td>
								<td class="satir_toplam kolon_baslik">
									<span>Toplam</span>
								</td>
							</tr>

							<xsl:for-each select="//n1:Invoice/cac:InvoiceLine">
								<xsl:call-template name="fatura_satir"/>
							</xsl:for-each>
						</tbody>
					</table>
					<table border="0" id="alt_toplam_tablosu" borderspacing="0" cellpadding="0"
						class="alt_toplam_tablosu">
						<tbody>
							<tr>
								<td width="50%" class="alt_toplam_col1">
									<div class="myframe ettn_container">
										<span class="ettn">ETTN : <xsl:value-of
												select="//n1:Invoice/cbc:UUID"/></span>
									</div>
									<xsl:call-template name="doviz_kuru_goster"/>

									<!-- sol tarafa not eklersen deme sakın belki lazım olur -->

									<xsl:call-template name="alt_notlar"/>
								</td>
								<td width="50%" class="alt_toplam_col2">
									<div class="myframe">
										<xsl:call-template name="alt_toplam"/>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<xsl:call-template name="irsaliyeleri_yazdir"/>
					<xsl:call-template name="fatura_notlari_yazdir">
						<xsl:with-param name="tip" select="'0'"/>

					</xsl:call-template>

                    {{BANKINFO}}

				</div>
			</body>
		</html>
	</xsl:template>

	<xsl:template name="mytest">
		<xsl:text>&#160;</xsl:text>
	</xsl:template>
	<xsl:template name="firma_adres_extra">
		<xsl:if
			test="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:ElectronicMail">
			<div>
				<span class="pair_key">E-Posta</span>
				<span class="pair_seperator">:</span>
				<span class="pair_value">
					<xsl:value-of
						select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:ElectronicMail"
					/>
				</span>
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template name="printMusteriVergiNo">
		<xsl:choose>
			<xsl:when
				test="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID = 'VKN']">
				<div>
					<span class="pair_key">Vergi No</span>
					<span class="pair_seperator">:</span>
					<span class="pair_value">
						<xsl:value-of
							select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID = 'VKN']"
						/>
					</span>
				</div>
			</xsl:when>
			<xsl:when
				test="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID = 'TCKN']">
				<div>
					<span class="pair_key">TC Kimlik No</span>
					<span class="pair_seperator">:</span>
					<span class="pair_value">
						<xsl:value-of
							select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID = 'TCKN']"
						/>
					</span>
				</div>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>Vergi no bulunamadı !</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:if
			test="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID = 'HIZMETNO']">
			<div>
				<span class="pair_key">Hizmet No</span>
				<span class="pair_seperator">:</span>
				<span class="pair_value">
					<xsl:value-of
						select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID = 'HIZMETNO']"
					/>
				</span>
			</div>
		</xsl:if>
		<xsl:if
			test="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID = 'MUSTERINO']">
			<div>
				<span class="pair_key">Müşteri No</span>
				<span class="pair_seperator">:</span>
				<span class="pair_value">
					<xsl:value-of
						select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID = 'MUSTERINO']"
					/>
				</span>
			</div>
		</xsl:if>
		<xsl:if
			test="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID = 'TESISATNO']">
			<div>
				<span class="pair_key">Tesisat No</span>
				<span class="pair_seperator">:</span>
				<span class="pair_value">
					<xsl:value-of
						select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID = 'TESISATNO']"
					/>
				</span>
			</div>
		</xsl:if>
		<xsl:if
			test="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID = 'BAYINO']">
			<div>
				<span class="pair_key">Bayi No</span>
				<span class="pair_seperator">:</span>
				<span class="pair_value">
					<xsl:value-of
						select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID = 'BAYINO']"
					/>
				</span>
			</div>
		</xsl:if>
		<xsl:if
			test="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID = 'DOSYANO']">
			<div>
				<span class="pair_key">Dosya No</span>
				<span class="pair_seperator">:</span>
				<span class="pair_value">
					<xsl:value-of
						select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID = 'DOSYANO']"
					/>
				</span>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template name="html_newline">
		<xsl:value-of disable-output-escaping="yes" select="'&lt;br&gt;'"/>
	</xsl:template>
	<xsl:template name="is_ubl21">
		<xsl:choose>
			<xsl:when test="//n1:Invoice/cbc:UBLVersionID = '2.1'">
				<xsl:value-of select="'1'"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="0"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="dovizi_oku">
		<xsl:param name="doviz"/>
		<xsl:variable name="okunacak" select="."/>
		<xsl:variable name="noktadan_sonra" select="round(($okunacak - floor($okunacak)) * 100)"/>
		<xsl:call-template name="sayi_oku">
			<xsl:with-param name="okunacak" select="."/>
		</xsl:call-template>
		<xsl:if test="$doviz">
			<xsl:choose>
				<xsl:when test="$doviz = 'TRL' or $doviz = 'TRY'">
					<xsl:value-of select="' Türk Lirası'"/>
					<xsl:if test="$noktadan_sonra &gt; 0">
						<xsl:value-of select="' '"/>
						<xsl:call-template name="sayi_oku">
							<xsl:with-param name="okunacak" select="$noktadan_sonra"/>
						</xsl:call-template>
						<xsl:value-of select="' Kuruş'"/>
					</xsl:if>
				</xsl:when>
				<xsl:otherwise>
					<xsl:text>&#160;</xsl:text>
					<xsl:value-of select="$doviz"/>
					<xsl:if test="$noktadan_sonra &gt; 0">
						<xsl:value-of select="' '"/>
						<xsl:call-template name="sayi_oku">
							<xsl:with-param name="okunacak" select="$noktadan_sonra"/>
						</xsl:call-template>
						<xsl:value-of select="' Cent'"/>
					</xsl:if>
				</xsl:otherwise>
			</xsl:choose>

		</xsl:if>
	</xsl:template>
	<xsl:template name="sayi_oku">
		<xsl:param name="okunacak"/>
		<xsl:variable name="tam_sayi" select="floor($okunacak)"/>
		<xsl:variable name="birler" select="floor($okunacak) mod 10"/>
		<xsl:variable name="onlar" select="floor(floor($tam_sayi mod 100) div 10)"/>
		<xsl:variable name="yuzler" select="floor(floor($tam_sayi mod 1000) div 100)"/>
		<xsl:variable name="binler" select="floor(floor($tam_sayi mod 1000000) div 1000)"/>
		<xsl:variable name="milyonlar" select="floor(floor($tam_sayi mod 1000000000) div 1000000)"/>
		<xsl:variable name="milyarlar"
			select="floor(floor($tam_sayi mod 1000000000000) div 1000000000)"/>

		<xsl:if test="$milyarlar &gt; 0">
			<xsl:call-template name="sayi_oku_3hane"><xsl:with-param name="sayi" select="$milyarlar"
				/></xsl:call-template> Milyar </xsl:if>
		<xsl:if test="$milyonlar &gt; 0">
			<xsl:call-template name="sayi_oku_3hane"><xsl:with-param name="sayi" select="$milyonlar"
				/></xsl:call-template> Milyon </xsl:if>
		<xsl:if test="$binler &gt; 0">
			<xsl:if test="$binler = 1">Bin </xsl:if>
			<xsl:if test="$binler > 1">
				<xsl:call-template name="sayi_oku_3hane"><xsl:with-param name="sayi"
						select="$binler"/></xsl:call-template> Bin </xsl:if>
		</xsl:if>

		<xsl:call-template name="yuzler_oku">
			<xsl:with-param name="sayi" select="$yuzler"/>
		</xsl:call-template>
		<xsl:call-template name="onlar_oku">
			<xsl:with-param name="sayi" select="$onlar"/>
		</xsl:call-template>
		<xsl:call-template name="birler_oku">
			<xsl:with-param name="sayi" select="$birler"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="sayi_oku_3hane">
		<xsl:param name="sayi"/>
		<xsl:variable name="tam_sayi" select="floor($sayi)"/>
		<xsl:variable name="birler" select="floor($sayi) mod 10"/>
		<xsl:variable name="onlar" select="floor(floor($tam_sayi mod 100) div 10)"/>
		<xsl:variable name="yuzler" select="floor(floor($tam_sayi mod 1000) div 100)"/>
		<xsl:call-template name="yuzler_oku">
			<xsl:with-param name="sayi" select="$yuzler"/>
		</xsl:call-template>
		<xsl:call-template name="onlar_oku">
			<xsl:with-param name="sayi" select="$onlar"/>
		</xsl:call-template>
		<xsl:call-template name="birler_oku">
			<xsl:with-param name="sayi" select="$birler"/>
		</xsl:call-template>
	</xsl:template>

	<xsl:template name="birler_oku">
		<xsl:param name="sayi"/>
		<xsl:choose>
			<xsl:when test="$sayi = 1">Bir </xsl:when>
			<xsl:when test="$sayi = 2">İki </xsl:when>
			<xsl:when test="$sayi = 3">Üç </xsl:when>
			<xsl:when test="$sayi = 4">Dört </xsl:when>
			<xsl:when test="$sayi = 5">Beş </xsl:when>
			<xsl:when test="$sayi = 6">Altı </xsl:when>
			<xsl:when test="$sayi = 7">Yedi </xsl:when>
			<xsl:when test="$sayi = 8">Sekiz </xsl:when>
			<xsl:when test="$sayi = 9">Dokuz </xsl:when>
			<xsl:otherwise> </xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="onlar_oku">
		<xsl:param name="sayi"/>
		<xsl:choose>
			<xsl:when test="$sayi = 1">On </xsl:when>
			<xsl:when test="$sayi = 2">Yirmi </xsl:when>
			<xsl:when test="$sayi = 3">Otuz </xsl:when>
			<xsl:when test="$sayi = 4">Kırk </xsl:when>
			<xsl:when test="$sayi = 5">Elli </xsl:when>
			<xsl:when test="$sayi = 6">Altmış </xsl:when>
			<xsl:when test="$sayi = 7">Yetmiş </xsl:when>
			<xsl:when test="$sayi = 8">Seksen </xsl:when>
			<xsl:when test="$sayi = 9">Doksan </xsl:when>
			<xsl:otherwise/>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="yuzler_oku">
		<xsl:param name="sayi"/>
		<xsl:choose>
			<xsl:when test="$sayi = 1">Yüz </xsl:when>
			<xsl:when test="$sayi = 2">İki Yüz </xsl:when>
			<xsl:when test="$sayi = 3">Üç Yüz </xsl:when>
			<xsl:when test="$sayi = 4">Dört Yüz </xsl:when>
			<xsl:when test="$sayi = 5">Beş Yüz </xsl:when>
			<xsl:when test="$sayi = 6">Altı Yüz </xsl:when>
			<xsl:when test="$sayi = 7">Yedi Yüz </xsl:when>
			<xsl:when test="$sayi = 8">Sekiz Yüz </xsl:when>
			<xsl:when test="$sayi = 9">Dokuz Yüz </xsl:when>
			<xsl:otherwise/>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="binler_oku">
		<xsl:param name="sayi"/>
		<xsl:choose>
			<xsl:when test="$sayi = 1">Bin </xsl:when>
			<xsl:when test="$sayi = 2">İki Bin </xsl:when>
			<xsl:when test="$sayi = 3">Üç Bin </xsl:when>
			<xsl:when test="$sayi = 4">Dört Bin </xsl:when>
			<xsl:when test="$sayi = 5">Beş Bin </xsl:when>
			<xsl:when test="$sayi = 6">Altı Bin </xsl:when>
			<xsl:when test="$sayi = 7">Yedi Bin </xsl:when>
			<xsl:when test="$sayi = 8">Sekiz Bin </xsl:when>
			<xsl:when test="$sayi = 9">Dokuz Bin </xsl:when>
			<xsl:otherwise/>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="onbinler_oku">
		<xsl:param name="sayi"/>
		<xsl:if test="$sayi &gt; 0">
			<xsl:call-template name="onlar_oku"><xsl:with-param name="sayi" select="$sayi"
				/></xsl:call-template>Bin </xsl:if>
	</xsl:template>

	<xsl:template name="parcala">
		<xsl:param name="csv"/>
		<xsl:param name="isaret"/>
		<xsl:variable name="first-item"
			select="normalize-space(substring-before(concat($csv, '|'), '|'))"/>
		<xsl:if test="$csv">
			<xsl:if test="normalize-space(substring-after(concat($first-item, ''), $isaret))">
				<xsl:value-of disable-output-escaping="yes"
					select="normalize-space(substring-after(concat($first-item, ''), $isaret))"/>
			</xsl:if>
			<xsl:call-template name="parcala">
				<xsl:with-param name="csv" select="substring-after($csv, '|')"/>
				<xsl:with-param name="isaret" select="$isaret"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>


	<xsl:template name="ek_aciklamayi_al">
		<xsl:param name="org"/>
		<xsl:param name="aciklama"/>
		<xsl:param name="keyfield"/>
		<xsl:param name="forcedfield"/>
		<xsl:variable name="myvar1">
			<xsl:call-template name="parcala">
				<xsl:with-param name="csv">
					<xsl:value-of select="$aciklama" disable-output-escaping="yes"/>
				</xsl:with-param>
				<xsl:with-param name="isaret" select="$keyfield"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="myvar2">
			<xsl:call-template name="parcala">
				<xsl:with-param name="csv">
					<xsl:value-of select="$aciklama" disable-output-escaping="yes"/>
				</xsl:with-param>
				<xsl:with-param name="isaret" select="$forcedfield"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="myvar_aciklama">
			<xsl:call-template name="aciklamayi_al">
				<xsl:with-param name="csv">
					<xsl:value-of select="$org"/>
				</xsl:with-param>
			</xsl:call-template>
		</xsl:variable>
		<xsl:choose>
			<xsl:when test="$myvar2 and $myvar2 != ''">
				<xsl:value-of disable-output-escaping="yes" select="$myvar2"/>
			</xsl:when>
			<xsl:when test="$myvar1 and $myvar1 != ''">
				<xsl-if test="$myvar_aciklama">
					<xsl:value-of disable-output-escaping="yes"
						select="concat($myvar_aciklama, ' ')"/>
				</xsl-if>
				<xsl:value-of disable-output-escaping="yes" select="$myvar1"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of disable-output-escaping="yes" select="$myvar_aciklama"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="aciklamayi_al">
		<xsl:param name="csv"/>
		<xsl:variable name="tmp1">
			<xsl:value-of disable-output-escaping="yes" select="$csv"/>
			<xsl:value-of disable-output-escaping="yes" select="'|'"/>
		</xsl:variable>
		<xsl:variable name="first-item">
			<xsl:value-of disable-output-escaping="yes"
				select="normalize-space(substring-before($tmp1, '|'))"/>
		</xsl:variable>
		<xsl:if test="$first-item">
			<xsl:value-of select="$first-item"/>
		</xsl:if>
	</xsl:template>
	<xsl:template name="parcalabol">
		<xsl:param name="csv"/>
		<xsl:param name="isaret"/>
		<xsl:variable name="first-item"
			select="normalize-space(substring-before(concat($csv, '|'), '|'))"/>
		<xsl:if test="$first-item">
			<xsl:if test="normalize-space(substring-after(concat($first-item, ''), $isaret))">
				<xsl:value-of disable-output-escaping="yes"
					select="normalize-space(substring-after(concat($first-item, ''), $isaret))"/>
			</xsl:if>
			<br/>
			<xsl:call-template name="parcala">
				<xsl:with-param name="csv" select="substring-after($csv, '|')"/>
				<xsl:with-param name="isaret" select="$isaret"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>

	<xsl:template name="doviz">
		<xsl:param name="doviz_id"/>
		<xsl:if test="$doviz_id and $doviz_id != '' and $doviz_id != 'null'">
			<xsl:choose>
				<xsl:when test="$doviz_id = 'TRL' or $doviz_id = 'TRY'">
					<xsl:text>&#160;</xsl:text>
					<xsl:value-of select="'TL'"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:text>&#160;</xsl:text>
					<xsl:value-of select="$doviz_id"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:if>

	</xsl:template>

	<xsl:template name="alt_toplam">
		<xsl:variable name="is_ubl_21">
			<xsl:call-template name="is_ubl21"/>
		</xsl:variable>
		<xsl:variable name="op_tv2">
			<xsl:call-template name="optevkifat2"/>
		</xsl:variable>
		<xsl:variable name="op_tv3">
			<xsl:call-template name="optevkifat3"/>
		</xsl:variable>
		<div class="toplam_satiri">
			<span class="alt_toplam_key">Mal Hizmet Toplam Tutarı</span>
			<span class="alt_toplam_sep">:</span>
			<span class="alt_toplam_val">
				<xsl:value-of
					select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount, '###.##0,00', 'european')"/>
				<xsl:call-template name="doviz">
					<xsl:with-param name="doviz_id"
						select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID"
					/>
				</xsl:call-template>
			</span>
		</div>

		<xsl:if
			test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount and //n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount &gt; 0">
			<div class="toplam_satiri">
				<span class="alt_toplam_key">Toplam İskonto</span>
				<span class="alt_toplam_sep">:</span>
				<span class="alt_toplam_val">
					<xsl:value-of
						select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount, '###.##0,00', 'european')"/>
					<xsl:call-template name="doviz">
						<xsl:with-param name="doviz_id"
							select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID"
						/>
					</xsl:call-template>
				</span>
			</div>
			<div class="toplam_satiri">
				<span class="alt_toplam_key">Matrah</span>
				<span class="alt_toplam_sep">:</span>
				<span class="alt_toplam_val">
					<xsl:value-of
						select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxExclusiveAmount, '###.##0,00', 'european')"/>
					<xsl:call-template name="doviz">
						<xsl:with-param name="doviz_id"
							select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxExclusiveAmount/@currencyID"
						/>
					</xsl:call-template>
				</span>
			</div>
		</xsl:if>
		<xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
			<div class="toplam_satiri">
				<span class="alt_toplam_key">Hesaplanan <xsl:value-of
						select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/> ( % <xsl:value-of
						select="cbc:Percent"/> ) </span>
				<span class="alt_toplam_sep">:</span>
				<span class="alt_toplam_val">
					<xsl:for-each select="cac:TaxCategory/cac:TaxScheme">
						<xsl:text> </xsl:text>
						<xsl:value-of
							select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
						<xsl:call-template name="doviz">
							<xsl:with-param name="doviz_id" select="../../cbc:TaxAmount/@currencyID"
							/>
						</xsl:call-template>
					</xsl:for-each>
				</span>
			</div>
		</xsl:for-each>

		<xsl:if
			test="sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = 9015]/cbc:TaxableAmount) > 0">
			<div class="toplam_satiri">
				<span class="alt_toplam_key">Tevkifata Tabi İşlem Tutarı</span>
				<span class="alt_toplam_sep">:</span>
				<span class="alt_toplam_val">

					<xsl:value-of
						select="format-number(sum(n1:Invoice/cac:InvoiceLine[cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = 9015]/cbc:LineExtensionAmount), '###.##0,00', 'european')"/>
					<xsl:call-template name="doviz">
						<xsl:with-param name="doviz_id" select="n1:Invoice/cbc:DocumentCurrencyCode"
						/>
					</xsl:call-template>
				</span>
			</div>
			<div class="toplam_satiri">
				<span class="alt_toplam_key">Tevkifata Tabi İşlem Üzerinden Hes. KDV</span>
				<span class="alt_toplam_sep">:</span>
				<span class="alt_toplam_val">
					<xsl:value-of
						select="format-number(sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = 9015]/cbc:TaxableAmount), '###.##0,00', 'european')"/>
					<xsl:call-template name="doviz">
						<xsl:with-param name="doviz_id" select="n1:Invoice/cbc:DocumentCurrencyCode"
						/>
					</xsl:call-template>
				</span>
			</div>
			<div class="toplam_satiri">
				<span class="alt_toplam_key">Tevkifat Sonrası Kalan KDV</span>
				<span class="alt_toplam_sep">:</span>
				<span class="alt_toplam_val">
					<xsl:value-of
						select="
							format-number(
							sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = 0015]/cbc:TaxAmount)
							- sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = 9015]/cbc:TaxAmount)
							, '###.##0,00', 'european')"/>
					<xsl:if
						test="n1:Invoice/cbc:DocumentCurrencyCode = 'TRL' or n1:Invoice/cbc:DocumentCurrencyCode = 'TRY'">
						<xsl:text>TL</xsl:text>
					</xsl:if>
					<xsl:if
						test="n1:Invoice/cbc:DocumentCurrencyCode != 'TRL' or n1:Invoice/cbc:DocumentCurrencyCode != 'TRY'">
						<xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode"/>
					</xsl:if>
				</span>
			</div>

		</xsl:if>

		<xsl:for-each select="n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal">
			<div class="toplam_satiri">
				<span class="alt_toplam_key">Hesaplanan KDV Tevkifat <xsl:text>(%</xsl:text>
					<xsl:value-of select="cbc:Percent"/>
					<xsl:text>)</xsl:text>
				</span>
				<span class="alt_toplam_sep">:</span>
				<span class="alt_toplam_val">
					<xsl:for-each select="cac:TaxCategory/cac:TaxScheme">
						<xsl:text> </xsl:text>
						<xsl:value-of
							select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
						<xsl:if test="../../cbc:TaxAmount/@currencyID">
							<xsl:text> </xsl:text>
							<xsl:call-template name="doviz">
								<xsl:with-param name="doviz_id"
									select="../../cbc:TaxAmount/@currencyID"/>
							</xsl:call-template>
						</xsl:if>
					</xsl:for-each>
				</span>
			</div>
		</xsl:for-each>

		<xsl:if
			test="sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = 9015]/cbc:TaxableAmount) > 0">
			<div class="toplam_satiri">
				<span class="alt_toplam_key">Tevkifata Tabi İşlem Tutarı</span>
				<span class="alt_toplam_sep">:</span>
				<span class="alt_toplam_val">
					<xsl:value-of
						select="format-number(sum(n1:Invoice/cac:InvoiceLine[cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = 9015]/cbc:LineExtensionAmount), '###.##0,00', 'european')"/>
					<xsl:call-template name="doviz">
						<xsl:with-param name="doviz_id" select="n1:Invoice/cbc:DocumentCurrencyCode"
						/>
					</xsl:call-template>
				</span>
			</div>
			<div class="toplam_satiri">
				<span class="alt_toplam_key">Tevkifata Tabi İşlem Üzerinden Hes. KDV</span>
				<span class="alt_toplam_sep">:</span>
				<span class="alt_toplam_val">
					<xsl:value-of
						select="format-number(sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = 9015]/cbc:TaxableAmount), '###.##0,00', 'european')"/>
					<xsl:call-template name="doviz">
						<xsl:with-param name="doviz_id" select="n1:Invoice/cbc:DocumentCurrencyCode"
						/>
					</xsl:call-template>
				</span>
			</div>
		</xsl:if>

		<xsl:if
			test="n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]">
			<div class="toplam_satiri">
				<span class="alt_toplam_key">Tevkifata Tabi İşlem Tutarı</span>
				<span class="alt_toplam_sep">:</span>
				<span class="alt_toplam_val">
					<xsl:if
						test="n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]">
						<xsl:value-of
							select="format-number(sum(n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]/cbc:LineExtensionAmount), '###.##0,00', 'european')"
						/>
					</xsl:if>
					<xsl:if
						test="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = &apos;9015&apos;">
						<xsl:value-of
							select="format-number(sum(n1:Invoice/cac:InvoiceLine[cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = 9015]/cbc:LineExtensionAmount), '###.##0,00', 'european')"
						/>
					</xsl:if>
					<xsl:call-template name="doviz">
						<xsl:with-param name="doviz_id" select="n1:Invoice/cbc:DocumentCurrencyCode"
						/>
					</xsl:call-template>
				</span>
			</div>
			<div class="toplam_satiri">
				<span class="alt_toplam_key">Tevkifata Tabi İşlem Üzerinden Hes. KDV</span>
				<span class="alt_toplam_sep">:</span>
				<span class="alt_toplam_val">
					<xsl:if
						test="n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]">
						<xsl:value-of
							select="format-number(sum(n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme]/cbc:TaxableAmount), '###.##0,00', 'european')"
						/>
					</xsl:if>
					<xsl:if
						test="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = &apos;9015&apos;">
						<xsl:value-of
							select="format-number(sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = 9015]/cbc:TaxableAmount), '###.##0,00', 'european')"
						/>
					</xsl:if>
					<xsl:call-template name="doviz">
						<xsl:with-param name="doviz_id" select="n1:Invoice/cbc:DocumentCurrencyCode"
						/>
					</xsl:call-template>
				</span>
			</div>
		</xsl:if>


		<div class="toplam_satiri">
			<span class="alt_toplam_key">Vergiler Dahil Toplam Tutar</span>
			<span class="alt_toplam_sep">:</span>
			<span class="alt_toplam_val">
				<xsl:choose>
					<xsl:when
						test="//n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme] and $op_tv3 = '1'">
						<xsl:value-of
							select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount + sum(n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme]/cbc:TaxAmount), '###.##0,00', 'european')"
						/>
					</xsl:when>
					<xsl:when
						test="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = &apos;9015&apos; and $op_tv3 = '1'">
						<xsl:value-of
							select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount + sum(n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme]/cbc:TaxAmount), '###.##0,00', 'european')"/>
						<xsl:value-of
							select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount + sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = 9015]/cbc:TaxableAmount), '###.##0,00', 'european')"
						/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of
							select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount, '###.##0,00', 'european')"
						/>
					</xsl:otherwise>
				</xsl:choose>
				<xsl:call-template name="doviz">
					<xsl:with-param name="doviz_id"
						select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID"
					/>
				</xsl:call-template>
			</span>
		</div>




		<xsl:choose>
			<xsl:when test="$op_tv2 = '1'">
				<xsl:if
					test="n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]">
					<div class="toplam_satiri">
						<span class="alt_toplam_key">Tevkifat Sonrası Kalan KDV</span>
						<span class="alt_toplam_sep">:</span>
						<span class="alt_toplam_val">
							<xsl:value-of
								select="format-number(sum(n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme]/cbc:TaxableAmount) - sum(n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme]/cbc:TaxAmount), '###.##0,00', 'european')"/>
							<xsl:call-template name="doviz">
								<xsl:with-param name="doviz_id"
									select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID"
								/>
							</xsl:call-template>
						</span>
					</div>
				</xsl:if>
				<xsl:if
					test="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = &apos;9015&apos;">
					<div class="toplam_satiri">
						<span class="alt_toplam_key">Tevkifat Sonrası Kalan KDV</span>
						<span class="alt_toplam_sep">:</span>
						<span class="alt_toplam_val">
							<xsl:value-of
								select="format-number(sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = 0015]/cbc:TaxAmount) - sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = 9015]/cbc:TaxableAmount), '###.##0,00', 'european')"/>
							<xsl:call-template name="doviz">
								<xsl:with-param name="doviz_id"
									select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID"
								/>
							</xsl:call-template>
						</span>
					</div>
				</xsl:if>

			</xsl:when>
			<xsl:otherwise> </xsl:otherwise>
		</xsl:choose>


		<xsl:variable name="tutar_vergi_dahil"
			select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount"/>
		<xsl:variable name="tutar_odenecek"
			select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount"/>
		<xsl:variable name="tutar_toplam"
			select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount"/>


		<div class="toplam_satiri">
			<span class="alt_toplam_key">Ödenecek Tutar</span>
			<span class="alt_toplam_sep">:</span>
			<span class="alt_toplam_val">
				<xsl:value-of select="format-number($tutar_odenecek, '###.##0,00', 'european')"/>
				<xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID">
					<xsl:text> </xsl:text>
					<xsl:call-template name="doviz">
						<xsl:with-param name="doviz_id"
							select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID"
						/>
					</xsl:call-template>

				</xsl:if>
			</span>
		</div>

		<xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
			<xsl:if
				test="//n1:Invoice/cbc:DocumentCurrencyCode != 'TRL' and //n1:Invoice/cbc:DocumentCurrencyCode != 'TRY'">
				<div class="toplam_satiri">
					<span class="alt_toplam_key">
						<xsl:text>Hesaplanan </xsl:text>
						<xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
						<xsl:text>(%</xsl:text>
						<xsl:value-of select="cbc:Percent"/>
						<xsl:text>) (TL)</xsl:text>
					</span>
					<span class="alt_toplam_sep">:</span>
					<span class="alt_toplam_val">
						<xsl:value-of
							select="format-number(cbc:TaxAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
						<xsl:text> TL</xsl:text>
					</span>
				</div>
			</xsl:if>
		</xsl:for-each>

		<xsl:if
			test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID != 'TRL' and //n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID != 'TRY'">
			<div class="toplam_satiri">
				<span class="alt_toplam_key">
					<xsl:text>Mal Hizmet Toplam Tutarı(TL)</xsl:text>
				</span>
				<span class="alt_toplam_sep">:</span>
				<span class="alt_toplam_val">
					<xsl:value-of
						select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
					<xsl:text> TL</xsl:text>
				</span>
			</div>
			<div class="toplam_satiri">
				<span class="alt_toplam_key">
					<xsl:text>Vergiler Dahil Toplam Tutar(TL)</xsl:text>
				</span>
				<span class="alt_toplam_sep">:</span>
				<span class="alt_toplam_val">
					<xsl:value-of
						select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
					<xsl:text> TL</xsl:text>
				</span>
			</div>

			<div class="toplam_satiri">
				<span class="alt_toplam_key">
					<xsl:text>Ödenecek Tutar(TL)</xsl:text>
				</span>
				<span class="alt_toplam_sep">:</span>
				<span class="alt_toplam_val">
					<xsl:value-of
						select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
					<xsl:text> TL</xsl:text>
				</span>
			</div>
		</xsl:if>

	</xsl:template>


	<xsl:template name="print_satir_urun_kodu">
		<xsl:variable name="kod_aciklama">
			<xsl:call-template name="ek_aciklamayi_al">
				<xsl:with-param name="org" select="deneme"/>
				<xsl:with-param name="aciklama" select="./cbc:Note"/>
				<xsl:with-param name="keyfield" select="'urunkodu'"/>
				<xsl:with-param name="forcedfield" select="'urunkodu2'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:choose>
			<xsl:when test="$kod_aciklama and $kod_aciklama != ''">
				<div>
					<xsl:value-of select="$kod_aciklama"/>
				</div>
			</xsl:when>
			<xsl:when
				test="cac:Item and cac:Item/cac:SellersItemIdentification and cac:Item/cac:SellersItemIdentification/cbc:ID">
				<div>
					<xsl:value-of select="cac:Item/cac:SellersItemIdentification/cbc:ID"/>
				</div>
			</xsl:when>
			<xsl:otherwise>
				<div> </div>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="print_satir_toplam">
		<xsl:value-of select="format-number(./cbc:LineExtensionAmount, '###.##0,00', 'european')"/>
		<xsl:call-template name="doviz">
			<xsl:with-param name="doviz_id" select="./cbc:LineExtensionAmount/@currencyID"/>
		</xsl:call-template>
	</xsl:template>

	<xsl:template name="print_diger_vergiler">
		<xsl:variable name="is_ubl_21">
			<xsl:call-template name="is_ubl21"/>
		</xsl:variable>
		<xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
			<xsl:if test="cbc:TaxTypeCode != '0015'">
				<div>
					<xsl:if test="position() = 1">
						<xsl:attribute name="class">hasdata</xsl:attribute>
					</xsl:if>
					<xsl:value-of select="cbc:Name"/>
					<xsl:if test="../../cbc:Percent">
						<xsl:text> (%</xsl:text>
						<xsl:value-of
							select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
						<xsl:text>)=</xsl:text>
					</xsl:if>
					<xsl:value-of
						select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
					<xsl:call-template name="doviz">
						<xsl:with-param name="doviz_id" select="../../cbc:TaxAmount/@currencyID"/>
					</xsl:call-template>
				</div>
			</xsl:if>
		</xsl:for-each>

		<xsl:for-each
			select="./cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
			<div>
				<xsl:text>KDV TEVKİFAT </xsl:text>
				<xsl:if test="../../cbc:Percent">
					<xsl:text> (%</xsl:text>
					<xsl:value-of
						select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
					<xsl:text>)=</xsl:text>
				</xsl:if>
				<xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
				<xsl:if test="../../cbc:TaxAmount/@currencyID">
					<xsl:text> </xsl:text>
					<xsl:call-template name="doviz">
						<xsl:with-param name="doviz_id" select="../../cbc:TaxAmount/@currencyID"/>
					</xsl:call-template>
				</xsl:if>
				<xsl:if test="./cbc:Name">
					<xsl:call-template name="html_newline"/>
					<xsl:value-of select="./cbc:Name"/>
				</xsl:if>
			</div>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="print_kdv_tutar">
		<xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
			<xsl:if test="cbc:TaxTypeCode = '0015'">
				<xsl:text> </xsl:text>
				<xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
				<xsl:call-template name="doviz">
					<xsl:with-param name="doviz_id" select="../../cbc:TaxAmount/@currencyID"/>
				</xsl:call-template>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="print_kdv_oran">
		<xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
			<xsl:if test="cbc:TaxTypeCode = '0015'">
				<xsl:text> </xsl:text>
				<xsl:if test="../../cbc:Percent">
					<xsl:text> % </xsl:text>
					<xsl:value-of select="format-number(../../cbc:Percent, '###.##0', 'european')"/>
				</xsl:if>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="mytag">
		<xsl:param name="tag"/>
		<xsl:value-of disable-output-escaping="yes" select="concat('&lt;', $tag, '&gt;')"/>
	</xsl:template>
	<xsl:template name="myhtml">
		<xsl:param name="tag"/>
		<xsl:param name="text"/>
		<xsl:value-of disable-output-escaping="yes"
			select="concat('&lt;', $tag, '&gt;', $text, '&lt;', '/', $tag, '&gt;')"/>
	</xsl:template>
	<!-- 
<xsl:call-template name="mytag" ><xsl:with-param name="tag"  select="'div'" /></xsl:call-template>
<xsl:call-template name="myhtml" ><xsl:with-param name="tag"  select="'b'" /><xsl:with-param name="text"  select="'deneme'" /></xsl:call-template>
-->
	<xsl:template name="print_iskonto_tutar">
		<xsl:for-each select="./cac:AllowanceCharge">
			<xsl:choose>
				<xsl:when test="./cbc:ChargeIndicator and ./cbc:ChargeIndicator = 'true'"> </xsl:when>
				<xsl:when test="./cbc:Amount and ./cbc:Amount &gt; 0">
					<xsl:call-template name="mytag">
						<xsl:with-param name="tag" select="'div'"/>
					</xsl:call-template>
					<xsl:value-of select="format-number(./cbc:Amount, '###.##0,00', 'european')"/>
					<xsl:call-template name="doviz">
						<xsl:with-param name="doviz_id" select="./cbc:Amount/@currencyID"/>
					</xsl:call-template>
					<xsl:call-template name="mytag">
						<xsl:with-param name="tag" select="'/div'"/>
					</xsl:call-template>
				</xsl:when>
				<xsl:when test="./cbc:MultiplierFactorNumeric">
					<xsl:for-each select="./cbc:MultiplierFactorNumeric">
						<xsl:call-template name="mytag">
							<xsl:with-param name="tag" select="'div'"/>
						</xsl:call-template>
						<xsl:value-of
							select="format-number(../../cbc:Amount, '###.##0,00', 'european')"/>
						<xsl:call-template name="doviz">
							<xsl:with-param name="doviz_id" select="./cbc:Amount/@currencyID"/>
						</xsl:call-template>
						<xsl:call-template name="mytag">
							<xsl:with-param name="tag" select="'/div'"/>
						</xsl:call-template>
					</xsl:for-each>
				</xsl:when>
				<xsl:otherwise>
					<xsl:call-template name="myhtml">
						<xsl:with-param name="tag" select="'div'"/>
						<xsl:with-param name="text" select="' '"/>
					</xsl:call-template>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="myisktoplam">
		<xsl:param name="isk"/>
		<xsl:param name="pos"/>
		<xsl:if test="$pos &gt; 0">
			<xsl:if test="$pos = 1">
				<xsl:value-of select="$isk[1]/cbc:Amount"/>
			</xsl:if>
			<xsl:if test="$pos > 1">
				<xsl:variable name="prev">
					<xsl:call-template name="myisktoplam">
						<xsl:with-param name="isk" select="$isk"/>
						<xsl:with-param name="pos" select="$pos - 1"/>
					</xsl:call-template>
				</xsl:variable>
				<xsl:value-of select="$isk[$pos]/cbc:Amount + $prev"/>
			</xsl:if>
		</xsl:if>
		<xsl:if test="$pos &lt;= 0">
			<xsl:value-of select="'0'"/>
		</xsl:if>
	</xsl:template>
	<xsl:template name="print_iskonto_oran">
		<xsl:variable name="toplamindirim" select="sum(./cac:AllowanceCharge/cbc:Amount)"/>
		<xsl:for-each select="./cac:AllowanceCharge">
			<xsl:choose>
				<xsl:when test="./cbc:ChargeIndicator and ./cbc:ChargeIndicator = 'true'"> </xsl:when>
				<xsl:when test="./cbc:MultiplierFactorNumeric">
					<xsl:call-template name="mytag">
						<xsl:with-param name="tag" select="'div'"/>
					</xsl:call-template>
					<xsl:text> %</xsl:text>
					<xsl:value-of
						select="format-number(./cbc:MultiplierFactorNumeric * 100, '###.##0,00', 'european')"/>
					<xsl:call-template name="mytag">
						<xsl:with-param name="tag" select="'/div'"/>
					</xsl:call-template>
				</xsl:when>
				<xsl:otherwise>
					<xsl:if
						test="./cbc:Amount and ./cbc:Amount &gt; 0 and ../cbc:LineExtensionAmount &gt;= 0">
						<xsl:call-template name="mytag">
							<xsl:with-param name="tag" select="'div'"/>
						</xsl:call-template>
						<xsl:text> % </xsl:text>
						<xsl:variable name="matrah">
							<xsl:call-template name="myisktoplam">
								<xsl:with-param name="isk" select="../cac:AllowanceCharge"/>
								<xsl:with-param name="pos" select="position() - 1"/>
							</xsl:call-template>
						</xsl:variable>
						<xsl:value-of
							select="format-number((./cbc:Amount div (../cbc:LineExtensionAmount + $toplamindirim - $matrah)) * 100, '###.##0,00', 'european')"/>
						<xsl:call-template name="mytag">
							<xsl:with-param name="tag" select="'/div'"/>
						</xsl:call-template>
					</xsl:if>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="print_birim_fiyat">
		<xsl:value-of
			select="format-number(./cac:Price/cbc:PriceAmount, '###.##0,########', 'european')"/>

		<xsl:call-template name="doviz">
			<xsl:with-param name="doviz_id" select="./cac:Price/cbc:PriceAmount/@currencyID"/>
		</xsl:call-template>

	</xsl:template>
	<xsl:template name="print_satir_notu">
		<xsl:if test="./cbc:Note">
			<span class="satir_notu">
				<xsl:call-template name="aciklamayi_al">
					<xsl:with-param name="csv">
						<xsl:value-of select="./cbc:Note"/>
					</xsl:with-param>
				</xsl:call-template>
			</span>
		</xsl:if>
	</xsl:template>
	<xsl:template name="print_miktar_adv">
		<xsl:variable name="org_deger">
			<xsl:call-template name="print_miktar"/>
		</xsl:variable>

		<xsl:call-template name="ek_aciklamayi_al">
			<xsl:with-param name="org" select="$org_deger"/>
			<xsl:with-param name="aciklama" select="./cbc:Note"/>
			<xsl:with-param name="keyfield" select="'miktar'"/>
			<xsl:with-param name="forcedfield" select="'miktar2'"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="print_birim_fiyat_adv">
		<xsl:variable name="org_deger">
			<xsl:call-template name="print_birim_fiyat"/>
		</xsl:variable>
		<xsl:call-template name="ek_aciklamayi_al">
			<xsl:with-param name="org" select="$org_deger"/>
			<xsl:with-param name="aciklama" select="./cbc:Note"/>
			<xsl:with-param name="keyfield" select="'birimfiyat'"/>
			<xsl:with-param name="forcedfield" select="'birimfiyat2'"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="print_iskonto_oran_adv">
		<xsl:variable name="org_deger">
			<xsl:call-template name="print_iskonto_oran"/>
		</xsl:variable>
		<xsl:call-template name="ek_aciklamayi_al">
			<xsl:with-param name="org" select="$org_deger"/>
			<xsl:with-param name="aciklama" select="./cbc:Note"/>
			<xsl:with-param name="keyfield" select="'iskontooran'"/>
			<xsl:with-param name="forcedfield" select="'iskontooran2'"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="print_iskonto_tutar_adv">
		<xsl:variable name="org_deger">
			<xsl:call-template name="print_iskonto_tutar"/>
		</xsl:variable>
		<xsl:call-template name="ek_aciklamayi_al">
			<xsl:with-param name="org" select="$org_deger"/>
			<xsl:with-param name="aciklama" select="./cbc:Note"/>
			<xsl:with-param name="keyfield" select="'iskontotutar'"/>
			<xsl:with-param name="forcedfield" select="'iskontotutar2'"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="print_kdv_oran_adv">
		<xsl:variable name="org_deger">
			<xsl:call-template name="print_kdv_oran"/>
		</xsl:variable>
		<xsl:call-template name="ek_aciklamayi_al">
			<xsl:with-param name="org" select="$org_deger"/>
			<xsl:with-param name="aciklama" select="./cbc:Note"/>
			<xsl:with-param name="keyfield" select="'kdvoran'"/>
			<xsl:with-param name="forcedfield" select="'kdvoran2'"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="print_kdv_tutar_adv">
		<xsl:variable name="org_deger">
			<xsl:call-template name="print_kdv_tutar"/>
		</xsl:variable>
		<xsl:call-template name="ek_aciklamayi_al">
			<xsl:with-param name="org" select="$org_deger"/>
			<xsl:with-param name="aciklama" select="./cbc:Note"/>
			<xsl:with-param name="keyfield" select="'kdvtutar'"/>
			<xsl:with-param name="forcedfield" select="'kdvtutar2'"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="print_diger_vergiler_adv">
		<xsl:variable name="org_deger">
			<xsl:call-template name="print_diger_vergiler"/>
		</xsl:variable>
		<xsl:call-template name="ek_aciklamayi_al">
			<xsl:with-param name="org" select="$org_deger"/>
			<xsl:with-param name="aciklama" select="./cbc:Note"/>
			<xsl:with-param name="keyfield" select="'diger'"/>
			<xsl:with-param name="forcedfield" select="'diger2'"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="print_satir_toplam_adv">
		<xsl:variable name="org_deger">
			<xsl:call-template name="print_satir_toplam"/>
		</xsl:variable>
		<xsl:call-template name="ek_aciklamayi_al">
			<xsl:with-param name="org" select="$org_deger"/>
			<xsl:with-param name="aciklama" select="./cbc:Note"/>
			<xsl:with-param name="keyfield" select="'toplam'"/>
			<xsl:with-param name="forcedfield" select="'toplam2'"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="duzenleme_tarihi">
		<xsl:variable name="tarih">
			<xsl:value-of
				select="//n1:Invoice/ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/ds:Signature/ds:Object/xades:QualifyingProperties/xades:SignedProperties/xades:SignedSignatureProperties/xades:SigningTime"
			/>
		</xsl:variable>
		<xsl:choose>
			<xsl:when test="$tarih and $tarih != ''">
				<div>
					<xsl:value-of disable-output-escaping="yes" select="substring($tarih, 9, 2)"
						/>-<xsl:value-of disable-output-escaping="yes"
						select="substring($tarih, 6, 2)"/>-<xsl:value-of
						disable-output-escaping="yes" select="substring($tarih, 1, 4)"/> Saat :
						<xsl:value-of disable-output-escaping="yes"
						select="substring($tarih, 12, 2)"/>:<xsl:value-of
						disable-output-escaping="yes" select="substring($tarih, 15, 2)"
						/>:<xsl:value-of disable-output-escaping="yes"
						select="substring($tarih, 18, 2)"/>
				</div>
			</xsl:when>
			<xsl:otherwise><xsl:value-of disable-output-escaping="yes"
					select="//n1:Invoice/cbc:IssueDate"/> 09:00</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="print_basit_tarih">
		<xsl:param name="tarih"/>
		<xsl:value-of disable-output-escaping="yes" select="substring($tarih, 9, 2)"/>-<xsl:value-of
			disable-output-escaping="yes" select="substring($tarih, 6, 2)"/>-<xsl:value-of
			disable-output-escaping="yes" select="substring($tarih, 1, 4)"/>
	</xsl:template>
	<xsl:template name="print_miktar_birim">
		<xsl:param name="birim"/>
		<xsl:value-of disable-output-escaping="yes" select="' '"/>
		<xsl:choose>
			<xsl:when test="$birim = '26'">Ton</xsl:when>
			<xsl:when test="$birim = 'BX'">Kutu</xsl:when>
			<xsl:when test="$birim = 'LTR'">LT</xsl:when>
			<xsl:when test="$birim = 'C62'">Adet</xsl:when>
			<xsl:when test="$birim = 'NIU'">Adet</xsl:when>
			<xsl:when test="$birim = 'EA'">Adet</xsl:when>
			<xsl:when test="$birim = 'KGM'">KG</xsl:when>
			<xsl:when test="$birim = 'KJO'">kJ</xsl:when>
			<xsl:when test="$birim = 'GRM'">G</xsl:when>
			<xsl:when test="$birim = 'MGM'">MG</xsl:when>
			<xsl:when test="$birim = 'NT'">Net Ton</xsl:when>
			<xsl:when test="$birim = 'GT'">GT</xsl:when>
			<xsl:when test="$birim = 'MTR'">M</xsl:when>
			<xsl:when test="$birim = 'MMT'">MM</xsl:when>
			<xsl:when test="$birim = 'KTM'">KM</xsl:when>
			<xsl:when test="$birim = 'MLT'">ML</xsl:when>
			<xsl:when test="$birim = 'MMQ'">MM3</xsl:when>
			<xsl:when test="$birim = 'CLT'">CL</xsl:when>
			<xsl:when test="$birim = 'CMK'">CM2</xsl:when>
			<xsl:when test="$birim = 'CMQ'">CM3</xsl:when>
			<xsl:when test="$birim = 'CMT'">CM</xsl:when>
			<xsl:when test="$birim = 'MTK'">M2</xsl:when>
			<xsl:when test="$birim = 'MTQ'">M3</xsl:when>
			<xsl:when test="$birim = 'DAY'">Gün</xsl:when>
			<xsl:when test="$birim = 'MIN'">Dakika</xsl:when>
			<xsl:when test="$birim = 'SEC'">Saniye</xsl:when>
			<xsl:when test="$birim = 'HUR'">Saat</xsl:when>
			<xsl:when test="$birim = 'ANN'">Yıl</xsl:when>
			<xsl:when test="$birim = 'MON'">Ay</xsl:when>
			<xsl:when test="$birim = 'PA'">Paket</xsl:when>
			<xsl:when test="$birim = 'KWH'">KWHl</xsl:when>
			<xsl:otherwise> Evr : <xsl:value-of select="$birim"/></xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="printMusteriAdi">
		<xsl:choose>
			<xsl:when
				test="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyName and //n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyName/cbc:Name and string-length(//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyName/cbc:Name) &gt; 2">
				<xsl:value-of
					select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyName/cbc:Name"
				/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:for-each select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:Person">
					<div>
						<xsl:value-of
							select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:Person/cbc:FirstName"/>
						<xsl:text>&#160;</xsl:text>
						<xsl:value-of
							select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:Person/cbc:MiddleName"/>
						<xsl:text>&#160;</xsl:text>
						<xsl:value-of
							select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:Person/cbc:FamilyName"
						/>
					</div>
				</xsl:for-each>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="print_miktar">
		<xsl:call-template name="mytag">
			<xsl:with-param name="tag" select="'span'"/>
		</xsl:call-template>
		<xsl:choose>
			<xsl:when test="floor(./cbc:InvoicedQuantity) = ./cbc:InvoicedQuantity">
				<xsl:value-of
					select="format-number(./cbc:InvoicedQuantity, '###.##0,##', 'european')"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of
					select="format-number(./cbc:InvoicedQuantity, '###.##0,00', 'european')"/>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:call-template name="print_miktar_birim">
			<xsl:with-param name="birim" select="./cbc:InvoicedQuantity/@unitCode"/>
		</xsl:call-template>
		<xsl:call-template name="mytag">
			<xsl:with-param name="tag" select="'/span'"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="alt_notlar">
		<xsl:for-each select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
			<xsl:if
				test="(cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = '0015' or ../../cbc:InvoiceTypeCode = 'OZELMATRAH') and cac:TaxCategory/cbc:TaxExemptionReason">
				<div class="fatura_not_container">
					<b>Vergi İstisna Muafiyet Sebebi: </b>
					<xsl:value-of select="cac:TaxCategory/cbc:TaxExemptionReasonCode"/>
					<xsl:text>-</xsl:text>
					<xsl:value-of select="cac:TaxCategory/cbc:TaxExemptionReason"/>
				</div>
			</xsl:if>
			<xsl:if
				test="starts-with(cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode, '007') and cac:TaxCategory/cbc:TaxExemptionReason">
				<div class="fatura_not_container">
					<b>ÖTV İstisna Muafiyet Sebebi: </b>
					<xsl:value-of select="cac:TaxCategory/cbc:TaxExemptionReasonCode"/>
					<xsl:text>-</xsl:text>
					<xsl:value-of select="cac:TaxCategory/cbc:TaxExemptionReason"/>
				</div>
			</xsl:if>
		</xsl:for-each>
		<xsl:for-each
			select="//n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
			<div class="fatura_not_container">
				<b>Tevkifat Sebebi: </b>
				<xsl:value-of select="cbc:TaxTypeCode"/>
				<xsl:text>-</xsl:text>
				<xsl:choose>
					<xsl:when test="cbc:Name and cbc:Name != ''">
						<xsl:value-of select="cbc:Name"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:call-template name="tevkifat_aciklamasi">
							<xsl:with-param name="p1" select="cbc:TaxTypeCode"/>
						</xsl:call-template>
					</xsl:otherwise>
				</xsl:choose>

			</div>
		</xsl:for-each>

	</xsl:template>

	<xsl:template name="my_replace">
		<xsl:param name="text"/>
		<xsl:param name="replace"/>
		<xsl:param name="by"/>
		<xsl:choose>
			<xsl:when test="contains($text, $replace)">
				<xsl:value-of select="substring-before($text, $replace)"/>
				<xsl:value-of select="$by" disable-output-escaping="yes"/>
				<xsl:call-template name="my_replace">
					<xsl:with-param name="text" select="substring-after($text, $replace)"/>
					<xsl:with-param name="replace" select="$replace"/>
					<xsl:with-param name="by" select="$by"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$text"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="my_replace_html">
		<xsl:param name="text"/>

		<xsl:variable name="text1">
			<xsl:call-template name="my_replace">
				<xsl:with-param name="text" select="$text"/>
				<xsl:with-param name="replace" select="'||'"/>
				<xsl:with-param name="by" select="'&lt;br/&gt;'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="text2">
			<xsl:call-template name="my_replace">
				<xsl:with-param name="text" select="$text1"/>
				<xsl:with-param name="replace" select="'%br'"/>
				<xsl:with-param name="by" select="'&lt;br/&gt;'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="text3">
			<xsl:call-template name="my_replace">
				<xsl:with-param name="text" select="$text2"/>
				<xsl:with-param name="replace" select="'%lt'"/>
				<xsl:with-param name="by" select="'&lt;'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="text4">
			<xsl:call-template name="my_replace">
				<xsl:with-param name="text" select="$text3"/>
				<xsl:with-param name="replace" select="'%gt'"/>
				<xsl:with-param name="by" select="'&gt;'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:value-of select="$text4" disable-output-escaping="yes"/>
	</xsl:template>
	<xsl:template name="doviz_kuru_goster">
		<xsl:if test="//n1:Invoice/cac:PricingExchangeRate/cbc:SourceCurrencyCode">
			<xsl:if test="//n1:Invoice/cac:PricingExchangeRate/cbc:SourceCurrencyCode != 'TRY'">
				<div class="myframe yazi_container">
					<span class="yazi_ile"> 1 <xsl:value-of
							select="//n1:Invoice/cac:PricingExchangeRate/cbc:SourceCurrencyCode"
							disable-output-escaping="yes"/> = <xsl:value-of
							select="//n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate"
							disable-output-escaping="yes"/>
						<xsl:call-template name="doviz"><xsl:with-param name="doviz_id"
								select="//n1:Invoice/cac:PricingExchangeRate/cbc:TargetCurrencyCode"
							/></xsl:call-template>
					</span>
				</div>
			</xsl:if>
		</xsl:if>
	</xsl:template>
	<xsl:template name="irsaliyeleri_yazdir">
		<xsl:if
			test="//n1:Invoice/cac:DespatchDocumentReference and count(//n1:Invoice/cac:DespatchDocumentReference) > 0">
			<div class="fatura_not_container_w_box">
				<xsl:if
					test="//n1:Invoice/cac:DespatchDocumentReference and count(//n1:Invoice/cac:DespatchDocumentReference) > 1">
					<div>
						<b>İRSALİYELER : </b>
					</div>
				</xsl:if>
				<xsl:if
					test="//n1:Invoice/cac:DespatchDocumentReference and count(//n1:Invoice/cac:DespatchDocumentReference) = 1">
					<div>
						<b>İRSALİYE :</b>
					</div>
				</xsl:if>
				<div class="irsaliye_item_container">
					<xsl:for-each select="//n1:Invoice/cac:DespatchDocumentReference">
						<span class="alt_irsaliye_item">
							<b>No :</b>&#160;<xsl:value-of select="./cbc:ID"
								disable-output-escaping="yes"/> &#160;&#160; <br/><b>Tarih:
								&#160;</b>
							<xsl:call-template name="print_basit_tarih">
								<xsl:with-param name="tarih" select="./cbc:IssueDate"/>
							</xsl:call-template>
						</span>
					</xsl:for-each>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template name="fatura_notlari_yazdir">
		<xsl:param name="tip"/>
		<!-- açıklama not eklersen  -->


		<xsl:if test="not(//n1:Invoice/cac:DespatchDocumentReference)">
			<div class="fatura_not_container_w_box"> İş bu faturadaki mal alıcıya iş yerinde teslim
				edildiğinden 213 sayılı V.U.K.nun 230/5. maddesi gereğince sevk irsaliyesi
				düzenlenmemiştir. <br/>
				<xsl:text>  Fiş Düzenlenme Saati =  </xsl:text>
				<xsl:value-of select="//n1:Invoice/cbc:IssueTime"/>
				<br/>
			</div>
		</xsl:if>

		<xsl:choose>
			<xsl:when test="$tip and $tip = '0'">
				<div class="fatura_not_container_w_box">
					<xsl:if test="//n1:Invoice/cbc:Note">
						<b>&#160;&#160;&#160;&#160;&#160; Genel Açıklamalar</b>
						<br/>
						<xsl:for-each select="//n1:Invoice/cbc:Note">
							<b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</b>
							<xsl:value-of select="."/>
							<br/>
						</xsl:for-each>
					</xsl:if>
				</div>
			</xsl:when>


		</xsl:choose>
		<xsl:if test="//n1:Invoice/cac:PaymentMeans and count(//n1:Invoice/cac:PaymentMeans) > 0">
			<div class="fatura_not_container_w_box">
				<b>Ödeme Koşulları:</b>
				<br/>
				<xsl:for-each select="//n1:Invoice/cac:PaymentMeans">
					<div>
						<xsl:if test=". != '' and . != 'null'">
							<xsl:choose>
								<xsl:when
									test="cbc:InstructionNote and string-length(cbc:InstructionNote) > 0">
									<xsl:value-of select="cbc:InstructionNote"
										disable-output-escaping="yes"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="cbc:PaymentMeansCode"
										disable-output-escaping="yes"/> : <xsl:value-of
										select="cbc:PaymentDueDate" disable-output-escaping="yes"/>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:if>
					</div>
				</xsl:for-each>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template name="optevkifat2">
		<xsl:value-of select="'0'"/>
	</xsl:template>
	<xsl:template name="optevkifat3">
		<xsl:value-of select="'1'"/>
	</xsl:template>
	<xsl:template name="tevkifat_aciklamasi">
		<xsl:param name="p1"/>
		<xsl:if test="$p1">
			<xsl:choose>
				<xsl:when test="$p1 = '601'">YAPIM İŞLERİ İLE BU İŞLERLE BİRLİKTE İFA EDİLEN
					MÜHENDİSLİK-MİMARLIK VE ETÜT-PROJE HİZMETLERİ *GT 117-Bölüm (3.2.1)+</xsl:when>
				<xsl:when test="$p1 = '602'">ETÜT, PLAN-PROJE, DANIŞMANLIK, DENETİM VE BENZERİ
					HİZMETLER*GT 117-Bölüm (3.2.2)+</xsl:when>
				<xsl:when test="$p1 = '603'">MAKİNE, TEÇHİZAT, DEMİRBAŞ VE TAŞITLARA AİT TADİL,
					BAKIM VE ONARIM HİZMETLERİ *GT 117-Bölüm (3.2.3)</xsl:when>
				<xsl:when test="$p1 = '604'">YEMEK SERVİS HİZMETİ *GT 117-Bölüm (3.2.4)+</xsl:when>
				<xsl:when test="$p1 = '605'">ORGANİZASYON HİZMETİ *GT 117-Bölüm (3.2.4)+</xsl:when>
				<xsl:when test="$p1 = '606'">İŞGÜCÜ TEMİN HİZMETLERİ *GT 117-Bölüm
					(3.2.5)+</xsl:when>
				<xsl:when test="$p1 = '607'">ÖZEL GÜVENLİK HİZMETİ *GT 117-Bölüm (3.2.5)+</xsl:when>
				<xsl:when test="$p1 = '608'">YAPI DENETİM HİZMETLERİ *GT 117-Bölüm
					(3.2.6)+</xsl:when>
				<xsl:when test="$p1 = '609'">FASON OLARAK YAPTIRILAN TEKSTİL VE KONFEKSİYON İŞLERİ,
					ÇANTA VE AYAKKABI DİKİM İŞLERİ VE BU İŞLERE ARACILIK HİZMETLERİ *GT 117-Bölüm
					(3.2.7)+</xsl:when>
				<xsl:when test="$p1 = '610'">TURİSTİK MAĞAZALARA VERİLEN MÜŞTERİ BULMA / GÖTÜRME
					HİZMETLERİ *GT 117-Bölüm (3.2.8)+</xsl:when>
				<xsl:when test="$p1 = '611'">SPOR KULÜPLERİNİN YAYIN, REKLÂM VE İSİM HAKKI
					GELİRLERİNE KONU İŞLEMLERİ *GT 117-Bölüm (3.2.9)+</xsl:when>
				<xsl:when test="$p1 = '612'">TEMİZLİK HİZMETİ *GT 117-Bölüm (3.2.10)+</xsl:when>
				<xsl:when test="$p1 = '613'">ÇEVRE VE BAHÇE BAKIM HİZMETLERİ *GT 117-Bölüm
					(3.2.10)+</xsl:when>
				<xsl:when test="$p1 = '614'">SERVİS TAŞIMACILIĞI HİZMETİ *GT 117-Bölüm
					(3.2.11)+</xsl:when>
				<xsl:when test="$p1 = '615'">HER TÜRLÜ BASKI VE BASIM HİZMETLERİ *GT 117-Bölüm
					(3.2.12)+</xsl:when>
				<xsl:when test="$p1 = '616'">5018 SAYILI KANUNA EKLİ CETVELLERDEKİ İDARE, KURUM VE
					KURUŞLARA YAPILAN DİĞER HİZMETLER *GT 117-Bölüm (3.2.13)+</xsl:when>
				<xsl:when test="$p1 = '617'">HURDA METALDEN ELDE EDİLEN KÜLÇE TESLİMLERİ *GT
					117-Bölüm (3.3.1)+</xsl:when>
				<xsl:when test="$p1 = '618'">HURDA METALDEN ELDE EDİLENLER DIŞINDAKİ BAKIR, ÇİNKO VE
					ALÜMİNYUM KÜLÇE TESLİMLERİ *GT 117-Bölüm (3.3.1)+</xsl:when>
				<xsl:when test="$p1 = '619'">BAKIR, ÇİNKO VE ALÜMİNYUM ÜRÜNLERİNİN TESLİMİ *GT
					117-Bölüm (3.3.2)+</xsl:when>
				<xsl:when test="$p1 = '620'">İSTİSNADAN VAZGEÇENLERİN HURDA VE ATIK TESLİMİ *GT
					117-Bölüm (3.3.3)+</xsl:when>
				<xsl:when test="$p1 = '621'">METAL, PLASTİK, LASTİK, KAUÇUK, KÂĞIT VE CAM HURDA VE
					ATIKLARDAN ELDE EDİLEN HAMMADDE TESLİMİ *GT 117-Bölüm (3.3.4)]</xsl:when>
				<xsl:when test="$p1 = '622'">PAMUK, TİFTİK, YÜN VE YAPAĞI İLE HAM POST VE DERİ
					TESLİMLERİ *GT 117-Bölüm (3.3.5)+</xsl:when>
				<xsl:when test="$p1 = '623'">AĞAÇ VE ORMAN ÜRÜNLERİ TESLİMİ *GT 117-Bölüm
					(3.3.6)+</xsl:when>
				<xsl:when test="$p1 = '650'">DİĞERLERİ</xsl:when>
			</xsl:choose>
		</xsl:if>

	</xsl:template>
	<xsl:template name="fatura_satir">
		<xsl:param name="el"/>
		<tr>
			<xsl:attribute name="class">
				<xsl:choose>
					<xsl:when test="position() mod 2 = 1">satir odd</xsl:when>
					<xsl:otherwise>satir even</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
			<td class="satir_sira kolon_deger">
				<div class="span_satir_sira">
					<xsl:value-of select="position()"/>
				</div>
			</td>
			<td class="satir_kod kolon_deger">
				<div class="span_satir_kod">
					<xsl:call-template name="print_satir_urun_kodu"/>
				</div>
			</td>
			<td class="satir_mal kolon_deger">
				<div class="span_satir_mal">
					<xsl:if test="./cac:Item/cbc:Name != '' and ./cac:Item/cbc:Name != 'null'">
						<xsl:value-of select="./cac:Item/cbc:Name" disable-output-escaping="yes"/>
					</xsl:if>
					<xsl:if
						test="./cac:Item/cbc:BrandName != '' and ./cac:Item/cbc:BrandName != 'null'">
						<xsl:text>&#160;</xsl:text>
						<xsl:value-of select="./cac:Item/cbc:BrandName"
							disable-output-escaping="yes"/>
					</xsl:if>
					<xsl:if
						test="./cac:Item/cbc:ModelName != '' and ./cac:Item/cbc:ModelName != 'null'">
						<xsl:text>&#160;</xsl:text>
						<xsl:value-of select="./cac:Item/cbc:ModelName"
							disable-output-escaping="yes"/>
					</xsl:if>
					<xsl:if
						test="./cac:Item/cbc:Description != '' and ./cac:Item/cbc:Description != 'null'">
						<xsl:text>&#160;</xsl:text>
						<xsl:value-of select="./cac:Item/cbc:Description"
							disable-output-escaping="yes"/>
					</xsl:if>
					<xsl:call-template name="print_satir_notu"/>
				</div>
			</td>
			<td class="satir_miktar kolon_deger">
				<div class="span_satir_miktar">
					<xsl:call-template name="print_miktar_adv"/>
				</div>
			</td>
			<td class="satir_bfiyat kolon_deger">
				<div class="span_satir_bfiyat">
					<xsl:call-template name="print_birim_fiyat_adv"/>
				</div>
			</td>
			<td class="satir_iskonto_oran kolon_deger">
				<div class="span_satir_iskonto_oran">
					<xsl:call-template name="print_iskonto_oran_adv"/>
				</div>
			</td>
			<td class="satir_iskonto_tutar kolon_deger">
				<div class="span_satir_iskonto_tutar">
					<xsl:call-template name="print_iskonto_tutar_adv"/>
				</div>
			</td>
			<td class="satir_kdv_oran kolon_deger">
				<div class="span_satir_kdv_oran">
					<xsl:call-template name="print_kdv_oran_adv"/>
				</div>
			</td>
			<td class="satir_kdv_tutar kolon_deger">
				<div class="span_satir_kdv_tutar">
					<xsl:call-template name="print_kdv_tutar_adv"/>
				</div>
			</td>
			<td class="satir_vergiler kolon_deger">
				<div class="span_satir_vergiler">
					<xsl:call-template name="print_diger_vergiler_adv"/>
				</div>
			</td>
			<td class="satir_toplam kolon_deger">
				<div class="span_satir_toplam">
					<xsl:call-template name="print_satir_toplam_adv"/>
				</div>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>

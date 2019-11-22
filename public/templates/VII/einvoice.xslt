<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  exclude-result-prefixes="cac cbc ccts clm54217 clm5639 clm66411 clmIANAMIMEMediaType fn link n1 qdt udt xbrldi xbrli xdt xlink xs xsd xsi"
  version="2.0" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"
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
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:decimal-format NaN="" decimal-separator="," grouping-separator="." name="european"/>
  <xsl:output doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN"
    doctype-system="http://www.w3.org/TR/html4/loose.dtd" encoding="UTF-8" indent="no" method="html"
    omit-xml-declaration="yes" version="4.0"/>
  <xsl:template name="idAsDate">
    <xsl:value-of select="substring(cbc:ID, 9, 2)"/>.<xsl:value-of select="substring(cbc:ID, 6, 2)"
      />.<xsl:value-of select="substring(cbc:ID, 1, 4)"/>
  </xsl:template>
  <xsl:template name="internetSaleIdField">
    <xsl:choose>
      <!-- INTERNET SALE -->
      <xsl:when test="cbc:DocumentTypeCode[text() = 'EUPRWEBURI']">
        <td>
          <label>Web Adresi</label>
        </td>
        <td>
          <xsl:value-of select="cbc:ID"/>
        </td>
      </xsl:when>
      <xsl:when test="cbc:DocumentTypeCode[text() = 'EUPRPAY']">
        <td>
          <label>Ödeme Şekli</label>
        </td>
        <td>
          <xsl:value-of select="cbc:ID"/>
        </td>
      </xsl:when>
      <xsl:when test="cbc:DocumentTypeCode[text() = 'EREPODARAC']">
        <td>
          <label>Ödeme Aracısı Adı</label>
        </td>
        <td>
          <xsl:value-of select="cbc:ID"/>
        </td>
      </xsl:when>
      <xsl:when test="cbc:DocumentTypeCode[text() = 'EUPRPAYDATE']">
        <td>
          <label>Ödeme Tarihi</label>
        </td>
        <td>
          <xsl:call-template name="idAsDate"/>
        </td>
      </xsl:when>
      <!-- SHIPMENT -->
      <xsl:when test="cbc:DocumentTypeCode[text() = 'EUPRPAYDELIV']">
        <td>
          <label>Gönderim Tarihi</label>
        </td>
        <td>
          <xsl:call-template name="idAsDate"/>
        </td>
      </xsl:when>
      <xsl:when test="cbc:DocumentTypeCode[text() = 'EUPRCARR2NAME2']">
        <td>
          <label>Taşıyanın Ünvanı</label>
        </td>
        <td>
          <xsl:value-of select="cbc:ID"/>
        </td>
      </xsl:when>
      <xsl:when test="cbc:DocumentTypeCode[text() = 'EUPRCARR2']">
        <td>
          <label>Taşıyanın VKN</label>
        </td>
        <td>
          <xsl:value-of select="cbc:ID"/>
        </td>
      </xsl:when>
      <xsl:when test="cbc:DocumentTypeCode[text() = 'EUPRCARR1NAME']">
        <td>
          <label>Taşıyanın Ad Soyadı</label>
        </td>
        <td>
          <xsl:value-of select="cbc:ID"/>
        </td>
      </xsl:when>
      <xsl:when test="cbc:DocumentTypeCode[text() = 'EUPRCARR1']">
        <td>
          <label>Taşıyanın TCKN</label>
        </td>
        <td>
          <xsl:value-of select="cbc:ID"/>
        </td>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
  <xsl:template name="quantity">
    <!-- <xsl:value-of select="format-number(., '###.###,####', 'european')"/> -->
    <xsl:value-of select="."/>
    <xsl:if test="./@unitCode">
      <xsl:for-each select=".">
        <xsl:text> </xsl:text>
        <xsl:choose>
          <xsl:when test="@unitCode = '26'">
            <xsl:text>ton</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'BX'">
            <xsl:text>Kutu</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'LTR'">
            <xsl:text>lt</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'NIU'">
            <xsl:text>Adet</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'KGM'">
            <xsl:text>kg</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'KJO'">
            <xsl:text>kJ</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'GRM'">
            <xsl:text>g</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'MGM'">
            <xsl:text>mg</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'NT'">
            <xsl:text>Net Ton</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'GT'">
            <xsl:text>Gross Ton</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'MTR'">
            <xsl:text>m</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'MMT'">
            <xsl:text>mm</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'KTM'">
            <xsl:text>km</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'MLT'">
            <xsl:text>ml</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'MMQ'">
            <xsl:text>mm3</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'CLT'">
            <xsl:text>cl</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'CMK'">
            <xsl:text>cm2</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'CMQ'">
            <xsl:text>cm3</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'CMT'">
            <xsl:text>cm</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'MTK'">
            <xsl:text>m2</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'MTQ'">
            <xsl:text>m3</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'DAY'">
            <xsl:text> Gün</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'MON'">
            <xsl:text> Ay</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'PA'">
            <xsl:text> Paket</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'KWH'">
            <xsl:text> KWH</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'ANN'">
            <xsl:text> Yıl</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'HUR'">
            <xsl:text> Saat</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'D61'">
            <xsl:text> Dakika</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'D62'">
            <xsl:text> Saniye</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'CCT'">
            <xsl:text> Ton baş.taşıma kap.</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'D30'">
            <xsl:text> Brüt kalori</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'D40'">
            <xsl:text> 1000 lt</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'LPA'">
            <xsl:text> saf alkol lt</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'B32'">
            <xsl:text> kg.m2</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'NCL'">
            <xsl:text> hücre adet</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'PR'">
            <xsl:text> Çift</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'R9'">
            <xsl:text> 1000 m3</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'SET'">
            <xsl:text> Set</xsl:text>
          </xsl:when>
          <xsl:when test="@unitCode = 'T3'">
            <xsl:text> 1000 adet</xsl:text>
          </xsl:when>
        </xsl:choose>
      </xsl:for-each>
    </xsl:if>
  </xsl:template>
  <xsl:template name="currencyText">
    <xsl:value-of select="format-number(., '###.##0,00', 'european')"/>
    <xsl:if test="@currencyID">
      <xsl:text> </xsl:text>
      <xsl:choose>
        <xsl:when test="@currencyID = 'TRY'">
          <xsl:text>TL</xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="@currencyID"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
  </xsl:template>
  <xsl:variable name="priceAmountDecimalLength">
    <xsl:call-template name="calculateLongestPriceAmountDecimal"/>
  </xsl:variable>
  <xsl:template name="calculateLongestPriceAmountDecimal">
    <xsl:for-each select="n1:Invoice/cac:InvoiceLine/cac:Price/cbc:PriceAmount">
      <xsl:sort select="string-length(substring-after(., '.'))" data-type="number"/>
      <xsl:if test="position() = last()">
        <xsl:value-of select="string-length(substring-after(., '.'))"/>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  <xsl:template name="priceAmount">
    <xsl:choose>
      <xsl:when test="$priceAmountDecimalLength = 0">
        <xsl:value-of select="format-number(., '###.##0,00', 'european')"/>
      </xsl:when>
      <xsl:when test="$priceAmountDecimalLength = 1">
        <xsl:value-of select="format-number(., '###.##0,00', 'european')"/>
      </xsl:when>
      <xsl:when test="$priceAmountDecimalLength = 2">
        <xsl:value-of select="format-number(., '###.##0,00', 'european')"/>
      </xsl:when>
      <xsl:when test="$priceAmountDecimalLength = 3">
        <xsl:value-of select="format-number(., '###.##0,000', 'european')"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="format-number(., '###.##0,0000', 'european')"/>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:if test="@currencyID">
      <xsl:text> </xsl:text>
      <xsl:choose>
        <xsl:when test="@currencyID = 'TRY'">
          <xsl:text>TL</xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="@currencyID"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
  </xsl:template>
  <xsl:template name="lineItemsRow">
    <tr>

      <td>
        <xsl:value-of select="cbc:ID"/>
      </td>


      <td>
        <xsl:value-of select="cac:Item/cbc:Name"/>
      </td>



      <td align="right">
        <xsl:for-each select="cbc:InvoicedQuantity">
          <xsl:call-template name="quantity"/>
        </xsl:for-each>
      </td>


      <td align="right">
        <xsl:for-each select="cac:Price/cbc:PriceAmount">
          <xsl:call-template name="priceAmount"/>
        </xsl:for-each>
      </td>




      <td data-role="col-tax-percentage" align="right">
        <xsl:for-each select="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
          <xsl:if test="cbc:TaxTypeCode = '0015'">
            <xsl:if test="../../cbc:Percent">
              <xsl:text> %</xsl:text>
              <xsl:value-of select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
            </xsl:if>
          </xsl:if>
        </xsl:for-each>
      </td>


      <td data-role="col-tax-total" align="right">
        <xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
          <xsl:if test="cbc:TaxTypeCode = '0015'">
            <xsl:for-each select="../../cbc:TaxAmount">
              <xsl:call-template name="currencyText"/>
            </xsl:for-each>
          </xsl:if>
        </xsl:for-each>
      </td>



      <td align="right">
        <xsl:for-each select="cbc:LineExtensionAmount">
          <xsl:call-template name="currencyText"/>
        </xsl:for-each>
      </td>

    </tr>
  </xsl:template>
  <xsl:template name="partyBlockName">
    <xsl:if test="cac:PartyName">
      <div data-role="company-name">
        <b>
          <xsl:value-of select="cac:PartyName/cbc:Name"/>
        </b>
      </div>
    </xsl:if>
  </xsl:template>
  <xsl:template name="partyBlockPostalAddress">
    <xsl:for-each select="cac:PostalAddress">
      <div data-role="company-address">
        <xsl:value-of select="cbc:StreetName"/>&#160;<xsl:value-of select="cbc:BuildingNumber"/>
      </div>
      <div data-role="company-district-city">
        <!-- District, City -->
        <xsl:if test="cbc:CitySubdivisionName != ''">
          <xsl:value-of select="cbc:CitySubdivisionName"/>, </xsl:if>
        <xsl:if test="cbc:CityName != ''">
          <xsl:value-of select="cbc:CityName"/>
        </xsl:if>
        <xsl:if test="cac:Country != ''"> &#8211; <xsl:value-of select="cac:Country/cbc:Name"/>
        </xsl:if>
      </div>
    </xsl:for-each>
  </xsl:template>
  <xsl:template name="partyBlockTelephone">
    <xsl:if test="cac:Contact/cbc:Telephone != ''">
      <div data-role="company-phone">
        <label>Telefon</label>
        <xsl:value-of select="cac:Contact/cbc:Telephone"/>
      </div>
    </xsl:if>
  </xsl:template>
  <xsl:template name="partyBlockTelefax">
    <xsl:if test="cac:Contact/cbc:Telefax != ''">
      <div data-role="company-phone">
        <label>Faks</label>
        <xsl:value-of select="cac:Contact/cbc:Telefax"/>
      </div>
    </xsl:if>
  </xsl:template>
  <xsl:template name="partyBlockElectronicMail">
    <xsl:if test="cac:Contact/cbc:ElectronicMail != ''">
      <div data-role="company-email">
        <!-- Email -->
        <label>E-posta</label>
        <xsl:value-of select="cac:Contact/cbc:ElectronicMail"/>
      </div>
    </xsl:if>
  </xsl:template>
  <xsl:template name="partyBlockOtherCommunication">
    <xsl:for-each select="cac:Contact/cac:OtherCommunication">
      <xsl:if test="cbc:ChannelCode = 'AH'">
        <div data-role="company-website">
          <label>Web Sitesi</label>
          <xsl:value-of select="cbc:Value"/>
        </div>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  <xsl:template name="partyBlockTaxInfo">
    <div data-role="company-tax-info">
      <!-- Tax number -->
      <label>Vergi No</label>
      <xsl:choose>
        <xsl:when test="cac:PartyIdentification/cbc:ID[@schemeID = 'VKN'] != ''">
          <xsl:value-of select="cac:PartyIdentification/cbc:ID[@schemeID = 'VKN']"/>
        </xsl:when>
        <xsl:when test="cac:PartyIdentification/cbc:ID[@schemeID = 'TCKN'] != ''">
          <xsl:value-of select="cac:PartyIdentification/cbc:ID[@schemeID = 'TCKN']"/>
        </xsl:when>
      </xsl:choose>
      <xsl:if test="cac:PartyTaxScheme/cac:TaxScheme/cbc:Name != ''"> (<xsl:value-of
          select="cac:PartyTaxScheme/cac:TaxScheme/cbc:Name"/>) </xsl:if>
    </div>
  </xsl:template>
  <xsl:template name="partyBlockTradeRegistryInfo">
    <xsl:if test="cac:PartyIdentification/cbc:ID[@schemeID = 'TICARETSICILNO'] != ''">
      <div data-role="company-ticaret">
        <!-- Ticaret Sicil number -->
        <label>Ticaret Sicil No</label>
        <xsl:value-of select="cac:PartyIdentification/cbc:ID[@schemeID = 'TICARETSICILNO']"/>
      </div>
    </xsl:if>
  </xsl:template>
  <xsl:template name="partyBlockMersisNo">
    <xsl:if test="cac:PartyIdentification/cbc:ID[@schemeID = 'MERSISNO'] != ''">
      <div data-role="company-mersis">
        <!-- Mersis number -->
        <label>Mersis No</label>
        <xsl:value-of select="cac:PartyIdentification/cbc:ID[@schemeID = 'MERSISNO']"/>
      </div>
    </xsl:if>
  </xsl:template>
  <xsl:template name="partyBlock">
    <xsl:call-template name="partyBlockName"/>
    <xsl:call-template name="partyBlockPostalAddress"/>
    <xsl:call-template name="partyBlockTelephone"/>
    <xsl:call-template name="partyBlockTelefax"/>
    <xsl:call-template name="partyBlockElectronicMail"/>
    <xsl:call-template name="partyBlockOtherCommunication"/>
    <xsl:call-template name="partyBlockTaxInfo"/>
    <xsl:call-template name="partyBlockTradeRegistryInfo"/>
    <xsl:call-template name="partyBlockMersisNo"/>
  </xsl:template>
  <xsl:template match="/">
    <html lang="en">
      <head>
        <meta charset="UTF-8"/>
        <title>Document</title>
        <style>
          body {
            margin: 0;
            padding: 0;
            font-family: Avenir, Century Gothic, Arial, sans-serif;
            font-size: 12px;
            line-height: 1.5em;
            font-kerning: normal;
            letter-spacing: 0.02em;
            color: #666;
          }

          table {
            border: 0;
            border-collapse: collapse;
            width: 100%;
          }

          table {
            page-break-inside: auto
          }

          table tr td,
          table tr th,
          table tr {
            -webkit-column-break-inside: avoid;
            page-break-inside: avoid;
            break-inside: avoid;
            page-break-after: auto;
          }

          thead {
            display: table-header-group;
          }

          tfoot {
            display: table-footer-group;
          }

          label {
            display: block;
            color: #999;
            font-weight: bold;
            font-size: smaller;
            line-height: 1em;
            margin-top: 0.5em;
          }

          .invoice-ui {
            display: none;
          }

          @media only screen {
            .invoice {
              display: block;
              min-height: 1100px;
              padding: 50px;
              background-color: #fff;
              width: 672px;
              margin: 0 auto;
            }
            .invoice-ui {
              position: absolute;
              right: 0;
              top: 0;
              display: block;
              padding: 50px;
              width: calc(100vw - 1050px);
              min-height: 400px;
            }
            .invoice-ui #switcher a {
              display: inline-block;
              padding: 10px;
              background-color: #fff;
              border-radius: 5px;
              text-decoration: none;
            }
            .invoice-ui #switcher a + a {
              margin-left: 10px;
            }
            .invoice-ui #switcher a input {
              pointer-events: none;
            }
          }

          .header {
            vertical-align: top;
          }

          .header thead td {
            padding-bottom: 1em;
          }

          hr {
            margin: 1.5em 0;
            border: 0;
            border-top: 1px solid #ccc;
          }

          .header td {
            vertical-align: top;
          }

          .header h1 {
            margin-top: 0.25em;
            color: #ddd;
            // letter-spacing: 0.1em;
          }

          .header .header__stamp {
            text-align: center;
          }


          /* Line items table */

          .lineitems {
            margin: 3em 0;
          }

          .lineitems thead {
            font-weight: bold;
            font-size: smaller;
            line-height: 1em;
          }

          .lineitems thead td {
            padding-bottom: 1em;
            border-bottom: 2px solid #ccc;
            white-space: nowrap;
          }

          .lineitems tbody td {
            padding-top: 0.5em;
          }


          /* Notes */

          .notes {
            vertical-align: top;
          }

          .field-border {
            margin-top: 20px;
            margin-right: 40px;
            border-bottom: 1px solid currentColor;
          }


          /* Totals table */

          .totals {
            text-align: right;
            width: auto;
          }

          .totals td {
            padding-top: 0.5em;
          }

          .totals td:first-child {
            padding-right: 2em;
          }

          .hideable {
            // display: none;
          }

          .hideable.isHidden {
            display: none !important;
          }

          .return-section {
            -webkit-column-break-inside: avoid;
            page-break-inside: avoid;
            break-inside: avoid;
            page-break-after: auto;
          }

          .u-mb1 {
            margin-bottom: 10px;
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
          
          #internetSatis{
          width: 670px;
          margin-bottom:10px
          }
        </style>
      </head>
      <body>
        <div class="invoice">
          <table class="header">
            <tbody>
              <tr>
                <td width="35%">

                  <!-- Company logo -->

                  {{LOGO}}


                  <xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">

                    <xsl:call-template name="partyBlockName"/>


                    <xsl:call-template name="partyBlockPostalAddress"/>


                    <xsl:call-template name="partyBlockTelephone"/>



                    <xsl:call-template name="partyBlockElectronicMail"/>



                    <xsl:call-template name="partyBlockTaxInfo"/>


                    <xsl:call-template name="partyBlockTradeRegistryInfo"/>


                    <xsl:call-template name="partyBlockMersisNo"/>

                  </xsl:for-each>
                  <br/>
                </td>

                <td width="30%" class="header__stamp">
                  <!-- GIB LOGO -->
                  <img style="width:91px;" align="middle" alt="E-Fatura Logo"
                    src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAMCAgICAgMCAgIDAwMDBAYEBAQEBAgGBgUGCQgKCgkICQkKDA8MCgsOCwkJDRENDg8QEBEQCgwSExIQEw8QEBD/2wBDAQMDAwQDBAgEBAgQCwkLEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBD/wgARCABYAFsDAREAAhEBAxEB/8QAHQAAAgICAwEAAAAAAAAAAAAABgcICQQFAAECA//EABwBAAEEAwEAAAAAAAAAAAAAAAMCBAUGAAEHCP/aAAwDAQACEAMQAAAAtS1nMzDVpcHGEO0CZkfXMPWZGU0KUoV63nMzpOCxxouQCdhKSNy6BlYNGrAmRi9+eKMAKb7I/rM129R8k25eJbijzQ1r3dIS1nv+Y9pNktu81nEtU00/C4o0x+BS5dIx96ZrUihYXWsSj+vB08HYlavNcPIDuNsVz8ppeTafNOnvGmjNMtXZHOS0G68qr6ciJAdhmDavND/e1qIET0ezmz+fNU4Ag5EMgo5afcoeDJzkpXUJz72yshu5o2PhcYq93CQ1h4dYlYuGih0p18Bjs1j5lM2Oc5uEpq557kwzwNxN78eVLUP2fLiz+dJqzHLvKsT51sZAFMbMmLszpcV+oLn/ALXBUqtuu/kqpmi+xLKbx5DkS+qS0BLKl+3lC3YatWRkM+fTTUKq33mGMH1qc1j4NCSA7ZcTePIBUtoglSbWdV9gty8zQYZCYM52cNZSZTQrKyDxvMfawJ0Jsuq802ZOtb9KzrMwVJSznYul3q9rI1A3+gMcCSoS+95zM//EACoQAAEFAQABAwMEAgMAAAAAAAUBAwQGBwIIABESEBMVCSExMhQWFyBB/9oACAEBAAEMAE/ZPoTKDAsB8oYIR4MNvYiNt7Vcup0ouKvV/tAPjh8zsvx52kncsxsg2BxqN2KMjtAuIyJCaa2k86Ures7HChOzLLm8a1QKNpdI0eE9Mp51qYqf9L7fRNAE8TprEibNtL5qfI6LaGo0pZ8xAa87dp9xtr/EIKPyLNK0DnCugjHYcjvHje+7x+Uu9XdcJal4iEfms60VL1XzgSw2yamOaGCndWkXDjUKBfdQnzAWg5FtMixS49LvaR41hRfoYLjwIqYbKyOGIdnvzQEnPs5Jhhy/4xlaDGeLYbj9scIqJ7qq+vK3yFWW/Mz2rz/tDy1s57e7cbjNI3mlGuu32L8OCZWOO8fsSD5ULQcKYYad0/KRGkQOPvzZI4mEkArtTkzq2VB+iN5DeitpGka7b+Gmbd6uz6Wq/V7NkVHIIHJ6oNv5IuNOoSb9eSuqLm1Ce4HPpwXuJ1yXI6itvddpU6kY0u4Q6aDTtOodbBeNGGSTQeA01KDbRba5vAGywrFPekC5nJGCzM59bdSFgW0TqdWzqMfsNumS6fd6Ft7rbEZU9SmXrlrFrmjjQtsvnIizChc161zYzk5fZE9eZGg9G9OJQGX1WGRldctuP9r+/hhntVpNdbv98MjhcjyClZlrmTz6YE0ivszsB8dJBnT+CxqxBiLoGGsAVHi9fzoQhk/STQt+BEnJBrRMl48XumtM1tIVCPJaKQAsid/L1ktAp90JXudbQcYnJDhxgAcyJEQm4sOS6jUd51f41Q64aOGSffa99LEcKlxoVlFXrZ8Z2A/+AiUcGOcAWFTdVlkQ5aDHamfpww3HTlqPfa9/XH7c+tNDnz1JnQKuUaHkcQhvrRLJJ7PjOoXjkj3/AANQPu+/zzKVHrOv65WZz6MN1S3Vm7B2z9UNRSo8xwrgmZxx/a0K4iutuJ7dZtH5lbBTY7n9BMeJErPMiRxx8dgKckShgt7InX6c1f8A8bOnCnfHt36X1p+tVgpjV/JVMtxKk0UD/q9KA1vnj4pu0aNSrvV9cn8IldxmaOp1yO5NMnk5hXvnntvvhf42ivvVbTLdWH0Xla0U/wBfvdbsH/mg2VkLhxywtuonGjSfiw2z/K+E9eQFjYFn4fBf6/v63i0IDoz8aDZuQxWvgbseP0vF7uW7Ky09WWuB7aAI1awQm5g1kbYojq4ZaZbr9sy268XOuff7WX1J/UIzqYHug7UQ8NyRDnvSn2l5/HSkWybd+f8ACcb38H+yZ2WSsJRljkZJ5XDgyBaALhfH29We212nQEJWQ1DHMLZJoWXM2nQ6j2OsOO0AnTg88zbJDcu2p7/TTsvruqAOQ5rp+JLtGg6CADLku1HY1ZlLqL9bhTRWn09kLT4NZyUt26kMqMXtiqVQCLebdcjNxLCGyGs2GABPlIMQpP3quCBk6BnoGdZniXChZT9N1EumtWbOcuMsHl07Up8Ypck9fL6kxAw2PfEmhsWfCI+Mz9cYfYxa/wA2sD7JTtZkwZo224JXLBx+IX7pH/I8d9ZjuWWNdtHsECy9+Lb/AOShZPr9l5dbtl/G00VQ80o2aDexlLr7I5tPr//EADYQAAMAAQMBBgQBDAMBAAAAAAECAwQABRESBhMhMVFhEBQiQYEVFiAjJDJicZGSobFCUlOT/9oACAEBAA0/APhjr12vkVE5zUfdmYgAfzOl573tJub/AJP2qajnlpmg73JA4P1TmZ/x6yMhpDE7KbHClFCwGQSr5NGNSIsrhJh6OGARGOs/bMh0oM2ES+4MljgyASIAStYiRPBPVaY0+xtumQuRtuBueGLyxBk1xz3RTIkQhXg0QA9aAEl15w6iGXmdlslPmoOERqg4VX5oZl+7YToXDowCaxn7rKxnR4ZWI480tCoWsm9nUH9HMqMbbNtxR15OfkkfTKS/5LHwVeSTqGVD5HY8gm2ybLCjdAy2lJ+vN6LERrRuDNySEVAC+5ycjab5jUrikrMCHdBBMCdEt02WhFJuhKBix0+dTdDj5jd5HGYzCFJBvBIia9ImPpCkrxx4ax2mZ990MUM26k4JHh0sORp5d0xRxPlPoBX6ePAiUwR6IBrYtqyTtm3Yu5Nk5e75lslsqt8o9Cd2gq3UZByanwLIB9QyVwth3fZppPeM2rkCGO0Skp2LOSDKiiYXgkp4sKypXbs2EqQxd8jIlavKVAHheZBFcZ+WmfIsPjhRa9qMfBUUEk6ysI02zbN1N4pg7QVZ3GGsx13sQAKdzzQMw5AWeqZN9w2XZKcUGz/Mjm5Nj+stWhJJZyAF6R0B+strFJnueSjcGzDzip9B99Angn21BlGXlhfpQE+Q9WOiA1mPBvQnjks3nrGxsnEx8/FlGlVhkJ0WkUsjzIcAeakggEawL4n5pVw5sdyw91Xxq8QvL2eFSDW4msj1urAjknsrkjbd7lMcJV+kNLKmPtOyEOvoeR8JKd/3mf8A3jFgMabezX4Yg+YiRpxGu4bNujjcmw7rQ2xaQpUtXFAdrUE+SnLkoE+G7c4uH6pz+8/4DQJLknksx8SSfuSfHVz1ZFR5RiP3mP8Aoe51KSQxCyjlrv4d4x1kZsZZqm7MLo54ZSOeCOPIcaogOknTb0eGFzlSoQHnXvEKHwMgAXos0BYE801vgh2P7YQxbisFFyWxrFgeCYZYMg3iQuS/w23tFhjbdt3OtJ4u6R23EArGjzBKql89Kg8NxScyVYA63PPvnfL4uXTKhho5HEZ2qqs6ggnkqoBYgAD4dnYphyH271lDORpuSCfXW/sXgc2wmWip8AvVoFL4jfPIF71DyAeDrZqLVMPAzkyX5B4DvwTwNIgGqYdHTHy0VoUog65hw5CletVJDEL66wcHJzsI7Vu0cl45i/tCJ8vjwnDFRSilUR6a3TbMbM596TVj/vW3dt98x5Jkr1IiVOOeek/crNODrHBWUZjhVBPPA0iFj+A1nblepPsXbj/HGs3KlAAfxMBraNsliSFrgM1P+Z441gVMLmTcqHHmAfbVqxxSfYfV8BTGyEpZ6JOk5XnWsWaYLKKzR5FgrcB+elwCpx9upHK2/AyszJibHGQG7NlxjRGbodukL0frfUcn83sLn/5DVMrB7TQLngCN8YTq3PoKY7c6ozKuRjUDqWUkEexB02PQD+06nk0VgfUMdPvGOD/dqMTQk/bgcnW4ble34F241nZ97c+wIHx2yGRstECMjTzqDu0mQQDyTRTra9txsTj3SYU/61dadkO1zeQngZpCY+Q38M8kzDE+S1bWOiZSZeTCcI5MZqigSVST9CUipYgBtMvB1h7pV0HqjnrXj24YawN0xrEnyAFBzzpNpd5sPV04H+xoIWP8zo4i1P8ANz1H4Z95Yu33Y0SfzRJaU61RT3COyhethx48a2PNPbPtNd3Wxliycrt2FaoUCrvU9fJAJTHPw3bGpiZcHHIpJ1KsP6HXZ6QyezeRbK+Tj2v2qZ4kl8hVNC+N4GslILdKnxBPGDQ4+Re+C+Kl2BINIq/iZEghT58Dx1vcBiZhihfi0x9J/FdA+B7lvA/01fIx9myY90xctPxbkefBVdVqkgO5byLcemo4sp/0UDTuJTfJqJqzseAOT6ngavkNsvZ3YsG9Bmb1RiyRxbxPM7cPw6WQkBSWPAGu0+T+Ut8yEPKCpHCY8z/5RThF/E/HDsMzat0w37vL23LX9y8H81YeRHkw5B1m1niYXbrHxj+Td4xi3DK5B/YMor4EOSnPip1tERj4Wc1qZlMkdTLDpYjipMJNVmBPAcDnkHmUYZNZv0I0p2AaZZSB09QK8A8HRK9fKggFmAB4APmSBzrdHX5THeY6qFm6VI4HABY8cnWyZsMPco44Mnx51LAUTkHvPFCoA++nzvmez/ZnBiRkzmvKyfNqGE5oV4NOtQgbk/Vq0THFjjKfktix288bEB8ST5PU8F/Yfo5KlL42TJaSop+zKwII9iNX6jXszusRvGw1581XHyOXx1P3EXUe2svNluF8/spv/wAla2RNelKGOUOG4UAdDMykeY1uWHh4Fo42Zt5is8V5tIoy1AB5koJP21tsDi4+T2g7TyxoiTUSnDxx2oKgPNG4YHWS5fI2nsRgrCtySSe8zag0BJJ5M1Un11VjS9SzWyMlz5va9C1LMfV2J/Q//8QALREAAQMDAgUDAwUBAAAAAAAAAQACAwQREiExBRATIkEyUWEUI0MzgaGxwUL/2gAIAQIBAT8AsCtk2N0jrDVCBrO2Q/soIGPucNvcqlEU7D26iydTt1szQfKkghHpNinwlos4aLzbnZRRmRRsFrRaD38lTyQ4BjdXBOq5PVdCvijNs03ijW/9qCvp5fN7/wAJhvKWQ6t9lVUgiJLdubGOe7EJkOVo2en/AFVVRftG/k+6+VxSvAb02lGQkWKoqOSqPwqaCKmHTYdVTVPRfcjQqWMxOEjXZX39lPHgQ4ek8oWmOMyefCfUudHZ2/utyuIVX0zPlSvLyclRwfVOwUzRQU2TFTVchqcrppyaHKlmuwxSGwUYEjXQHxqFgU3sgFhp5Uzmn08uMz5S2CIt2hcLhjp2Xeq0x1MODXLh9BjLkSmi2igeY5QQi4Nna73T24uIUs72MaG7WTnF1z5Xuqx5klJKgZlI1VlHI8AMUnUjcWuK4H3tJuvhUzxFKC7VVJvI3T+v8U/6hU+sEbh8pjstU/QFTblqoB94KwDCVVOu8rg8eMPK9gqO0kwI2Ckfm8uKh+7C6Dz4THYyGFEZKvZ0qktVI60gKlkxpi74UmrgqBuMI5TOI0CoY/pKZ0j93aDlG8xHMKqp21LevD+6YchvqFxmkL5Oo0alR08sZ2UsjzSYqGmldJ3hUoLIwAnuY3uKpIX1Ly9+gHlVMwkNm7DbnDP0XXCmpWVAMlMbD2Ti5rTk3ZNiieiyO2KwjYe4LrhwtGqbhpkbnMdFNUjDoxizf7QCvzY57TkDZCrZN21Dbo01JLs6ybw6mH5v4TqSl/JJdNmpoNImXT53Sboc/wD/xAAxEQABAwMCBAQFAwUAAAAAAAABAAIDBAURBhIhMUFRBxAUIhMgYXGBM7HBIyQyQmL/2gAIAQMBAT8A8iQEZD0RcWjBKflrskoFw6prpG/5cU1/yudhYKaAo4BIQxoyU3St2kAcISR+EdHXh5/QKrbJWUA/uGYTvamSebjhF6jb1d5eHWiA8NuNYPsFDRwxt2kDC1VqmCwMLY8F3RagvVVd5DJLwB+ikZu4pvHgoz5E5QjX+uVojT5vdwbuHsbxKt1JHTQBoGAtV36KzUTnZ93RW0TasvgZOcglai07Qx2J0YYPaFK0McWhOG3is4KCa7KZy8vCyy+ktbag83p7xHGXOWvK+qvdY+ClaSG9lpFlfYroyrkhJatdavkmo/TxN27lIcuJT+SaPYmngom+UTN7w3utMUQpKGNo5YC1DVemo3v7BaX1Tbbc+Q1Yy5xVsdTXGBtQxgwV4s1A+M2JnBdU/kmn2pnJQsLnGNvVTQSUx2SjiqMhs7M9x+6s420zPsFrh5jtkpHZM3SVO1vMn+Vp+I0tuYzsF4lVQnuLo+y6cVwJyOaqqeWBue6AIHFNe6nkbKOiurHVcLKwck07X5WjKz19nin+i1bTeptkrR2VmovUXqOD/r9uKgHp6X8fwtZVHqrpK/6rGVZ4c1IfKzLQr1PT1dVil4NCzlFoe3aVaqz07vgyclWQiKXLeR5Lwn1LHBTOt9ScbeX5VTeaCaEs3hWe301LqveXDZxOVcb1RxUbtjxkAq6zGaqe/uVTU0tS/ZGMq41DaSL0sDshMZg58vsnsyPbzVBVtpZN07cnomUbXhstHLl7vwnVdex2zJQq6oO3jO7uopq+saX5JaOajsz3u31Dg3t1Vbe44fZQs2d+qDHOd8R54/KWh4/qKPdD+kcKG5VkLg48cJ94qCANnJQ3OspgWRcMp8s8hDpDnCaz5P/Z"/>
                  <h3 align="center">e-Fatura</h3>
                  <!-- SIGNATURE -->
                  
                </td>
                <td width="35%">

                  <h1 style="margin-bottom: 20px;">FATURA / INVOICE</h1>

                  <label>Sayın</label>

                  <xsl:for-each select="n1:Invoice/cac:AccountingCustomerParty/cac:Party">

                    <xsl:call-template name="partyBlockName"/>


                    <xsl:call-template name="partyBlockPostalAddress"/>


                    <xsl:call-template name="partyBlockTelephone"/>



                    <xsl:call-template name="partyBlockElectronicMail"/>



                    <xsl:call-template name="partyBlockTaxInfo"/>


                    <xsl:call-template name="partyBlockTradeRegistryInfo"/>


                    <xsl:call-template name="partyBlockMersisNo"/>

                  </xsl:for-each>

                  <hr/>


                  <!-- Invoice number -->
                  <xsl:for-each select="n1:Invoice/cbc:ID">
                    <div data-role="invoice-number">
                      <label>Fatura Numarası</label>
                      <xsl:value-of select="."/>
                    </div>
                  </xsl:for-each>


                  <table>
                    <tr>

                      <td>
                        <!-- Invoice date -->
                        <div data-role="invoice-date">
                          <label>Fatura Tarihi</label>
                          <xsl:for-each select="n1:Invoice/cbc:IssueDate">
                            <xsl:value-of select="substring(string(.), 9, 2)"/>.<xsl:value-of
                              select="substring(string(.), 6, 2)"/>.<xsl:value-of
                              select="substring(string(.), 1, 4)"/>
                          </xsl:for-each>
                          <xsl:for-each select="n1:Invoice/cbc:IssueTime"> &#8211; <xsl:value-of
                              select="."/>
                          </xsl:for-each>
                        </div>
                      </td>


                      <td>
                        <!-- Invoice due date -->
                        <xsl:for-each select="n1:Invoice/cac:PaymentMeans">
                          <xsl:if test="./cbc:PaymentDueDate != ''">
                            <div data-role="invoice-due-date">
                              <label>Ödeme Tarihi</label>
                              <xsl:value-of select="substring(string(./cbc:PaymentDueDate), 9, 2)"
                                />.<xsl:value-of
                                select="substring(string(./cbc:PaymentDueDate), 6, 2)"
                                />.<xsl:value-of
                                select="substring(string(./cbc:PaymentDueDate), 1, 4)"/>
                            </div>
                          </xsl:if>
                        </xsl:for-each>
                      </td>

                    </tr>
                    <tr>
                      <xsl:for-each select="n1:Invoice/cac:OrderReference">
                        <xsl:if test="cbc:ID != ''">
                          <td>
                            <!-- Order number -->
                            <div data-role="invoice-due-date">
                              <label>Sipariş No</label>
                              <xsl:value-of select="cbc:ID"/>
                            </div>
                          </td>
                        </xsl:if>
                        <xsl:if test="cbc:IssueDate != ''">
                          <td>
                            <!-- Order number -->
                            <div data-role="invoice-due-date">
                              <label>Sipariş Tarihi</label>
                              <xsl:value-of select="substring(string(./cbc:IssueDate), 9, 2)"
                                />.<xsl:value-of select="substring(string(./cbc:IssueDate), 6, 2)"
                                />.<xsl:value-of select="substring(string(./cbc:IssueDate), 1, 4)"/>
                            </div>
                          </td>
                        </xsl:if>
                      </xsl:for-each>
                    </tr>
                  </table>
                </td>
              </tr>
            </tbody>
          </table>

          <table class="lineitems">
            <thead>
              <tr>

                <td width="3%">No</td>

                <!-- Product name -->

                <td width="15%">Hizmet / Ürün Adı</td>
                <!-- Product description -->

                <!-- Product name -->

                <!-- Product name -->

                <td width="5%" align="right">Miktar</td>

                <!-- Product name -->

                <td width="9%" align="right">Birim Fiyat</td>

                <!-- Product name -->

                <!-- Product name -->

                <!-- Product name -->

                <td width="7%" data-role="col-tax-percentage" align="right">KDV Oranı</td>

                <!-- Product name -->

                <td width="10%" data-role="col-tax-total" align="right">KDV Tutarı</td>

                <!-- Product name -->

                <!-- Product name -->

                <td width="12%" align="right">Toplam</td>

              </tr>
            </thead>
            <tbody id="lineItemsBody">
              <xsl:for-each select="n1:Invoice/cac:InvoiceLine">
                <xsl:call-template name="lineItemsRow"/>
              </xsl:for-each>
            </tbody>
          </table>

          <table>
            <tr>
              <td class="notes">

                <xsl:for-each select="n1:Invoice/cbc:ProfileID">
                  <div data-role="invoice-scenario">
                    <label>Senaryo</label>
                    <xsl:value-of select="."/>
                  </div>
                </xsl:for-each>


                <!-- Invoice type -->

                <xsl:for-each select="n1:Invoice/cbc:InvoiceTypeCode">
                  <div data-role="invoice-type">
                    <label>Fatura Tipi</label>
                    <xsl:value-of select="."/>
                  </div>
                </xsl:for-each>


                <!-- UBL version number -->

                <xsl:for-each select="n1:Invoice/cbc:CustomizationID">
                  <div data-role="invoice-ubl-version-number">
                    <label>Özelleştirme No</label>
                    <xsl:value-of select="."/>
                  </div>
                </xsl:for-each>


                <!-- ETTN number -->

                <xsl:for-each select="n1:Invoice/cbc:UUID">
                  <div data-role="ettn-number">
                    <label>ETTN</label>
                    <xsl:value-of select="."/>
                  </div>
                </xsl:for-each>

              </td>
              <td align="right" style="vertical-align: top;">
                <table class="totals">
                  <tr>
                    <td> Mal Hizmet Toplam Tutarı </td>
                    <td>
                      <xsl:for-each
                        select="n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount">
                        <xsl:call-template name="currencyText"/>
                      </xsl:for-each>
                    </td>
                  </tr>

                  <xsl:if
                    test="n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID != 'TRY'">
                    <tr>
                      <td>Mal Hizmet Toplam Tutarı (TL)</td>
                      <td>
                        <xsl:value-of
                          select="format-number(n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"
                        /> TL </td>
                    </tr>
                  </xsl:if>

                  <tr>
                    <td> Toplam İndirim </td>
                    <td>
                      <xsl:for-each
                        select="n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount">
                        <xsl:call-template name="currencyText"/>
                      </xsl:for-each>
                    </td>
                  </tr>

                  <xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
                    <tr>
                      <td> Hesaplanan <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
                        <xsl:if test="cbc:Percent != ''"> (%<xsl:value-of select="cbc:Percent"
                          />)</xsl:if>
                      </td>
                      <td>
                        <xsl:for-each select="cbc:TaxAmount">
                          <xsl:call-template name="currencyText"/>
                        </xsl:for-each>
                      </td>
                    </tr>
                  </xsl:for-each>

                  <xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
                    <xsl:if test="//n1:Invoice/cbc:DocumentCurrencyCode != 'TRY'">
                      <tr>
                        <td> Hesaplanan <xsl:value-of
                            select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
                          <xsl:if test="cbc:Percent != ''"> (<xsl:value-of select="cbc:Percent"/>)
                            (TL)</xsl:if>
                        </td>
                        <td>
                          <xsl:value-of
                            select="format-number(cbc:TaxAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"
                          /> TL </td>
                      </tr>
                    </xsl:if>
                  </xsl:for-each>

                  <xsl:for-each select="n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal">
                    <tr>
                      <td>Hesaplanan KDV Tevkifat <xsl:if test="cbc:Percent != ''">(%<xsl:value-of
                            select="cbc:Percent"/>)</xsl:if></td>
                      <td>
                        <xsl:for-each select="cbc:TaxAmount">
                          <xsl:call-template name="currencyText"/>
                        </xsl:for-each>
                      </td>
                    </tr>
                    <xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode != 'TRY'">
                      <tr>
                        <td>Hesaplanan KDV Tevkifat <xsl:if test="cbc:Percent != ''">(%<xsl:value-of
                              select="cbc:Percent"/>) TL</xsl:if></td>
                        <td>
                          <xsl:value-of
                            select="format-number(cbc:TaxAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"
                          /> TL </td>
                      </tr>
                    </xsl:if>
                  </xsl:for-each>

                  <xsl:if
                    test="n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]">
                    <tr>
                      <td>Tevkifata Tabi İşlem Tutarı</td>
                      <td>
                        <xsl:if
                          test="n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]">
                          <xsl:value-of
                            select="format-number(sum(n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]/cbc:LineExtensionAmount), '###.##0,00', 'european')"
                          />
                        </xsl:if>
                        <xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode = 'TRY'">
                          <xsl:text>TL</xsl:text>
                        </xsl:if>
                        <xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode != 'TRY'">
                          <xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode"/>
                        </xsl:if>
                      </td>
                    </tr>
                    <tr>
                      <td>Tevkifata Tabi İşlem Üzerinden Hes. KDV</td>
                      <td>
                        <xsl:if
                          test="n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]">
                          <xsl:value-of
                            select="format-number(sum(n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme]/cbc:TaxableAmount), '###.##0,00', 'european')"
                          />
                        </xsl:if>
                        <xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode = 'TRY'">
                          <xsl:text>TL</xsl:text>
                        </xsl:if>
                        <xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode != 'TRY'">
                          <xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode"/>
                        </xsl:if>
                      </td>
                    </tr>
                  </xsl:if>

                  <tr>
                    <td>Vergiler Dahil Toplam Tutar</td>
                    <td>
                      <xsl:for-each
                        select="n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount">
                        <xsl:call-template name="currencyText"/>
                      </xsl:for-each>
                    </td>
                  </tr>

                  <xsl:if
                    test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID != 'TRY'">
                    <tr>
                      <td>Vergiler Dahil Toplam Tutar(TL)</td>
                      <td>
                        <xsl:value-of
                          select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"
                        /> TL </td>
                    </tr>
                  </xsl:if>

                  <tr>
                    <td>
                      <b>Ödenecek Tutar</b>
                    </td>
                    <td>
                      <b>
                        <xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount">
                          <xsl:call-template name="currencyText"/>
                        </xsl:for-each>
                      </b>
                    </td>
                  </tr>

                  <xsl:if
                    test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID != 'TRY'">
                    <tr>
                      <td>
                        <b>Ödenecek Tutar (TL)</b>
                      </td>
                      <td>
                        <b>
                          <xsl:value-of
                            select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"
                          /> TL </b>
                      </td>
                    </tr>
                  </xsl:if>
                </table>
              </td>
            </tr>
          </table>
          
          <table>
            <tbody>
              {{NOTES.FIRST}}
              {{NOTES.SECOND}}
              {{NOTES.THIRD}}
            </tbody>
          </table>
          <br/>

          <!-- Invoice Note -->
          <div data-role="invoice-note">
            <label>Fatura Notu</label>
            <xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
              <xsl:if
                test="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = '0015' and cac:TaxCategory/cbc:TaxExemptionReason">
                <div>Vergi İstisna Muafiyet Sebebi: <xsl:value-of
                    select="cac:TaxCategory/cbc:TaxExemptionReasonCode"/> - <xsl:value-of
                    select="cac:TaxCategory/cbc:TaxExemptionReason"/></div>
              </xsl:if>
            </xsl:for-each>
            <xsl:for-each
              select="//n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
              <div>Tevkifat Sebebi: <xsl:value-of select="cbc:TaxTypeCode"/> - <xsl:value-of
                  select="cbc:Name"/></div>
            </xsl:for-each>
            <div class="u-mb1">
              <xsl:for-each select="n1:Invoice/cbc:Note">
                <div>
                  <xsl:value-of select="."/>
                </div>
              </xsl:for-each>
            </div>

          </div>
        	
        	{{BANKINFO}}	

          <!-- Return Section -->

        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

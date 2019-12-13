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
        <title/>
        <style type="text/css">
          html,
          body,
          div,
          span,
          applet,
          object,
          iframe,
          h1,
          h2,
          h3,
          h4,
          h5,
          h6,
          p,
          blockquote,
          pre,
          a,
          abbr,
          acronym,
          address,
          big,
          cite,
          code,
          del,
          dfn,
          em,
          img,
          ins,
          kbd,
          q,
          s,
          samp,
          small,
          strike,
          strong,
          sub,
          sup,
          tt,
          var,
          b,
          u,
          i,
          center,
          dl,
          dt,
          dd,
          ol,
          ul,
          li,
          fieldset,
          form,
          label,
          legend,
          table,
          caption,
          tbody,
          tfoot,
          thead,
          tr,
          th,
          td,
          article,
          aside,
          canvas,
          details,
          embed,
          figure,
          figcaption,
          footer,
          header,
          hgroup,
          menu,
          nav,
          output,
          ruby,
          section,
          summary,
          time,
          mark,
          audio,
          video{
              margin: 0;
              border: 0;
              font-size: 100%;
              font: inherit;
              vertical-align: baseline;
          }
          /* HTML5 display-role reset for older browsers */
          article,
          aside,
          details,
          figcaption,
          figure,
          footer,
          header,
          hgroup,
          menu,
          nav,
          section{
              display: block;
          }
          body{
              margin: 8px;
          }
          ol,
          ul{
              list-style: none;
          }
          blockquote,
          q{
              quotes: none;
          }
          blockquote:before,
          blockquote:after,
          q:before,
          q:after{
              content: '';
              content: none;
          }
          table{
              border-collapse: collapse;
              border-spacing: 0;
          }
          body{
              background-color: #FFFFFF;
              font-family: 'Tahoma', "Times New Roman", Times, serif;
              font-size: 13px;
              color: #666666;
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
              color: #333333;
              text-align: justify;
              margin: 0;
              padding: 0;
          }
          h4{
              font-size: 1.1em;
              font-style: bold;
              font-family: Arial, Helvetica, sans-serif;
              color: #000000;
              margin: 0;
              padding: 0;
          }
          hr{
              height: 2px;
              color: #000000;
              background-color: #000000;
              border-bottom: 1px solid #000000;
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
              padding: 2px;
              vertical-align: top;
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
              padding: 3px;
              border-color: orange;
          }

          #bankaHesap tr:first-child th {
              border-top: 0;
              border-color: orange;
          }

          #bankaHesap tr:last-child td {
              border-bottom: 0;
              border-color: orange;
          }

          #bankaHesap tr td:first-child,
          #bankaHesap tr th:first-child {
              border-left: 0;
              border-color: orange;
          }

          #bankaHesap tr td:last-child,
          #bankaHesap tr th:last-child {
              border-right: 0;
              border-color: orange;
          }
          </style>
        <title>e-Fatura</title>
      </head>
      <body style="margin-left=0.6in; margin-right=0.6in; margin-top=0.79in; margin-bottom=0.79in">
        <xsl:for-each select="$XML">

          <!--Unvan, Logo,Adres-->
          <table
            style="border:1px solid orange; border-collapse:collapse;border-bottom:0px dotted black;"
            cellspacing="0px" width="800" cellpadding="5px">
            <tbody>
              <tr style="height:1px;" align="left" cellspacing="2px" cellpadding="2px">
                <td colspan="6" style="border-bottom: 1px dotted orange; " cellspacing="2px"
                  cellpadding="2px">
                  <xsl:for-each select="n1:Invoice">
                    <xsl:for-each select="cac:AccountingSupplierParty">
                      <xsl:for-each select="cac:Party">
                        <b>
                          <font size="2" color="navy">
                            <xsl:if test="cac:PartyName">
                              <xsl:value-of select="cac:PartyName/cbc:Name"/>
                            </xsl:if>
                          </font>
                        </b>
                      </xsl:for-each>
                    </xsl:for-each>
                  </xsl:for-each>
                  <xsl:for-each select="n1:Invoice">
                    <xsl:for-each select="cac:AccountingSupplierParty">
                      <xsl:for-each select="cac:Party">
                        <b>
                          <font size="2" color="navy">
                            <xsl:if test="cac:Person">
                              <xsl:value-of select="cac:Person/cbc:FirstName"/><xsl:text>&#160;</xsl:text><xsl:value-of select="cac:Person/cbc:FamilyName"/>
                            </xsl:if>
                          </font>
                        </b>
                      </xsl:for-each>
                    </xsl:for-each>
                  </xsl:for-each>
                </td>
              </tr>

              <!--///Şube varsa şube ünvanını ekle.-->

              <tr cellspacing="20px" cellpadding="20px" valign="top">
                <td style="width:330px;">
                  <xsl:choose>
                    <xsl:when
                      test="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:AgentParty">
                      <xsl:for-each select="n1:Invoice">
                        <xsl:for-each select="cac:AccountingSupplierParty">
                          <xsl:for-each select="cac:Party">
                            <xsl:for-each select="cac:AgentParty">
                              <xsl:if test="cac:PartyName">
                                <b>
                                  <xsl:value-of select="cac:PartyName/cbc:Name"/>
                                </b>
                                <br/>
                              </xsl:if>
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
                                <xsl:if
                                  test="(cbc:BuildingNumber) and (string-length(cbc:BuildingNumber) != 0)">
                                  <span>
                                    <xsl:text> No:</xsl:text>
                                  </span>
                                  <xsl:for-each select="cbc:BuildingNumber">
                                    <xsl:apply-templates/>
                                  </xsl:for-each>
                                  <span>
                                    <xsl:text>&#160;</xsl:text>
                                  </span>
                                </xsl:if>
                                <br/>
                                <xsl:if test="(cbc:Postbox) and (string-length(cbc:Postbox) != 0)">
                                  <xsl:for-each select="cbc:Postbox">
                                    <xsl:apply-templates/>
                                    <span>
                                      <xsl:text>&#160;</xsl:text>
                                    </span>
                                  </xsl:for-each>
                                </xsl:if>
                                <xsl:for-each select="cbc:CitySubdivisionName">
                                  <xsl:apply-templates/>
                                </xsl:for-each>
                                <span>
                                  <xsl:text> / </xsl:text>
                                </span>
                                <xsl:for-each select="cbc:CityName">
                                  <xsl:apply-templates/>
                                </xsl:for-each>
                              </xsl:for-each>

                            </xsl:for-each>
                          </xsl:for-each>
                        </xsl:for-each>
                      </xsl:for-each>
                    </xsl:when>
                    <xsl:otherwise>
                      <xsl:for-each select="n1:Invoice">
                        <xsl:for-each select="cac:AccountingSupplierParty">
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
                              <xsl:if
                                test="(cbc:BuildingNumber) and (string-length(cbc:BuildingNumber) != 0)">
                                <span>
                                  <xsl:text> No:</xsl:text>
                                </span>
                                <xsl:for-each select="cbc:BuildingNumber">
                                  <xsl:apply-templates/>
                                </xsl:for-each>
                                <span>
                                  <xsl:text>&#160;</xsl:text>
                                </span>
                              </xsl:if>
                              <br/>
                              <xsl:if test="(cbc:Postbox) and (string-length(cbc:Postbox) != 0)">
                                <xsl:for-each select="cbc:Postbox">
                                  <xsl:apply-templates/>
                                  <span>
                                    <xsl:text>&#160;</xsl:text>
                                  </span>
                                </xsl:for-each>
                              </xsl:if>
                              <xsl:for-each select="cbc:CitySubdivisionName">
                                <xsl:apply-templates/>
                              </xsl:for-each>
                              <span>
                                <xsl:text> / </xsl:text>
                              </span>
                              <xsl:for-each select="cbc:CityName">
                                <xsl:apply-templates/>
                              </xsl:for-each>
                            </xsl:for-each>
                          </xsl:for-each>
                        </xsl:for-each>
                      </xsl:for-each>
                    </xsl:otherwise>
                  </xsl:choose>
                </td>
                <td style="width:40px;">
                  <xsl:text>&#160;</xsl:text>
                </td>
                <td style="width:330px;">
                  <xsl:choose>
                    <xsl:when
                      test="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:AgentParty">
                      <b>Genel Müdürlük</b>
                      <br/>
                      <xsl:for-each select="n1:Invoice">
                        <xsl:for-each select="cac:AccountingSupplierParty">
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
                              <xsl:if
                                test="(cbc:BuildingNumber) and (string-length(cbc:BuildingNumber) != 0)">
                                <span>
                                  <xsl:text> No:</xsl:text>
                                </span>
                                <xsl:for-each select="cbc:BuildingNumber">
                                  <xsl:apply-templates/>
                                </xsl:for-each>
                                <span>
                                  <xsl:text>&#160;</xsl:text>
                                </span>
                              </xsl:if>
                              <br/>
                              <xsl:if test="(cbc:Postbox) and (string-length(cbc:Postbox) != 0)">
                                <xsl:for-each select="cbc:Postbox">
                                  <xsl:apply-templates/>
                                  <span>
                                    <xsl:text>&#160;</xsl:text>
                                  </span>
                                </xsl:for-each>
                              </xsl:if>
                              <xsl:for-each select="cbc:CitySubdivisionName">
                                <xsl:apply-templates/>
                              </xsl:for-each>
                              <span>
                                <xsl:text> / </xsl:text>
                              </span>
                              <xsl:for-each select="cbc:CityName">
                                <xsl:apply-templates/>
                              </xsl:for-each>
                            </xsl:for-each>
                          </xsl:for-each>
                        </xsl:for-each>
                      </xsl:for-each>
                    </xsl:when>
                  </xsl:choose>

                </td>
              </tr>
            </tbody>
          </table>
          <!--///Unvan, Logo,Adres-->
          <!--Tel,Fax, Email vs...-->
          <table
            style="border:1px solid orange; border-collapse:collapse;border-top:0px dotted black;"
            cellspacing="0px" width="800" cellpadding="5px">
            <tbody>
              <tr>
                <td valign="top"
                  style="width:330px;border:0px solid orange; border-collapse:collapse;">
                  <table
                    style="width:330px;border:0px solid orange; border-collapse:collapse;border-top:1px dotted orange;">
                    <tbody>
                      <!--Tel-->
                      <xsl:choose>
                        <xsl:when
                          test="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:AgentParty">
                          <xsl:for-each
                            select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:AgentParty">
                            <xsl:if
                              test="(cac:Contact/cbc:Telephone) and (string-length(cac:Contact/cbc:Telephone) != 0)">
                              <tr>
                                <td style="width:100px;">
                                  <b>
                                    <font color="navy">Tel</font>
                                  </b>
                                </td>
                                <td style="width:290px;">
                                  <b>
                                    <font color="navy">: </font>
                                  </b>
                                  <xsl:value-of select="cac:Contact/cbc:Telephone"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if
                              test="(cac:Contact/cbc:Telefax) and (string-length(cac:Contact/cbc:Telefax) != 0)">
                              <tr>
                                <td style="width:100px;">
                                  <b>
                                    <font color="navy">Faks</font>
                                  </b>
                                </td>
                                <td style="width:290px;">
                                  <b>
                                    <font color="navy">: </font>
                                  </b>
                                  <xsl:value-of select="cac:Contact/cbc:Telefax"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if
                              test="(cac:Contact/cbc:ElectronicMail) and (string-length(cac:Contact/cbc:ElectronicMail) != 0)">
                              <tr>
                                <td style="width:100px;">
                                  <b>
                                    <font color="navy">E-Posta</font>
                                  </b>
                                </td>
                                <td style="width:290px;">
                                  <b>
                                    <font color="navy">: </font>
                                  </b>
                                  <xsl:value-of select="cac:Contact/cbc:ElectronicMail"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="(cbc:WebsiteURI) and (string-length(cbc:WebsiteURI) != 0)">
                              <tr>
                                <td style="width:100px;">
                                  <b>
                                    <font color="navy">Web Sitesi</font>
                                  </b>
                                </td>
                                <td style="width:290px;">
                                  <b>
                                    <font color="navy">: </font>
                                  </b>
                                  <xsl:value-of select="cbc:WebsiteURI"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if
                              test="(cac:Person/cbc:FirstName) and (string-length(cac:Person/cbc:FirstName) != 0)">
                              <tr>
                                <td style="width:100px;">
                                  <b>
                                    <font color="navy">Yetkili Kişi</font>
                                  </b>
                                </td>
                                <td style="width:290px;">
                                  <b>
                                    <font color="navy">: </font>
                                  </b>
                                  <xsl:for-each select="cac:Person/cbc:Title">
                                    <xsl:apply-templates/>
                                    <span>
                                      <xsl:text>&#160;</xsl:text>
                                    </span>
                                  </xsl:for-each>
                                  <xsl:for-each select="cac:Person/cbc:FirstName">
                                    <xsl:apply-templates/>
                                    <span>
                                      <xsl:text>&#160;</xsl:text>
                                    </span>
                                  </xsl:for-each>
                                  <xsl:for-each select="cac:Person/cbc:MiddleName">
                                    <xsl:apply-templates/>
                                    <span>
                                      <xsl:text>&#160;</xsl:text>
                                    </span>
                                  </xsl:for-each>
                                  <xsl:for-each select="cac:Person/cbc:FamilyName">
                                    <xsl:apply-templates/>
                                    <span>
                                      <xsl:text>&#160;</xsl:text>
                                    </span>
                                  </xsl:for-each>
                                  <xsl:for-each select="cac:Person/cbc:NameSuffix">
                                    <xsl:apply-templates/>
                                  </xsl:for-each>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if
                              test="(cac:PartyTaxScheme/cac:TaxScheme/cbc:Name) and (string-length(cac:PartyTaxScheme/cac:TaxScheme/cbc:Name) != 0)">
                              <tr>
                                <td style="width:100px;">
                                  <b>
                                    <font color="navy">Vergi Dairesi</font>
                                  </b>
                                </td>
                                <td style="width:290px;">
                                  <b>
                                    <font color="navy">: </font>
                                  </b>
                                  <xsl:value-of select="cac:PartyTaxScheme/cac:TaxScheme/cbc:Name"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:for-each select="cac:PartyIdentification">
                              <xsl:if test="(string-length(cbc:ID) != 0)">
                                <tr>
                                  <td style="width:100px;">
                                    <b>
                                      <font color="navy">
                                        <xsl:value-of select="cbc:ID/@schemeID"/>
                                      </font>
                                    </b>
                                  </td>
                                  <td style="width:290px;">
                                    <b>
                                      <font color="navy">: </font>
                                    </b>
                                    <xsl:value-of select="cbc:ID"/>
                                  </td>
                                </tr>
                              </xsl:if>
                            </xsl:for-each>
                            <xsl:if
                              test="(cbc:IndustryClassificationCode) and (string-length(cbc:IndustryClassificationCode) != 0)">
                              <tr>
                                <td style="width:100px;">
                                  <b>
                                    <font color="navy">Faaliyet Kodu</font>
                                  </b>
                                </td>
                                <td style="width:290px;">
                                  <b>
                                    <font color="navy">: </font>
                                  </b>
                                  <xsl:value-of select="cbc:IndustryClassificationCode"/>
                                </td>
                              </tr>
                            </xsl:if>
                          </xsl:for-each>
                        </xsl:when>
                        <xsl:otherwise>
                          <xsl:for-each select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party">
                            <xsl:if
                              test="(cac:Contact/cbc:Telephone) and (string-length(cac:Contact/cbc:Telephone) != 0)">
                              <tr>
                                <td style="width:100px;">
                                  <b>
                                    <font color="navy">Tel</font>
                                  </b>
                                </td>
                                <td style="width:290px;">
                                  <b>
                                    <font color="navy">: </font>
                                  </b>
                                  <xsl:value-of select="cac:Contact/cbc:Telephone"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if
                              test="(cac:Contact/cbc:Telefax) and (string-length(cac:Contact/cbc:Telefax) != 0)">
                              <tr>
                                <td style="width:100px;">
                                  <b>
                                    <font color="navy">Faks</font>
                                  </b>
                                </td>
                                <td style="width:290px;">
                                  <b>
                                    <font color="navy">: </font>
                                  </b>
                                  <xsl:value-of select="cac:Contact/cbc:Telefax"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if
                              test="(cac:Contact/cbc:ElectronicMail) and (string-length(cac:Contact/cbc:ElectronicMail) != 0)">
                              <tr>
                                <td style="width:100px;">
                                  <b>
                                    <font color="navy">E-Posta</font>
                                  </b>
                                </td>
                                <td style="width:290px;">
                                  <b>
                                    <font color="navy">: </font>
                                  </b>
                                  <xsl:value-of select="cac:Contact/cbc:ElectronicMail"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="(cbc:WebsiteURI) and (string-length(cbc:WebsiteURI) != 0)">
                              <tr>
                                <td style="width:100px;">
                                  <b>
                                    <font color="navy">Web Sitesi</font>
                                  </b>
                                </td>
                                <td style="width:290px;">
                                  <b>
                                    <font color="navy">: </font>
                                  </b>
                                  <xsl:value-of select="cbc:WebsiteURI"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if
                              test="(cac:Person/cbc:FirstName) and (string-length(cac:Person/cbc:FirstName) != 0)">
                              <tr>
                                <td style="width:100px;">
                                  <b>
                                    <font color="navy">Yetkili Kişi</font>
                                  </b>
                                </td>
                                <td style="width:290px;">
                                  <b>
                                    <font color="navy">: </font>
                                  </b>
                                  <xsl:for-each select="cac:Person/cbc:Title">
                                    <xsl:apply-templates/>
                                    <span>
                                      <xsl:text>&#160;</xsl:text>
                                    </span>
                                  </xsl:for-each>
                                  <xsl:for-each select="cac:Person/cbc:FirstName">
                                    <xsl:apply-templates/>
                                    <span>
                                      <xsl:text>&#160;</xsl:text>
                                    </span>
                                  </xsl:for-each>
                                  <xsl:for-each select="cac:Person/cbc:MiddleName">
                                    <xsl:apply-templates/>
                                    <span>
                                      <xsl:text>&#160;</xsl:text>
                                    </span>
                                  </xsl:for-each>
                                  <xsl:for-each select="cac:Person/cbc:FamilyName">
                                    <xsl:apply-templates/>
                                    <span>
                                      <xsl:text>&#160;</xsl:text>
                                    </span>
                                  </xsl:for-each>
                                  <xsl:for-each select="cac:Person/cbc:NameSuffix">
                                    <xsl:apply-templates/>
                                  </xsl:for-each>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if
                              test="(cac:PartyTaxScheme/cac:TaxScheme/cbc:Name) and (string-length(cac:PartyTaxScheme/cac:TaxScheme/cbc:Name) != 0)">
                              <tr>
                                <td style="width:100px;">
                                  <b>
                                    <font color="navy">Vergi Dairesi</font>
                                  </b>
                                </td>
                                <td style="width:290px;">
                                  <b>
                                    <font color="navy">: </font>
                                  </b>
                                  <xsl:value-of select="cac:PartyTaxScheme/cac:TaxScheme/cbc:Name"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:for-each select="cac:PartyIdentification">
                              <xsl:if test="(string-length(cbc:ID) != 0)">
                                <tr>
                                  <td style="width:100px;">
                                    <b>
                                      <font color="navy">
                                        <xsl:value-of select="cbc:ID/@schemeID"/>
                                      </font>
                                    </b>
                                  </td>
                                  <td style="width:290px;">
                                    <b>
                                      <font color="navy">: </font>
                                    </b>
                                    <xsl:value-of select="cbc:ID"/>
                                  </td>
                                </tr>
                              </xsl:if>
                            </xsl:for-each>
                            <xsl:if
                              test="(cbc:IndustryClassificationCode) and (string-length(cbc:IndustryClassificationCode) != 0)">
                              <tr>
                                <td style="width:100px;">
                                  <b>
                                    <font color="navy">Faaliyet Kodu</font>
                                  </b>
                                </td>
                                <td style="width:290px;">
                                  <b>
                                    <font color="navy">: </font>
                                  </b>
                                  <xsl:value-of select="cbc:IndustryClassificationCode"/>
                                </td>
                              </tr>
                            </xsl:if>
                          </xsl:for-each>
                        </xsl:otherwise>
                      </xsl:choose>
                    </tbody>
                  </table>
                </td>
                <td style="width:5px;"/>
                <td style="width:465px;" valign="right" align="right">
                {{LOGO}}
                </td>
              </tr>
            </tbody>
          </table>
          <!--///Tel,Fax, Email vs...-->

          <br/>
          <table style="border:1px solid orange; border-collapse:collapse;" cellspacing="0px"
            width="800" cellpadding="5px">
            <tbody>
              <tr valign="top">
                <td style="width:330px;" valign="top" rowspan="2" cellspacing="2px" cellpadding="2px">
                  <table style="width:330px;" align="left" border="0">
                    <tbody>
                      <tr>
                        <td colspan="2">
                          <span style="font-weight:bold; ">SAYIN</span>
                        </td>
                      </tr>
                      <xsl:for-each select="n1:Invoice">
                        <xsl:for-each select="cac:AccountingCustomerParty">
                          <xsl:for-each select="cac:Party">
                            <tr>
                              <td colspan="2">
                                <span style="font-weight:bold; ">
                                  <xsl:value-of select="cac:PartyName/cbc:Name"/>
                                </span>
                              </td>
                            </tr>
                            <xsl:if test="cac:Person">
                              <tr>
                                <td colspan="2">
                                  <span style="font-weight:bold;">
                                    <xsl:value-of select="cac:Person/cbc:FamilyName"/>&#160;<xsl:value-of select="cac:Person/cbc:FirstName"/>
                                  </span>
                                </td>
                              </tr>
                            </xsl:if>
                            <tr>
                              <td colspan="2">
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
                                  <xsl:if
                                    test="(cbc:BuildingNumber) and (string-length(cbc:BuildingNumber) != 0)">
                                    <xsl:for-each select="cbc:BuildingNumber">
                                      <span>
                                        <b>
                                          <font color="navy">
                                            <xsl:text>No:</xsl:text>
                                          </font>
                                        </b>
                                      </span>
                                      <xsl:apply-templates/>
                                      <span>
                                        <xsl:text>&#160;</xsl:text>
                                      </span>
                                    </xsl:for-each>
                                    <br/>
                                  </xsl:if>
                                  <xsl:if test="(cbc:Room) and (string-length(cbc:Room) != 0)">
                                    <xsl:for-each select="cbc:Room">
                                      <span>
                                        <b>
                                          <font color="navy">
                                            <xsl:text>Kapı No:</xsl:text>
                                          </font>
                                        </b>
                                      </span>
                                      <xsl:apply-templates/>
                                      <span>
                                        <xsl:text>&#160;</xsl:text>
                                      </span>
                                    </xsl:for-each>
                                    <br/>
                                  </xsl:if>

                                  <xsl:if test="(cbc:Postbox) and (string-length(cbc:Postbox) != 0)">
                                    <xsl:for-each select="cbc:Postbox">
                                      <br/>
                                      <xsl:apply-templates/>
                                      <span>
                                        <xsl:text>&#160;</xsl:text>
                                      </span>
                                    </xsl:for-each>
                                  </xsl:if>
                                  <br/>
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
                              </td>
                            </tr>
                            <xsl:if
                              test="(cac:Person/cbc:FirstName) and (string-length(cac:Person/cbc:FirstName) != 0)">
                              <tr>
                                <td style="width:112px;">
                                  <span style="font-weight:bold; ">
                                    <font color="navy">Yetkili Kişi</font>
                                  </span>
                                </td>
                                <td style="width:218px;">
                                  <b>
                                    <font color="navy">: </font>
                                  </b>

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
                                        <xsl:text>&#160;</xsl:text>
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
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if
                              test="(cac:Contact/cbc:Telephone) and (string-length(cac:Contact/cbc:Telephone) != 0)">
                              <tr>
                                <td style="width:112px;">
                                  <span style="font-weight:bold; ">
                                    <font color="navy">Tel</font>
                                  </span>
                                </td>
                                <td style="width:218px;">
                                  <b>
                                    <font color="navy">: </font>
                                  </b>
                                  <xsl:value-of select="cac:Contact/cbc:Telephone"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if
                              test="(cac:Contact/cbc:Telefax) and (string-length(cac:Contact/cbc:Telefax) != 0)">
                              <tr>
                                <td style="width:112px;">
                                  <span style="font-weight:bold; ">
                                    <font color="navy">Faks</font>
                                  </span>
                                </td>
                                <td style="width:218px;">
                                  <b>
                                    <font color="navy">: </font>
                                  </b>
                                  <xsl:value-of select="cac:Contact/cbc:Telefax"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="(cbc:WebsiteURI) and (string-length(cbc:WebsiteURI) != 0)">
                              <tr>
                                <td style="width:112px;">
                                  <span style="font-weight:bold; ">
                                    <font color="navy">Web Sitesi</font>
                                  </span>
                                </td>
                                <td style="width:218px;">
                                  <b>
                                    <font color="navy">: </font>
                                  </b>
                                  <xsl:value-of select="cbc:WebsiteURI"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if
                              test="(cac:Contact/cbc:ElectronicMail) and (string-length(cac:Contact/cbc:ElectronicMail) != 0)">
                              <tr>
                                <td style="width:112px;">
                                  <span style="font-weight:bold; ">
                                    <font color="navy">E-Posta</font>
                                  </span>
                                </td>
                                <td style="width:218px;">
                                  <b>
                                    <font color="navy">: </font>
                                  </b>
                                  <xsl:value-of select="cac:Contact/cbc:ElectronicMail"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="cac:PartyTaxScheme/cac:TaxScheme/cbc:Name">
                              <tr>
                                <td style="width:112px;">
                                  <span style="font-weight:bold; ">
                                    <font color="navy">Vergi Dairesi</font>
                                  </span>
                                </td>
                                <td style="width:218px;">
                                  <b>
                                    <font color="navy">: </font>
                                  </b>
                                  <xsl:value-of select="cac:PartyTaxScheme/cac:TaxScheme/cbc:Name"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:for-each select="cac:PartyIdentification">
                              <tr>
                                <td style="width:112px;">
                                  <span style="font-weight:bold; ">
                                    <font color="navy">
                                      <xsl:value-of select="cbc:ID/@schemeID"/>
                                    </font>
                                  </span>
                                </td>
                                <td style="width:218px;">
                                  <b>
                                    <font color="navy">: </font>
                                  </b>
                                  <xsl:value-of select="cbc:ID"/>
                                </td>
                              </tr>
                            </xsl:for-each>
                            <xsl:if
                              test="(cbc:IndustryClassificationCode) and (string-length(cbc:IndustryClassificationCode) != 0)">
                              <tr>
                                <td style="width:112px;">
                                  <span style="font-weight:bold; ">
                                    <font color="navy">Faaliyet Kodu</font>
                                  </span>
                                </td>
                                <td style="width:218px;">
                                  <b>
                                    <font color="navy">: </font>
                                  </b>
                                  <xsl:value-of select="cbc:IndustryClassificationCode"/>
                                </td>
                              </tr>
                            </xsl:if>
                          </xsl:for-each>
                        </xsl:for-each>
                      </xsl:for-each>
                    </tbody>
                  </table>

                </td>
                <td style="width:140px;" valign="center" align="center" rowspan="2" cellspacing="2px" cellpadding="2px">
                  <img style="width:91px;" align="middle" alt="E-Fatura Logo"
                    src="data:image/jpeg;base64,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"/>
                  <h1 align="center">
                    <span style="font-weight:bold; ">
                      <xsl:text>e-Fatura</xsl:text>
                    </span>
                  </h1>

                  
                </td>
                <td style="width:330px;" valign="top" rowspan="2" cellspacing="2px" cellpadding="2px">
                  <table border="0" height="13" id="despatchTable">
                    <tbody>
                      <xsl:for-each select="n1:Invoice">

                        <tr>
                          <td style="width:135px;" align="left">
                            <span style="font-weight:bold; ">
                              <font color="navy">
                                <xsl:text>Özelleştirme No</xsl:text>
                              </font>
                            </span>
                          </td>
                          <td style="width:140px;" align="left">
                            <b>
                              <font color="navy">: </font>
                            </b>
                            <xsl:value-of select="cbc:CustomizationID"/>
                          </td>
                        </tr>
                        <tr style="height:13px; ">
                          <td align="left">
                            <span style="font-weight:bold; ">
                              <font color="navy">
                                <xsl:text>Senaryo</xsl:text>
                              </font>
                            </span>
                          </td>
                          <td align="left">
                            <b>
                              <font color="navy">: </font>
                            </b>
                            <xsl:value-of select="cbc:ProfileID"/>
                          </td>
                        </tr>
                        <tr style="height:13px; ">
                          <td align="left">
                            <span style="font-weight:bold; ">
                              <font color="navy">
                                <xsl:text>Fatura Tipi</xsl:text>
                              </font>
                            </span>
                          </td>
                          <td align="left">
                            <b>
                              <font color="navy">: </font>
                            </b>
                            <xsl:value-of select="cbc:InvoiceTypeCode"/>
                          </td>
                        </tr>
                        <tr style="height:13px; ">
                          <td align="left">
                            <span style="font-weight:bold; ">
                              <font color="navy">
                                <xsl:text>Fatura No</xsl:text>
                              </font>
                            </span>
                          </td>
                          <td align="left">
                            <b>
                              <font color="navy">: </font>
                            </b>
                            <xsl:value-of select="cbc:ID"/>
                          </td>
                        </tr>
                        <tr style="height:13px; ">
                          <td align="left">
                            <span style="font-weight:bold; ">
                              <font color="navy">
                                <xsl:text>Fatura Tarihi</xsl:text>
                              </font>
                            </span>
                          </td>
                          <td align="left">
                            <b>
                              <font color="navy">: </font>
                            </b><xsl:value-of select="substring(cbc:IssueDate, 9, 2)"
                              />.<xsl:value-of select="substring(cbc:IssueDate, 6, 2)"
                              />.<xsl:value-of select="substring(cbc:IssueDate, 1, 4)"/>
                            <xsl:for-each select="cbc:IssueTime">
                              <xsl:text>&#160;</xsl:text>
                              <xsl:value-of select="substring(., 1, 2)"/>:<xsl:value-of
                                select="substring(., 4, 2)"/>:<xsl:value-of
                                select="substring(., 7, 2)"/>
                            </xsl:for-each>
                          </td>
                        </tr>

                        <xsl:for-each select="cbc:Note">
                          <xsl:choose>
                            <xsl:when test="substring-before(., ':') = 'VADETARIHI'">
                              <tr>
                                <td>
                                  <span style="font-weight:bold; ">
                                    <font color="navy">Vade Tarihi</font>
                                  </span>

                                </td>
                                <td>
                                  <b>
                                    <font color="navy">: </font>
                                  </b>
                                  <xsl:value-of select="substring-after(., ':')"/>
                                </td>
                              </tr>
                            </xsl:when>
                          </xsl:choose>
                        </xsl:for-each>
                        <tr style="height:13px; ">
                          <td align="left">
                            <span style="font-weight:bold; ">
                              <font color="navy">
                                <xsl:text>Fatura Para Birimi</xsl:text>
                              </font>
                            </span>
                          </td>
                          <td align="left">
                            <b>
                              <font color="navy">: </font>
                            </b>
                            <xsl:choose>
                              <xsl:when test="cbc:DocumentCurrencyCode = 'TRY'">
                                <xsl:text>TL</xsl:text>
                              </xsl:when>
                              <xsl:when test="cbc:DocumentCurrencyCode = 'USD'">
                                <xsl:text>Dolar</xsl:text>
                              </xsl:when>
                              <xsl:when test="cbc:DocumentCurrencyCode = 'EUR'">
                                <xsl:text>Euro</xsl:text>
                              </xsl:when>
                              <xsl:otherwise>
                                <xsl:value-of select="cbc:DocumentCurrencyCode"/>
                              </xsl:otherwise>
                            </xsl:choose>
                          </td>
                        </tr>
                        <xsl:choose>
                          <xsl:when test="cbc:DocumentCurrencyCode != 'TRY'">
                            <tr style="height:13px; ">
                              <td align="left">
                                <span style="font-weight:bold; ">
                                  <font color="navy">
                                    <xsl:text>Kur Bilgisi</xsl:text>
                                  </font>
                                </span>
                              </td>
                              <td align="left">
                                <b>
                                  <font color="navy">: </font>
                                </b>
                                <xsl:value-of
                                  select="format-number(cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,0000', 'european')"
                                />
                              </td>
                            </tr>
                          </xsl:when>
                        </xsl:choose>

                        <tr style="height:13px; ">
                          <td align="left">
                            <span style="font-weight:bold; ">
                              <font color="navy">
                                <xsl:text>Fatura Kalem Adeti</xsl:text>
                              </font>
                            </span>
                          </td>
                          <td align="left">
                            <b>
                              <font color="navy">: </font>
                            </b>
                            <xsl:value-of select="cbc:LineCountNumeric"/>
                          </td>
                        </tr>
                        <xsl:if test="cac:OrderReference">
                          <tr style="height:13px">
                            <td align="left">
                              <span style="font-weight:bold; ">
                                <font color="navy">
                                  <xsl:text>Sipariş No</xsl:text>
                                </font>
                              </span>
                            </td>
                            <td align="left">
                              <xsl:for-each select="n1:Invoice/cac:OrderReference">
                                <xsl:for-each select="cbc:ID">
                                  <b>
                                    <font color="navy">: </font>
                                  </b>
                                  <xsl:apply-templates/>
                                </xsl:for-each>
                              </xsl:for-each>
                            </td>
                          </tr>
                        </xsl:if>
                        <xsl:if test="cac:OrderReference/cbc:IssueDate">
                          <tr style="height:13px">
                            <td align="left">
                              <span style="font-weight:bold; ">
                                <font color="navy">
                                  <xsl:text>Sipariş Tarihi</xsl:text>
                                </font>
                              </span>
                            </td>
                            <td align="left">
                              <xsl:for-each select="n1:Invoice/cac:OrderReference">
                                <xsl:for-each select="cbc:IssueDate">
                                  <b>
                                    <font color="navy">: </font>
                                  </b><xsl:value-of select="substring(., 9, 2)"/>-<xsl:value-of
                                    select="substring(., 6, 2)"/>-<xsl:value-of
                                    select="substring(., 1, 4)"/>
                                </xsl:for-each>
                              </xsl:for-each>
                            </td>
                          </tr>
                        </xsl:if>
                      </xsl:for-each>
                    </tbody>
                  </table>

                </td>
              </tr>
            </tbody>
          </table>

          <br/>

          <table style="border:1px solid orange; border-collapse:collapse;" cellspacing="0px"
            width="800" cellpadding="5px">
            <tbody>
              <tr align="left">
                <td align="left" valign="top">
                  <span style="font-weight:bold; ">
                    <font color="navy">
                      <xsl:text>Fatura No : </xsl:text>
                    </font>
                    <xsl:for-each select="n1:Invoice">
                      <xsl:for-each select="cbc:ID">
                        <xsl:apply-templates/>
                      </xsl:for-each>
                    </xsl:for-each>

                  </span>
                </td>

                <td align="right" valign="top">
                  <span style="font-weight:bold; ">
                    <font color="navy">
                      <xsl:text>ETTN : </xsl:text>
                    </font>
                    <xsl:for-each select="n1:Invoice">
                      <xsl:for-each select="cbc:UUID">
                        <xsl:apply-templates/>
                      </xsl:for-each>
                    </xsl:for-each>

                  </span>
                </td>
              </tr>
            </tbody>
          </table>

          <!--   SATIRLAR -->
          <div id="lineTableAligner">
            <span>
              <xsl:text>&#160;</xsl:text>
            </span>
          </div>
          <!--
		  
		  
		  
		  -->
          <div id="bookmarkLineTable">
            <table id="lineTable" style="border:1px solid orange; border-collapse:collapse;"
              cellspacing="0px" width="800" cellpadding="5px">
              <tbody>
                <tr
                  style="border:1px solid orange; border-collapse:collapse;border-bottom:1px solid orange;">
                  <td style="width:4%;border:1px solid orange;">
                    <span style="font-weight:bold; " align="center">
                      <font color="navy">
                        <xsl:text>Sıra No</xsl:text>
                      </font>
                    </span>
                  </td>
                  <td style="width:6%;border:1px solid orange;" align="center">
                    <span style="font-weight:bold; ">
                      <font color="navy">
                        <xsl:text>Kodu</xsl:text>
                      </font>
                    </span>
                  </td>
                  <td style="width:23%;border:1px solid orange;" align="center">
                    <span style="font-weight:bold; ">
                      <font color="navy">
                        <xsl:text>Malzeme/Hizmet Adı</xsl:text>
                      </font>
                    </span>
                  </td>
                  <td style="width:8%;border:1px solid orange;" align="center">
                    <span style="font-weight:bold;">
                      <font color="navy">
                        <xsl:text>Miktar</xsl:text>
                      </font>
                    </span>
                  </td>
                  <td style="width:12%;border:1px solid orange;" align="center">
                    <span style="font-weight:bold; ">
                      <font color="navy">
                        <xsl:text>Birim Fiyat</xsl:text>
                      </font>
                    </span>
                  </td>
                  <td style="width:8%;border:1px solid orange;" align="center">
                    <span style="font-weight:bold; ">
                      <font color="navy">
                        <xsl:text>İskonto Oranı</xsl:text>
                      </font>
                    </span>
                  </td>
                  <td style="width:8%;border:1px solid orange;" align="center">
                    <span style="font-weight:bold; ">
                      <font color="navy">
                        <xsl:text>İskonto Tutarı</xsl:text>
                      </font>
                    </span>
                  </td>
                  <td style="width:8%;border:1px solid orange;" align="center">
                    <span style="font-weight:bold; ">
                      <font color="navy">
                        <xsl:text>KDV Oranı</xsl:text>
                      </font>
                    </span>
                  </td>
                  <td style="width:8%;border:1px solid orange;" align="center">
                    <span style="font-weight:bold; ">
                      <font color="navy">
                        <xsl:text>KDV Tutarı</xsl:text>
                      </font>
                    </span>
                  </td>
                  <xsl:if
                    test="//n1:Invoice/cac:InvoiceLine/cac:TaxTotal//cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode != '0015' and cbc:TaxAmount > 0]">
                    <td style="width:15%;border:1px solid orange;" align="center">
                      <span style="font-weight:bold;">
                        <font color="navy">
                          <xsl:text>Diğer Vergiler</xsl:text>
                        </font>
                      </span>
                    </td>
                  </xsl:if>
                  <xsl:if
                    test="//n1:Invoice/cac:InvoiceLine//cac:WithholdingTaxTotal//cac:TaxSubtotal//cbc:TaxAmount > 0">
                    <td style="width:8%;border:1px solid orange;" align="center">
                      <span style="font-weight:bold;">
                        <font color="navy">
                          <xsl:text>Tevkif Oranı</xsl:text>
                        </font>
                      </span>
                    </td>
                    <td style="width:8%;border:1px solid orange;" align="center">
                      <span style="font-weight:bold;">
                        <font color="navy">
                          <xsl:text>Tevkif Tutarı</xsl:text>
                        </font>
                      </span>
                    </td>
                  </xsl:if>
                  <td style="width:15%;border:1px solid orange;" align="center">
                    <span style="font-weight:bold; ">
                      <font color="navy">
                        <xsl:text>Mal Hizmet Tutarı</xsl:text>
                      </font>
                    </span>
                  </td>
                </tr>
                <xsl:for-each select="//n1:Invoice/cac:InvoiceLine">
                  <xsl:apply-templates select="."/>
                </xsl:for-each>
                <!-- <xsl:if test="count(//n1:Invoice/cac:InvoiceLine) &lt;= 20">
									<xsl:for-each select="(//node())[20 - count(//n1:Invoice/cac:InvoiceLine) >= position()]">
											<xsl:apply-templates select="//n1:Invoice"/>
									</xsl:for-each>
								</xsl:if> -->
              </tbody>
            </table>
          </div>
        </xsl:for-each>
        <table
          style="border:1px solid orange;border-collapse:collapse;border-top:0px dotted black; "
          cellspacing="0px" width="800" cellpadding="5px">
          <!--<table id="budgetContainerTable" width="800px">-->

          <xsl:if
            test="substring-after(n1:Invoice/cbc:Note[starts-with(., 'EFATURA_TOPLAM_EPH_DOVIZ_TUTARI')], ':')">
            <tr align="right">
              <td/>
              <td align="right" width="850px">
                <span style="font-weight:bold; ">
                  <font color="navy">
                    <xsl:text>Toplam EPH : </xsl:text>
                  </font>
                </span>
              </td>
              <td style="width:150px; " align="right">
                <span>
                  <xsl:value-of
                    select="substring-after(n1:Invoice/cbc:Note[starts-with(., 'EFATURA_TOPLAM_EPH_DOVIZ_TUTARI')], ':')"/>
                  <xsl:text> </xsl:text>
                  <xsl:text>TL</xsl:text>
                  <!-- !!! EPH Tutarının para biriminin TL olduğu varsayıldı. !!! -->
                  <!-- <xsl:if
									test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID">
                  <xsl:text> </xsl:text>
                  <xsl:if
										test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID = 'TRY'">
                    <xsl:text>TL</xsl:text>
                  </xsl:if>
                  <xsl:if
										test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID != 'TRY'">
                    <xsl:value-of
											select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID"
										/>
                  </xsl:if>
                </xsl:if> -->
                </span>
              </td>
            </tr>
          </xsl:if>

          <tr align="right">
            <td/>
            <td align="right" width="850px">
              <span style="font-weight:bold; ">
                <font color="navy">
                  <xsl:text>Mal Hizmet Toplam Tutarı : </xsl:text>
                </font>
              </span>
            </td>
            <td style="width:150px; " align="right">
              <span>
                <xsl:value-of
                  select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount, '###.##0,00', 'european')"/>
                <xsl:if
                  test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID">
                  <xsl:text> </xsl:text>
                  <xsl:if
                    test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID = 'TRY'">
                    <xsl:text>TL</xsl:text>
                  </xsl:if>
                  <xsl:if
                    test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID != 'TRY'">
                    <xsl:value-of
                      select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID"
                    />
                  </xsl:if>
                </xsl:if>
              </span>
            </td>
          </tr>
          <tr align="right">
            <td/>
            <td align="right" width="850px">
              <span style="font-weight:bold; ">
                <font color="navy">
                  <xsl:text>Toplam İskonto : </xsl:text>
                </font>
              </span>
            </td>
            <td style="width:150px; " align="right">
              <span>
                <xsl:value-of
                  select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount, '###.##0,00', 'european')"/>
                <xsl:if
                  test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID">
                  <xsl:text> </xsl:text>
                  <xsl:if
                    test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID = 'TRY'">
                    <xsl:text>TL</xsl:text>
                  </xsl:if>
                  <xsl:if
                    test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID != 'TRY'">
                    <xsl:value-of
                      select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID"
                    />
                  </xsl:if>
                </xsl:if>
              </span>
            </td>
          </tr>
          <xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
            <xsl:if
              test="(cac:TaxCategory/cac:TaxScheme/cbc:Name = 'KDV') and (count(//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal) &gt; 1)">
              <tr align="right">
                <td/>
                <td width="850px" align="right">
                  <span style="font-weight:bold; ">
                    <font color="navy">
                      <xsl:text>Toplam Matrah </xsl:text>
                      <xsl:text>(%</xsl:text>
                      <xsl:value-of select="cbc:Percent"/>
                      <xsl:text>) : </xsl:text>
                    </font>
                  </span>
                </td>
                <td style="width:150px; " align="right">
                  <xsl:for-each select="cac:TaxCategory/cac:TaxScheme">
                    <xsl:text> </xsl:text>
                    <xsl:value-of
                      select="format-number(../../cbc:TaxableAmount, '###.##0,00', 'european')"/>
                    <xsl:if test="../../cbc:TaxableAmount/@currencyID">
                      <xsl:text> </xsl:text>
                      <xsl:if test="../../cbc:TaxableAmount/@currencyID = 'TRY'">
                        <xsl:text>TL</xsl:text>
                      </xsl:if>
                      <xsl:if test="../../cbc:TaxableAmount/@currencyID != 'TRY'">
                        <xsl:value-of select="../../cbc:TaxableAmount/@currencyID"/>
                      </xsl:if>
                    </xsl:if>
                  </xsl:for-each>
                </td>
              </tr>
            </xsl:if>

            <tr align="right">
              <td/>
              <td width="850px" align="right">
                <span style="font-weight:bold; ">
                  <font color="navy">
                    <xsl:text>Hesaplanan </xsl:text>
                    <xsl:if test="cac:TaxCategory/cac:TaxScheme/cbc:Name != 'KDV'">
                      <xsl:text>Diğer Vergiler</xsl:text>
                    </xsl:if>
                    <xsl:if test="cac:TaxCategory/cac:TaxScheme/cbc:Name = 'KDV'">
                      <xsl:text>KDV</xsl:text>
                    </xsl:if>
                    <xsl:text>(%</xsl:text>
                    <xsl:value-of select="cbc:Percent"/>
                    <xsl:text>) : </xsl:text>
                  </font>
                </span>
              </td>
              <td style="width:150px; " align="right">
                <xsl:for-each select="cac:TaxCategory/cac:TaxScheme">
                  <xsl:text> </xsl:text>
                  <xsl:value-of
                    select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
                  <xsl:if test="../../cbc:TaxAmount/@currencyID">
                    <xsl:text> </xsl:text>
                    <xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRY'">
                      <xsl:text>TL</xsl:text>
                    </xsl:if>
                    <xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRY'">
                      <xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
                    </xsl:if>
                  </xsl:if>
                </xsl:for-each>
              </td>

              <!-- <td  style="width:150px; " align="right">
								<xsl:text> </xsl:text>
								<xsl:value-of select="format-number(sum((/n1:Invoice/cac:TaxTotal/cbc:TaxAmount | /n1:Invoice/cac:WithholdingTaxTotal/cbc:TaxAmount)[number(.) = .]),'###.##0,00', 'european')"/>
								<xsl:if test="n1:Invoice/cac:TaxTotal/cbc:TaxAmount/@currencyID">
									<xsl:text> </xsl:text>
									<xsl:if test="n1:Invoice/cac:TaxTotal/cbc:TaxAmount/@currencyID = 'TRY'">
										<xsl:text>TL</xsl:text>
									</xsl:if>
									<xsl:if test="n1:Invoice/cac:TaxTotal/cbc:TaxAmount/@currencyID != 'TRY'">
										<xsl:value-of select="n1:Invoice/cac:TaxTotal/cbc:TaxAmount/@currencyID"/>
									</xsl:if>
								</xsl:if>
                
              </td> -->

            </tr>
          </xsl:for-each>

          <!-- <xsl:if test="substring-after(n1:Invoice/cbc:Note[starts-with(., 'EFATURA_TOPLAM_EPH_KDV_DOVIZ_TUTARI')], ':')">
						<tr align="right">
							<td/>
							<td  align="right" width="850px">
								<span style="font-weight:bold; ">
									<font color="navy">
										<xsl:text>Hesaplanan EPH KDV : </xsl:text>
									</font>
								</span>
							</td>
							<td style="width:150px;" align="right">
								<span>
									<xsl:value-of select="substring-after(n1:Invoice/cbc:Note[starts-with(., 'EFATURA_TOPLAM_EPH_KDV_DOVIZ_TUTARI')], ':')"/>
									<xsl:text> TL</xsl:text>
								</span>
							</td>
						</tr>
					</xsl:if> -->

          <xsl:for-each select="n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal">
            <xsl:if test="cbc:TaxAmount">
              <tr align="right">
                <td/>
                <td width="850px" align="right">
                  <span style="font-weight:bold; ">
                    <font color="navy">
                      <xsl:text>Tevkif Edilen KDV</xsl:text>
                      <xsl:if test="cbc:Percent">
                        <xsl:text>(%</xsl:text>
                        <xsl:value-of select="cbc:Percent"/>
                        <xsl:text>)</xsl:text>
                      </xsl:if>
                      <xsl:text> : </xsl:text>
                    </font>
                  </span>
                </td>
                <td style="width:150px; " align="right">
                  <xsl:value-of select="format-number(cbc:TaxAmount, '###.##0,00', 'european')"/>
                  <xsl:if test="cbc:TaxAmount/@currencyID">
                    <xsl:text> </xsl:text>
                    <xsl:if test="cbc:TaxAmount/@currencyID = 'TRY'">
                      <xsl:text>TL</xsl:text>
                    </xsl:if>
                    <xsl:if test="cbc:TaxAmount/@currencyID != 'TRY'">
                      <xsl:value-of select="cbc:TaxAmount/@currencyID"/>
                    </xsl:if>
                  </xsl:if>
                </td>
              </tr>
            </xsl:if>
          </xsl:for-each>
          <tr align="right">
            <td/>
            <td width="850px" align="right">
              <span style="font-weight:bold; ">
                <font color="navy">
                  <xsl:text>Vergiler Dahil Toplam Tutar : </xsl:text>
                </font>
              </span>
            </td>
            <td style="width:150px; " align="right">
              <xsl:for-each select="n1:Invoice">
                <xsl:for-each select="cac:LegalMonetaryTotal">
                  <xsl:for-each select="cbc:TaxInclusiveAmount">
                    <xsl:value-of select="format-number(., '###.##0,00', 'european')"/>
                    <xsl:if
                      test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID">
                      <xsl:text> </xsl:text>
                      <xsl:if
                        test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID = 'TRY'">
                        <xsl:text>TL</xsl:text>
                      </xsl:if>
                      <xsl:if
                        test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID != 'TRY'">
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
          <tr align="right">
            <td/>
            <td width="850px" align="right">
              <span style="font-weight:bold; ">
                <font color="navy">
                  <xsl:text>Ödenecek Tutar : </xsl:text>
                </font>
              </span>
            </td>
            <td style="width:150px; " align="right">
              <xsl:for-each select="n1:Invoice">
                <xsl:for-each select="cac:LegalMonetaryTotal">
                  <xsl:for-each select="cbc:PayableAmount">
                    <xsl:value-of select="format-number(., '###.##0,00', 'european')"/>
                    <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID">
                      <xsl:text> </xsl:text>
                      <xsl:if
                        test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID = 'TRY'">
                        <xsl:text>TL</xsl:text>
                      </xsl:if>
                      <xsl:if
                        test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID != 'TRY'">
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


          <xsl:if
            test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID != 'TRY'">
            <tr align="right">
              <td/>
              <td align="right" width="850px">
                <span style="font-weight:bold; ">
                  <font color="navy">
                    <xsl:text>Mal Hizmet Toplam Tutarı(TL) : </xsl:text>
                  </font>
                </span>
              </td>
              <td style="width:150px;" align="right">
                <span>
                  <xsl:value-of
                    select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
                  <xsl:text> TL</xsl:text>
                </span>
              </td>
            </tr>
            <xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
              <tr align="right">
                <td/>
                <td width="850px" align="right">
                  <span style="font-weight:bold; ">
                    <font color="navy">
                      <xsl:text>Hesaplanan </xsl:text>
                      <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
                      <xsl:text>(%</xsl:text>
                      <xsl:value-of select="cbc:Percent"/>
                      <xsl:text>) (TL) : </xsl:text>
                    </font>
                  </span>
                </td>
                <td style="width:150px; " align="right">
                  <xsl:for-each select="cac:TaxCategory/cac:TaxScheme">
                    <xsl:text> </xsl:text>
                    <xsl:value-of
                      select="format-number(../../cbc:TaxAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
                    <xsl:text>TL</xsl:text>
                  </xsl:for-each>
                </td>
              </tr>
            </xsl:for-each>
            <tr align="right">
              <td/>
              <td width="850px" align="right">
                <span style="font-weight:bold; ">
                  <font color="navy">
                    <xsl:text>Tevkif Edilen KDV</xsl:text>
                    <xsl:if test="//n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal/cbc:Percent">
                      <xsl:text>(%</xsl:text>
                      <xsl:value-of
                        select="//n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal/cbc:Percent"/>
                      <xsl:text>) (TL)</xsl:text>
                    </xsl:if>
                    <xsl:text> : </xsl:text>
                  </font>
                </span>
              </td>
              <td style="width:150px; " align="right">
                <xsl:for-each select="n1:Invoice">
                  <xsl:for-each select="cac:WithholdingTaxTotal">
                    <xsl:for-each select="cac:TaxSubtotal">
                      <xsl:for-each select="cbc:TaxAmount">
                        <xsl:value-of
                          select="format-number(. * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
                        <xsl:text>TL</xsl:text>
                      </xsl:for-each>
                    </xsl:for-each>
                  </xsl:for-each>
                </xsl:for-each>
              </td>
            </tr>
            <tr align="right">
              <td/>
              <td width="850px" align="right">
                <span style="font-weight:bold; ">
                  <font color="navy">
                    <xsl:text>Vergiler Dahil Toplam Tutar(TL) : </xsl:text>
                  </font>
                </span>
              </td>
              <td style="width:150px; " align="right">
                <xsl:value-of
                  select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
                <xsl:text> TL</xsl:text>
              </td>
            </tr>
            <tr align="right">
              <td/>
              <td width="850px" align="right">
                <span style="font-weight:bold; ">
                  <font color="navy">
                    <xsl:text>Ödenecek Tutar(TL) : </xsl:text>
                  </font>
                </span>
              </td>
              <td style="width:150px; " align="right">
                <xsl:value-of
                  select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
                <xsl:text> TL</xsl:text>
              </td>
            </tr>
          </xsl:if>




          <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:choose>
              <xsl:when
                test="substring-before(., ':') = 'YAZIILETUTAR' or substring-before(., ':') = 'YAZIILETUTARTRL'">
                <tr align="right">
                  <td/>
                  <td align="right" width="800px" colspan="2">
                    <span style="font-weight:bold; ">
                      <xsl:value-of select="substring-after(., ':')"/>
                    </span>
                  </td>
                </tr>
              </xsl:when>
            </xsl:choose>
          </xsl:for-each>



        </table>
        <br/>

        <table style="border:1px solid orange; border-collapse:collapse;" cellspacing="0px"
          width="800" cellpadding="5px">
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

        <xsl:variable name="invLinesWithResourcesCount"
          select="count(//n1:Invoice/cac:InvoiceLine[cac:OrderLineReference//cbc:LineID or cac:DespatchLineReference//cbc:LineID])"/>
        <xsl:if test="$invLinesWithResourcesCount > 0">

          <div>
            <span>
              <xsl:text>&#160;</xsl:text>
            </span>
          </div>

          <div id="bookmarkKaynakTable">
            <table style="border:1px solid orange; border-collapse: collapse;" cellspacing="0px"
              width="800" cellpadding="0px">
              <tr
                style="border:1px solid orange; border-collapse:collapse;border-bottom:1px solid orange;">
                <td style="width:4%;border:1px solid orange; text-align:center;">
                  <span style="font-weight:bold;">
                    <font color="navy">
                      <xsl:text>İlgili</xsl:text>
                      <br/>
                      <xsl:text>S. No</xsl:text>
                    </font>
                  </span>
                </td>
                <td style="width:8%;border:1px solid orange;" align="center">
                  <span style="font-weight:bold; ">
                    <font color="navy">
                      <xsl:text>Sipariş</xsl:text>
                      <br/>
                      <xsl:text>Tarihi</xsl:text>
                    </font>
                  </span>
                </td>
                <td style="width:15%;border:1px solid orange;" align="center">
                  <span style="font-weight:bold; ">
                    <font color="navy">
                      <xsl:text>Sipariş</xsl:text>
                      <br/>
                      <xsl:text>No</xsl:text>
                    </font>
                  </span>
                </td>
                <td style="width:8%;border:1px solid orange;" align="center">
                  <span style="font-weight:bold; ">
                    <font color="navy">
                      <xsl:text>İrsaliye</xsl:text>
                      <br/>
                      <xsl:text>Tarihi</xsl:text>
                    </font>
                  </span>
                </td>
                <td style="width:15%;border:1px solid orange;" align="center">
                  <span style="font-weight:bold; ">
                    <font color="navy">
                      <xsl:text>İrsaliye</xsl:text>
                      <br/>
                      <xsl:text>No</xsl:text>
                    </font>
                  </span>
                </td>
                <td style="width:4%;border:1px solid orange; text-align:center;">
                  <span style="font-weight:bold;">
                    <font color="navy">
                      <xsl:text>İlgili</xsl:text>
                      <br/>
                      <xsl:text>S. No</xsl:text>
                    </font>
                  </span>
                </td>
                <td style="width:8%;border:1px solid orange;" align="center">
                  <span style="font-weight:bold; ">
                    <font color="navy">
                      <xsl:text>Sipariş</xsl:text>
                      <br/>
                      <xsl:text>Tarihi</xsl:text>
                    </font>
                  </span>
                </td>
                <td style="width:15%;border:1px solid orange;" align="center">
                  <span style="font-weight:bold; ">
                    <font color="navy">
                      <xsl:text>Sipariş</xsl:text>
                      <br/>
                      <xsl:text>No</xsl:text>
                    </font>
                  </span>
                </td>
                <td style="width:8%;border:1px solid orange;" align="center">
                  <span style="font-weight:bold; ">
                    <font color="navy">
                      <xsl:text>İrsaliye</xsl:text>
                      <br/>
                      <xsl:text>Tarihi</xsl:text>
                    </font>
                  </span>
                </td>
                <td style="width:15%;border:1px solid orange;" align="center">
                  <span style="font-weight:bold; ">
                    <font color="navy">
                      <xsl:text>İrsaliye</xsl:text>
                      <br/>
                      <xsl:text>No</xsl:text>
                    </font>
                  </span>
                </td>
              </tr>
              <xsl:for-each select="//n1:Invoice/cac:InvoiceLine">
                <xsl:if test="position() mod 2 = 1">
                  <xsl:text disable-output-escaping="yes"><![CDATA[<tr>]]></xsl:text>
                </xsl:if>
                <xsl:if
                  test="cac:OrderLineReference//cbc:LineID or cac:DespatchLineReference//cbc:LineID">
                  <td
                    style="border-bottom:1px dotted orange; border-right:1px dotted orange; font-size:8px;"
                    align="center">
                    <span>
                      <xsl:value-of select="cbc:ID"/>
                    </span>
                  </td>
                  <xsl:if test="cac:OrderLineReference//cbc:LineID">
                    <td
                      style="border-bottom:1px dotted orange; border-right:1px dotted orange; font-size:8px;"
                      align="center">
                      <span>
                        <xsl:for-each select="cac:OrderLineReference">
                          <xsl:call-template name="dottedDateFormatter">
                            <xsl:with-param name="pDate" select="cac:OrderReference/cbc:IssueDate"/>
                          </xsl:call-template>
                          <br/>
                        </xsl:for-each>
                      </span>
                    </td>
                    <td
                      style="border-bottom:1px dotted orange; border-right:1px dotted orange; font-size:8px;"
                      align="center">
                      <span>
                        <xsl:for-each select="cac:OrderLineReference">
                          <xsl:value-of select="cac:OrderReference/cbc:ID"/>
                          <br/>
                        </xsl:for-each>
                      </span>
                    </td>
                  </xsl:if>
                  <xsl:if test="not(cac:OrderLineReference//cbc:LineID)">
                    <td
                      style="border-bottom:1px dotted orange; border-right:1px dotted orange; font-size:8px;"/>
                    <td
                      style="border-bottom:1px dotted orange; border-right:1px dotted orange; font-size:8px;"
                    />
                  </xsl:if>
                  <xsl:if test="cac:DespatchLineReference//cbc:LineID">
                    <td
                      style="border-bottom:1px dotted orange; border-right:1px dotted orange; font-size:8px;"
                      align="center">
                      <span>
                        <xsl:for-each select="cac:DespatchLineReference">
                          <xsl:call-template name="dottedDateFormatter">
                            <xsl:with-param name="pDate"
                              select="cac:DocumentReference/cbc:IssueDate"/>
                          </xsl:call-template>
                          <br/>
                        </xsl:for-each>
                      </span>
                    </td>
                    <td
                      style="border-bottom:1px dotted orange; border-right:1px solid orange; font-size:8px;"
                      align="center">
                      <span>
                        <xsl:for-each select="cac:DespatchLineReference">
                          <xsl:value-of select="cac:DocumentReference/cbc:ID"/>
                          <br/>
                        </xsl:for-each>
                      </span>
                    </td>
                  </xsl:if>
                  <xsl:if test="not(cac:DespatchLineReference/cbc:LineID)">
                    <td
                      style="border-bottom:1px dotted orange; border-right:1px dotted orange; font-size:8px;"/>
                    <td
                      style="border-bottom:1px dotted orange; border-right:1px solid orange; font-size:8px;"
                    />
                  </xsl:if>
                </xsl:if>
                <xsl:if test="position() mod 2 = 0 or position() = last()">
                  <xsl:text disable-output-escaping="yes"><![CDATA[</tr>]]></xsl:text>
                </xsl:if>
              </xsl:for-each>
            </table>
          </div>
        </xsl:if>
            {{BANKINFO}}
      </body>
    </html>
  </xsl:template>
  <xsl:template match="dateFormatter">
    <xsl:value-of select="substring(., 9, 2)"/>-<xsl:value-of select="substring(., 6, 2)"
      />-<xsl:value-of select="substring(., 1, 4)"/>
  </xsl:template>
  <xsl:template name="dottedDateFormatter">
    <xsl:param name="pDate"/>
    <xsl:value-of select="substring($pDate, 9, 2)"/>.<xsl:value-of select="substring($pDate, 6, 2)"
      />.<xsl:value-of select="substring($pDate, 1, 4)"/>
  </xsl:template>
  <xsl:template match="//n1:Invoice/cac:InvoiceLine">
    <tr id="lineTableTr">
      <td style="border-bottom:1px dotted orange;border-right:1px dotted orange;">
        <span>
          <xsl:text>&#160;</xsl:text>
          <xsl:value-of select="./cbc:ID"/>
        </span>
      </td>
      <td style="border-bottom:1px dotted orange;border-right:1px dotted orange;">
        <span>
          <xsl:text>&#160;</xsl:text>
          <xsl:value-of select="./cac:Item/cac:SellersItemIdentification/cbc:ID"/>
        </span>
      </td>
      <td style="border-bottom:1px dotted orange;border-right:1px dotted orange;">
        <span>
          <xsl:text>&#160;</xsl:text>
          <xsl:value-of select="./cac:Item/cbc:Name"/>
          <!--	<xsl:text>&#160;</xsl:text>
					<xsl:value-of select="./cac:Item/cbc:BrandName"/>
					<xsl:text>&#160;</xsl:text>
					<xsl:value-of select="./cac:Item/cbc:ModelName"/>
					<xsl:text>&#160;</xsl:text>
					<xsl:value-of select="./cac:Item/cbc:Description"/>-->
        </span>
      </td>
      <td style="border-bottom:1px dotted orange;border-right:1px dotted orange;" align="right">
        <span>
          <xsl:text>&#160;</xsl:text>
          <xsl:value-of select="format-number(./cbc:InvoicedQuantity, '###.###,####', 'european')"/>
          <xsl:if test="./cbc:InvoicedQuantity/@unitCode">
            <xsl:for-each select="./cbc:InvoicedQuantity">
              <xsl:text> </xsl:text>
              <xsl:choose>
                <xsl:when test="@unitCode = 'PK'">
                  <span>
                    <xsl:text>PAKET</xsl:text>
                  </span>
                </xsl:when>


                <xsl:otherwise>
                  <xsl:value-of select="./cbc:InvoicedQuantity/@unitCode"/>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:for-each>
          </xsl:if>
        </span>
      </td>
      <td style="border-bottom:1px dotted orange;border-right:1px dotted orange;" align="right">
        <span>
          <xsl:text>&#160;</xsl:text>
          <xsl:value-of
            select="format-number(./cac:Price/cbc:PriceAmount, '###.##0,########', 'european')"/>
          <xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID">
            <xsl:text> </xsl:text>
            <xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID = &quot;TRY&quot;">
              <xsl:text>TL</xsl:text>
            </xsl:if>
            <xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID != &quot;TRY&quot;">
              <xsl:value-of select="./cac:Price/cbc:PriceAmount/@currencyID"/>
            </xsl:if>
          </xsl:if>
        </span>
      </td>
      <td style="border-bottom:1px dotted orange;border-right:1px dotted orange;" align="right">
        <span>
          <xsl:text>&#160;</xsl:text>
          <xsl:if test="./cac:AllowanceCharge/cbc:MultiplierFactorNumeric">
            <xsl:text> %</xsl:text>
            <xsl:value-of
              select="format-number(./cac:AllowanceCharge/cbc:MultiplierFactorNumeric * 100, '###.##0,00', 'european')"
            />
          </xsl:if>
        </span>
      </td>
      <td style="border-bottom:1px dotted orange;border-right:1px dotted orange;" align="right">
        <span>
          <xsl:text>&#160;</xsl:text>
          <xsl:if test="./cac:AllowanceCharge">
            <!--<xsl:if test="./cac:AllowanceCharge/cbc:ChargeIndicator = true() ">+
										</xsl:if>
						<xsl:if test="./cac:AllowanceCharge/cbc:ChargeIndicator = false() ">-
										</xsl:if>-->
            <xsl:value-of
              select="format-number(./cac:AllowanceCharge/cbc:Amount, '###.##0,00', 'european')"/>
          </xsl:if>
          <xsl:if test="./cac:AllowanceCharge/cbc:Amount/@currencyID">
            <xsl:text> </xsl:text>
            <xsl:if test="./cac:AllowanceCharge/cbc:Amount/@currencyID = 'TRY'">
              <xsl:text>TL</xsl:text>
            </xsl:if>
            <xsl:if test="./cac:AllowanceCharge/cbc:Amount/@currencyID != 'TRY'">
              <xsl:value-of select="./cac:AllowanceCharge/cbc:Amount/@currencyID"/>
            </xsl:if>
          </xsl:if>
        </span>
      </td>
      <td style="border-bottom:1px dotted orange;border-right:1px dotted orange;" align="right">
        <span>
          <xsl:text>&#160;</xsl:text>
          <xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
            <xsl:if test="cbc:TaxTypeCode = '0015'">
              <xsl:text> </xsl:text>
              <xsl:if test="../../cbc:Percent">
                <xsl:text> %</xsl:text>
                <xsl:value-of select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </span>
      </td>
      <td style="border-bottom:1px dotted orange;border-right:1px dotted orange;" align="right">
        <span>
          <xsl:text>&#160;</xsl:text>
          <xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
            <xsl:if test="cbc:TaxTypeCode = '0015'">
              <xsl:text> </xsl:text>
              <xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
              <xsl:if test="../../cbc:TaxAmount/@currencyID">
                <xsl:text> </xsl:text>
                <xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRY'">
                  <xsl:text>TL</xsl:text>
                </xsl:if>
                <xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRY'">
                  <xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
                </xsl:if>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </span>
      </td>
      <xsl:if
        test="//n1:Invoice/cac:InvoiceLine/cac:TaxTotal//cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode != '0015' and cbc:TaxAmount > 0]">
        <td style="border-bottom:1px dotted orange;border-right:1px dotted orange;" align="right">
          <span>
            <xsl:text>&#160;</xsl:text>
            <xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
              <xsl:if test="cbc:TaxTypeCode != '0015'">
                <xsl:text> </xsl:text>
                <xsl:value-of select="cbc:Name"/>
                <xsl:if test="../../cbc:Percent">
                  <xsl:text> (%</xsl:text>
                  <xsl:value-of select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
                  <xsl:text>)=</xsl:text>
                </xsl:if>
                <xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
                <xsl:if test="../../cbc:TaxAmount/@currencyID">
                  <xsl:text> </xsl:text>
                  <xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRY'">
                    <xsl:text>TL</xsl:text>
                  </xsl:if>
                  <xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRY'">
                    <xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
                  </xsl:if>
                </xsl:if>
              </xsl:if>
            </xsl:for-each>
          </span>
        </td>
      </xsl:if>
      <xsl:if
        test="//n1:Invoice/cac:InvoiceLine//cac:WithholdingTaxTotal//cac:TaxSubtotal//cbc:TaxAmount > 0">
        <td style="border-bottom:1px dotted orange;border-right:1px dotted orange;" align="right">
          <span>
            <xsl:text>&#160;</xsl:text>
            <xsl:for-each
              select="./cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
              <xsl:if test="../../cbc:Percent">
                <xsl:text>%</xsl:text>
                <xsl:value-of select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
              </xsl:if>
            </xsl:for-each>
          </span>
        </td>
        <td style="border-bottom:1px dotted orange;border-right:1px dotted orange;" align="right">
          <span>
            <xsl:text>&#160;</xsl:text>
            <xsl:for-each
              select="./cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
              <xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
              <xsl:if test="../../cbc:TaxAmount/@currencyID">
                <xsl:text> </xsl:text>
              </xsl:if>
              <xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRY'">
                <xsl:text>TL</xsl:text>
              </xsl:if>
              <xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRY'">
                <xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
              </xsl:if>
            </xsl:for-each>
          </span>
        </td>
      </xsl:if>
      <td style="border-bottom:1px dotted orange;border-right:1px solid orange;" align="right">
        <span>
          <xsl:text>&#160;</xsl:text>
          <xsl:value-of select="format-number(./cbc:LineExtensionAmount, '###.##0,00', 'european')"/>
          <xsl:if test="./cbc:LineExtensionAmount/@currencyID">
            <xsl:text> </xsl:text>
            <xsl:if test="./cbc:LineExtensionAmount/@currencyID = 'TRY'">
              <xsl:text>TL</xsl:text>
            </xsl:if>
            <xsl:if test="./cbc:LineExtensionAmount/@currencyID != 'TRY'">
              <xsl:value-of select="./cbc:LineExtensionAmount/@currencyID"/>
            </xsl:if>
          </xsl:if>
        </span>
      </td>
    </tr>
  </xsl:template>
  <xsl:template match="//n1:Invoice">
    <tr id="lineTableTr">
      <xsl:for-each select="(//node())">
        <xsl:if test="position() &lt;= 3">
          <td style="border-bottom:1px dotted orange;border-right:1px dotted orange;">
            <span>
              <xsl:text>&#160;</xsl:text>
            </span>
          </td>
        </xsl:if>
        <xsl:if test="position() &gt; 3">
          <td style="border-bottom:1px dotted orange;border-right:1px dotted orange;" align="right">
            <span>
              <xsl:text>&#160;</xsl:text>
            </span>
          </td>
        </xsl:if>
      </xsl:for-each>
    </tr>
  </xsl:template>
</xsl:stylesheet>

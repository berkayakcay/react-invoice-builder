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
   <head/>
   <body>
    <p>
     <span style="font-size: 10px;">&#8203;&#8203;</span>
    </p>
    <table border="0" cellpadding="0" cellspacing="0" style="border-color: blue;" width="800">
     <tbody>
      <tr>
       <td style="width: 205px; text-align: center;">
        <img alt="" src=""/>
       </td>
       <td style="width: 222.58px; text-align: center;">
        <span style="font-size: 10px;">
         <span style="color: rgb(105, 105, 105);">
          <span style="font-family: verdana,geneva,sans-serif;">
           <img align="middle" alt="GIB Logo"
            src="data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABkAAD/4QMZaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzEzMiA3OS4xNTkyODQsIDIwMTYvMDQvMTktMTM6MTM6NDAgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjZDNDJBNEI2QjVCRDExRThCQjM0REIwQkZGMEQxODY0IiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjZDNDJBNEI1QjVCRDExRThCQjM0REIwQkZGMEQxODY0IiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDUzQgV2luZG93cyI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSIzREVENkU1N0FDREVDNEJBNzkxNUM2M0NCN0RENzM0NyIgc3RSZWY6ZG9jdW1lbnRJRD0iM0RFRDZFNTdBQ0RFQzRCQTc5MTVDNjNDQjdERDczNDciLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/7gAOQWRvYmUAZMAAAAAB/9sAhAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEB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"
            style="width: 70px;"/>
           <br/>
           <br/>
           <font align="center">e-FATURA</font>
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
          <tr>
           <td align="left"><span style="color: rgb(0, 0, 0);"><span style="font-size: 10px;"><span
               style="font-family: verdana, geneva, sans-serif;"><strong>NES BİLGİ VERİ
                TEKNOLOJİLERİ VE SAKLAMA HİZMETLERİ A.Ş.</strong><br/>Barbaros Mah. Ak Zambak Sok
               Uphill Towers A Blok Kat:16 No:92<br/>
               <font face="Arial">34500 </font>ATAŞEHİR / &#304;STANBUL<br/> TEL:0216 688 51 00<br/>
               Vergi Dairesi: KOZYATAĞI VKN: 2222222222<br/> Ticari Sicil No : 444444444 Mersis No :
               333333333</span></span></span><br/>
            <a href="http://www.nesbilgi.com.tr">www.nesbilgi.com.tr</a></td>
          </tr>
         </tbody>
        </table>
       </td>
       <td style="width: 222.58px;">&#160;</td>
       <td style="width: 219.41px;">
        <table style="width: 200px; border-collapse: collapse;">
         <tbody>
          <tr>
           <td style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 87px;">
            <span style="font-size: 9px;">
             <span style="color: rgb(0, 0, 0);">
              <span style="font-family: verdana,geneva,sans-serif;">
               <span style="font-weight: bold; white-space: pre;">&#214;zelle&#351;tirme No:</span>
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
               <strong>&#304;rsaliye No:</strong>
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
               <strong>&#304;rsaliye Tarihi:</strong>
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
          <span style="font-size: 10px;">S&#305;ra No</span>
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
          <span style="font-size: 10px;">Malzeme&#160;</span>
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
          <span style="font-size: 10px;">KDV Oran&#305;</span>
         </strong>
        </span>
       </td>
       <td
        style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 31px; text-align: center; background-color: rgb(0, 153, 153);">
        <span style="color: rgb(255, 240, 245);">
         <strong>
          <span style="font-size: 10px;">KDV Tutar&#305;</span>
         </strong>
        </span>
       </td>
       <td
        style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 31px; text-align: center; background-color: rgb(0, 153, 153);">
        <span style="color: rgb(255, 240, 245);">
         <strong>
          <span style="font-size: 10px;">Di&#287;er Vergiler</span>
         </strong>
        </span>
       </td>
       <td
        style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 31px; text-align: center; background-color: rgb(0, 153, 153);">
        <span style="color: rgb(255, 240, 245);">
         <strong>
          <span style="font-size: 10px;">Malzeme Tutar&#305;</span>
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
           <xsl:value-of select="./cac:Item/cbc:Description"/>
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
               MM&#179;
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
               CM&#178;
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;CMQ&apos;">
               <span>
                <xsl:text>
               CM&#179;
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
               M&#178;
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;MTQ&apos;">
               <span>
                <xsl:text>
               M&#179;
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;DAY&apos;">
               <span>
                <xsl:text>
                G&#252;n
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
               MM&#178;
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;INK&apos;">
               <span>
                <xsl:text>
               IN&#178;
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;FTK&apos;">
               <span>
                <xsl:text>
               FT&#178;
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;INQ&apos;">
               <span>
                <xsl:text>
               IN&#179;
              </xsl:text>
               </span>
              </xsl:when>
              <xsl:when test="@unitCode = &apos;FTQ&apos;">
               <span>
                <xsl:text>
               FT&#179;
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
               &#199;ift
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
              Di&#287;er Vergiler Toplam&#305; 
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
               <span style="font-weight: bold;">Mal / Hizmet Toplam Tutar&#305;</span>
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
               Toplam &#304;skonto
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
                            Di&#287;er Vergiler Toplam&#305; 
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
                        Di&#287;er Vergiler Toplam&#305; 
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
               <span style="font-weight: bold;">&#214;denecek Tutar</span>
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
                <span style="font-weight: bold;">D&#246;viz Kuru (</span>
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
                <span style="font-weight: bold;">Mal / Hizmet Toplam Tutar&#305;</span>
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
                <span style="font-weight: bold;">Toplam &#304;skonto</span>
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
                             Di&#287;er Vergiler Toplam&#305; 
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
                         Di&#287;er Vergiler Toplam&#305; 
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
                <span style="font-weight: bold;">&#214;denecek Tutar</span>
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
           <b>&#304;ban Numaras&#305;:</b>
           <xsl:value-of select="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID"/>
           <br/>
          </xsl:if>
          <xsl:if test="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:CurrencyCode">
           <b>D&#246;viz Cinsi:</b>
           <xsl:value-of
            select="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:CurrencyCode"/>
           <br/>
          </xsl:if>
          <xsl:if test="//n1:Invoice/cac:PaymentMeans/cbc:InstructionNote">
           <b>&#214;deme Notu:</b>
           <xsl:value-of select="//n1:Invoice/cac:PaymentMeans/cbc:InstructionNote"/>
           <br/>
          </xsl:if>
          <xsl:if test="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:PaymentNote">
           <b>Hesap A&#231;&#305;klamas&#305;:</b>
           <xsl:value-of
            select="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:PaymentNote"/>
           <br/>
          </xsl:if>
          <xsl:if test="//n1:Invoice/cac:PaymentTerms/cbc:Note">
           <b>&#214;deme Ko&#351;ulu:</b>
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
           <b>Genel A&#231;&#305;klamalar</b>
           <br/>
           <xsl:for-each select="//n1:Invoice/cbc:Note">
            <xsl:value-of select="."/>
            <br/>
           </xsl:for-each>
          </xsl:if>
          <xsl:if test="(//n1:Invoice/cbc:ProfileID = &apos;EARSIVFATURA&apos;)">
           <br/>
           <b>
            <span style="color:red;">
             <xsl:text>
            e-Ar&#351;iv faturalar&#305;n&#305;z&#305; elektronik ortamda g&#246;r&#252;nt&#252;lemek ve indirilebilmek i&#231;in &quot;
           </xsl:text>
             <a target="_blank" href="https://faturasorgulama.elogo.com.tr">
              <xsl:text>
             https://faturasorgulama.elogo.com.tr
            </xsl:text>
             </a>
             <xsl:text>
            &quot; platformunu kullanabilirsiniz.
           </xsl:text>
            </span>
           </b>
          </xsl:if>
         </span>
        </p>
       </td>
      </tr>
     </tbody>
    </table>
   </body>
  </html>
 </xsl:template>
 <xsl:template name="TransportMode">
  <xsl:param name="TransportModeType"/>
  <xsl:choose>
   <xsl:when test="$TransportModeType = 1">Denizyolu</xsl:when>
   <xsl:when test="$TransportModeType = 2">Demiryolu</xsl:when>
   <xsl:when test="$TransportModeType = 3">Karayolu</xsl:when>
   <xsl:when test="$TransportModeType = 4">Havayolu</xsl:when>
   <xsl:when test="$TransportModeType = 5">Posta</xsl:when>
   <xsl:when test="$TransportModeType = 6">Çok araçlı</xsl:when>
   <xsl:when test="$TransportModeType = 7">Sabit taşıma tesisleri</xsl:when>
   <xsl:when test="$TransportModeType = 8">İç su taşımacılığı</xsl:when>
   <xsl:otherwise>
    <xsl:value-of select="$TransportModeType"/>
   </xsl:otherwise>
  </xsl:choose>
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
 <xsl:template name="Country">
  <xsl:param name="CountryType"/>
  <xsl:choose>
   <xsl:when test="$CountryType = 'AF'">Afganistan</xsl:when>
   <xsl:when test="$CountryType = 'DE'">Almanya</xsl:when>
   <xsl:when test="$CountryType = 'AD'">Andorra</xsl:when>
   <xsl:when test="$CountryType = 'AO'">Angola</xsl:when>
   <xsl:when test="$CountryType = 'AG'">Antigua ve Barbuda</xsl:when>
   <xsl:when test="$CountryType = 'AR'">Arjantin</xsl:when>
   <xsl:when test="$CountryType = 'AL'">Arnavutluk</xsl:when>
   <xsl:when test="$CountryType = 'AW'">Aruba</xsl:when>
   <xsl:when test="$CountryType = 'AU'">Avustralya</xsl:when>
   <xsl:when test="$CountryType = 'AT'">Avusturya</xsl:when>
   <xsl:when test="$CountryType = 'AZ'">Azerbaycan</xsl:when>
   <xsl:when test="$CountryType = 'BS'">Bahamalar</xsl:when>
   <xsl:when test="$CountryType = 'BH'">Bahreyn</xsl:when>
   <xsl:when test="$CountryType = 'BD'">Bangladeş</xsl:when>
   <xsl:when test="$CountryType = 'BB'">Barbados</xsl:when>
   <xsl:when test="$CountryType = 'EH'">Batı Sahra (MA)</xsl:when>
   <xsl:when test="$CountryType = 'BE'">Belçika</xsl:when>
   <xsl:when test="$CountryType = 'BZ'">Belize</xsl:when>
   <xsl:when test="$CountryType = 'BJ'">Benin</xsl:when>
   <xsl:when test="$CountryType = 'BM'">Bermuda</xsl:when>
   <xsl:when test="$CountryType = 'BY'">Beyaz Rusya</xsl:when>
   <xsl:when test="$CountryType = 'BT'">Bhutan</xsl:when>
   <xsl:when test="$CountryType = 'AE'">Birleşik Arap Emirlikleri</xsl:when>
   <xsl:when test="$CountryType = 'US'">Birleşik Devletler</xsl:when>
   <xsl:when test="$CountryType = 'GB'">Birleşik Krallık</xsl:when>
   <xsl:when test="$CountryType = 'BO'">Bolivya</xsl:when>
   <xsl:when test="$CountryType = 'BA'">Bosna-Hersek</xsl:when>
   <xsl:when test="$CountryType = 'BW'">Botsvana</xsl:when>
   <xsl:when test="$CountryType = 'BR'">Brezilya</xsl:when>
   <xsl:when test="$CountryType = 'BN'">Bruney</xsl:when>
   <xsl:when test="$CountryType = 'BG'">Bulgaristan</xsl:when>
   <xsl:when test="$CountryType = 'BF'">Burkina Faso</xsl:when>
   <xsl:when test="$CountryType = 'BI'">Burundi</xsl:when>
   <xsl:when test="$CountryType = 'TD'">Çad</xsl:when>
   <xsl:when test="$CountryType = 'KY'">Cayman Adaları</xsl:when>
   <xsl:when test="$CountryType = 'GI'">Cebelitarık (GB)</xsl:when>
   <xsl:when test="$CountryType = 'CZ'">Çek Cumhuriyeti</xsl:when>
   <xsl:when test="$CountryType = 'DZ'">Cezayir</xsl:when>
   <xsl:when test="$CountryType = 'DJ'">Cibuti</xsl:when>
   <xsl:when test="$CountryType = 'CN'">Çin</xsl:when>
   <xsl:when test="$CountryType = 'DK'">Danimarka</xsl:when>
   <xsl:when test="$CountryType = 'CD'">Demokratik Kongo Cumhuriyeti</xsl:when>
   <xsl:when test="$CountryType = 'TL'">Doğu Timor</xsl:when>
   <xsl:when test="$CountryType = 'DO'">Dominik Cumhuriyeti</xsl:when>
   <xsl:when test="$CountryType = 'DM'">Dominika</xsl:when>
   <xsl:when test="$CountryType = 'EC'">Ekvador</xsl:when>
   <xsl:when test="$CountryType = 'GQ'">Ekvator Ginesi</xsl:when>
   <xsl:when test="$CountryType = 'SV'">El Salvador</xsl:when>
   <xsl:when test="$CountryType = 'ID'">Endonezya</xsl:when>
   <xsl:when test="$CountryType = 'ER'">Eritre</xsl:when>
   <xsl:when test="$CountryType = 'AM'">Ermenistan</xsl:when>
   <xsl:when test="$CountryType = 'MF'">Ermiş Martin (FR)</xsl:when>
   <xsl:when test="$CountryType = 'EE'">Estonya</xsl:when>
   <xsl:when test="$CountryType = 'ET'">Etiyopya</xsl:when>
   <xsl:when test="$CountryType = 'FK'">Falkland Adaları</xsl:when>
   <xsl:when test="$CountryType = 'FO'">Faroe Adaları (DK)</xsl:when>
   <xsl:when test="$CountryType = 'MA'">Fas</xsl:when>
   <xsl:when test="$CountryType = 'FJ'">Fiji</xsl:when>
   <xsl:when test="$CountryType = 'CI'">Fildişi Sahili</xsl:when>
   <xsl:when test="$CountryType = 'PH'">Filipinler</xsl:when>
   <xsl:when test="$CountryType = 'FI'">Finlandiya</xsl:when>
   <xsl:when test="$CountryType = 'FR'">Fransa</xsl:when>
   <xsl:when test="$CountryType = 'GF'">Fransız Guyanası (FR)</xsl:when>
   <xsl:when test="$CountryType = 'PF'">Fransız Polinezyası (FR)</xsl:when>
   <xsl:when test="$CountryType = 'GA'">Gabon</xsl:when>
   <xsl:when test="$CountryType = 'GM'">Gambiya</xsl:when>
   <xsl:when test="$CountryType = 'GH'">Gana</xsl:when>
   <xsl:when test="$CountryType = 'GN'">Gine</xsl:when>
   <xsl:when test="$CountryType = 'GW'">Gine Bissau</xsl:when>
   <xsl:when test="$CountryType = 'GD'">Grenada</xsl:when>
   <xsl:when test="$CountryType = 'GL'">Grönland (DK)</xsl:when>
   <xsl:when test="$CountryType = 'GP'">Guadeloupe (FR)</xsl:when>
   <xsl:when test="$CountryType = 'GT'">Guatemala</xsl:when>
   <xsl:when test="$CountryType = 'GG'">Guernsey (GB)</xsl:when>
   <xsl:when test="$CountryType = 'ZA'">Güney Afrika</xsl:when>
   <xsl:when test="$CountryType = 'KR'">Güney Kore</xsl:when>
   <xsl:when test="$CountryType = 'GE'">Gürcistan</xsl:when>
   <xsl:when test="$CountryType = 'GY'">Guyana</xsl:when>
   <xsl:when test="$CountryType = 'HT'">Haiti</xsl:when>
   <xsl:when test="$CountryType = 'IN'">Hindistan</xsl:when>
   <xsl:when test="$CountryType = 'HR'">Hırvatistan</xsl:when>
   <xsl:when test="$CountryType = 'NL'">Hollanda</xsl:when>
   <xsl:when test="$CountryType = 'HN'">Honduras</xsl:when>
   <xsl:when test="$CountryType = 'HK'">Hong Kong (CN)</xsl:when>
   <xsl:when test="$CountryType = 'VG'">İngiliz Virjin Adaları</xsl:when>
   <xsl:when test="$CountryType = 'IQ'">Irak</xsl:when>
   <xsl:when test="$CountryType = 'IR'">İran</xsl:when>
   <xsl:when test="$CountryType = 'IE'">İrlanda</xsl:when>
   <xsl:when test="$CountryType = 'ES'">İspanya</xsl:when>
   <xsl:when test="$CountryType = 'IL'">İsrail</xsl:when>
   <xsl:when test="$CountryType = 'SE'">İsveç</xsl:when>
   <xsl:when test="$CountryType = 'CH'">İsviçre</xsl:when>
   <xsl:when test="$CountryType = 'IT'">İtalya</xsl:when>
   <xsl:when test="$CountryType = 'IS'">İzlanda</xsl:when>
   <xsl:when test="$CountryType = 'JM'">Jamaika</xsl:when>
   <xsl:when test="$CountryType = 'JP'">Japonya</xsl:when>
   <xsl:when test="$CountryType = 'JE'">Jersey (GB)</xsl:when>
   <xsl:when test="$CountryType = 'KH'">Kamboçya</xsl:when>
   <xsl:when test="$CountryType = 'CM'">Kamerun</xsl:when>
   <xsl:when test="$CountryType = 'CA'">Kanada</xsl:when>
   <xsl:when test="$CountryType = 'ME'">Karadağ</xsl:when>
   <xsl:when test="$CountryType = 'QA'">Katar</xsl:when>
   <xsl:when test="$CountryType = 'KZ'">Kazakistan</xsl:when>
   <xsl:when test="$CountryType = 'KE'">Kenya</xsl:when>
   <xsl:when test="$CountryType = 'CY'">Kıbrıs</xsl:when>
   <xsl:when test="$CountryType = 'KG'">Kırgızistan</xsl:when>
   <xsl:when test="$CountryType = 'KI'">Kiribati</xsl:when>
   <xsl:when test="$CountryType = 'CO'">Kolombiya</xsl:when>
   <xsl:when test="$CountryType = 'KM'">Komorlar</xsl:when>
   <xsl:when test="$CountryType = 'CG'">Kongo Cumhuriyeti</xsl:when>
   <xsl:when test="$CountryType = 'KV'">Kosova (RS)</xsl:when>
   <xsl:when test="$CountryType = 'CR'">Kosta Rika</xsl:when>
   <xsl:when test="$CountryType = 'CU'">Küba</xsl:when>
   <xsl:when test="$CountryType = 'KW'">Kuveyt</xsl:when>
   <xsl:when test="$CountryType = 'KP'">Kuzey Kore</xsl:when>
   <xsl:when test="$CountryType = 'LA'">Laos</xsl:when>
   <xsl:when test="$CountryType = 'LS'">Lesoto</xsl:when>
   <xsl:when test="$CountryType = 'LV'">Letonya</xsl:when>
   <xsl:when test="$CountryType = 'LR'">Liberya</xsl:when>
   <xsl:when test="$CountryType = 'LY'">Libya</xsl:when>
   <xsl:when test="$CountryType = 'LI'">Lihtenştayn</xsl:when>
   <xsl:when test="$CountryType = 'LT'">Litvanya</xsl:when>
   <xsl:when test="$CountryType = 'LB'">Lübnan</xsl:when>
   <xsl:when test="$CountryType = 'LU'">Lüksemburg</xsl:when>
   <xsl:when test="$CountryType = 'HU'">Macaristan</xsl:when>
   <xsl:when test="$CountryType = 'MG'">Madagaskar</xsl:when>
   <xsl:when test="$CountryType = 'MO'">Makao (CN)</xsl:when>
   <xsl:when test="$CountryType = 'MK'">Makedonya</xsl:when>
   <xsl:when test="$CountryType = 'MW'">Malavi</xsl:when>
   <xsl:when test="$CountryType = 'MV'">Maldivler</xsl:when>
   <xsl:when test="$CountryType = 'MY'">Malezya</xsl:when>
   <xsl:when test="$CountryType = 'ML'">Mali</xsl:when>
   <xsl:when test="$CountryType = 'MT'">Malta</xsl:when>
   <xsl:when test="$CountryType = 'IM'">Man Adası (GB)</xsl:when>
   <xsl:when test="$CountryType = 'MH'">Marshall Adaları</xsl:when>
   <xsl:when test="$CountryType = 'MQ'">Martinique (FR)</xsl:when>
   <xsl:when test="$CountryType = 'MU'">Mauritius</xsl:when>
   <xsl:when test="$CountryType = 'YT'">Mayotte (FR)</xsl:when>
   <xsl:when test="$CountryType = 'MX'">Meksika</xsl:when>
   <xsl:when test="$CountryType = 'FM'">Mikronezya</xsl:when>
   <xsl:when test="$CountryType = 'EG'">Mısır</xsl:when>
   <xsl:when test="$CountryType = 'MN'">Moğolistan</xsl:when>
   <xsl:when test="$CountryType = 'MD'">Moldova</xsl:when>
   <xsl:when test="$CountryType = 'MC'">Monako</xsl:when>
   <xsl:when test="$CountryType = 'MR'">Moritanya</xsl:when>
   <xsl:when test="$CountryType = 'MZ'">Mozambik</xsl:when>
   <xsl:when test="$CountryType = 'MM'">Myanmar</xsl:when>
   <xsl:when test="$CountryType = 'NA'">Namibya</xsl:when>
   <xsl:when test="$CountryType = 'NR'">Nauru</xsl:when>
   <xsl:when test="$CountryType = 'NP'">Nepal</xsl:when>
   <xsl:when test="$CountryType = 'NE'">Nijer</xsl:when>
   <xsl:when test="$CountryType = 'NG'">Nijerya</xsl:when>
   <xsl:when test="$CountryType = 'NI'">Nikaragua</xsl:when>
   <xsl:when test="$CountryType = 'NO'">Norveç</xsl:when>
   <xsl:when test="$CountryType = 'CF'">Orta Afrika Cumhuriyeti</xsl:when>
   <xsl:when test="$CountryType = 'UZ'">Özbekistan</xsl:when>
   <xsl:when test="$CountryType = 'PK'">Pakistan</xsl:when>
   <xsl:when test="$CountryType = 'PW'">Palau</xsl:when>
   <xsl:when test="$CountryType = 'PA'">Panama</xsl:when>
   <xsl:when test="$CountryType = 'PG'">Papua Yeni Gine</xsl:when>
   <xsl:when test="$CountryType = 'PY'">Paraguay</xsl:when>
   <xsl:when test="$CountryType = 'PE'">Peru</xsl:when>
   <xsl:when test="$CountryType = 'PL'">Polonya</xsl:when>
   <xsl:when test="$CountryType = 'PT'">Portekiz</xsl:when>
   <xsl:when test="$CountryType = 'PR'">Porto Riko (US)</xsl:when>
   <xsl:when test="$CountryType = 'RE'">Réunion (FR)</xsl:when>
   <xsl:when test="$CountryType = 'RO'">Romanya</xsl:when>
   <xsl:when test="$CountryType = 'RW'">Ruanda</xsl:when>
   <xsl:when test="$CountryType = 'RU'">Rusya</xsl:when>
   <xsl:when test="$CountryType = 'BL'">Saint Barthélemy (FR)</xsl:when>
   <xsl:when test="$CountryType = 'KN'">Saint Kitts ve Nevis</xsl:when>
   <xsl:when test="$CountryType = 'LC'">Saint Lucia</xsl:when>
   <xsl:when test="$CountryType = 'PM'">Saint Pierre ve Miquelon (FR)</xsl:when>
   <xsl:when test="$CountryType = 'VC'">Saint Vincent ve Grenadinler</xsl:when>
   <xsl:when test="$CountryType = 'WS'">Samoa</xsl:when>
   <xsl:when test="$CountryType = 'SM'">San Marino</xsl:when>
   <xsl:when test="$CountryType = 'ST'">São Tomé ve Príncipe</xsl:when>
   <xsl:when test="$CountryType = 'SN'">Senegal</xsl:when>
   <xsl:when test="$CountryType = 'SC'">Seyşeller</xsl:when>
   <xsl:when test="$CountryType = 'SL'">Sierra Leone</xsl:when>
   <xsl:when test="$CountryType = 'CL'">Şili</xsl:when>
   <xsl:when test="$CountryType = 'SG'">Singapur</xsl:when>
   <xsl:when test="$CountryType = 'RS'">Sırbistan</xsl:when>
   <xsl:when test="$CountryType = 'SK'">Slovakya Cumhuriyeti</xsl:when>
   <xsl:when test="$CountryType = 'SI'">Slovenya</xsl:when>
   <xsl:when test="$CountryType = 'SB'">Solomon Adaları</xsl:when>
   <xsl:when test="$CountryType = 'SO'">Somali</xsl:when>
   <xsl:when test="$CountryType = 'SS'">South Sudan</xsl:when>
   <xsl:when test="$CountryType = 'SJ'">Spitsbergen (NO)</xsl:when>
   <xsl:when test="$CountryType = 'LK'">Sri Lanka</xsl:when>
   <xsl:when test="$CountryType = 'SD'">Sudan</xsl:when>
   <xsl:when test="$CountryType = 'SR'">Surinam</xsl:when>
   <xsl:when test="$CountryType = 'SY'">Suriye</xsl:when>
   <xsl:when test="$CountryType = 'SA'">Suudi Arabistan</xsl:when>
   <xsl:when test="$CountryType = 'SZ'">Svaziland</xsl:when>
   <xsl:when test="$CountryType = 'TJ'">Tacikistan</xsl:when>
   <xsl:when test="$CountryType = 'TZ'">Tanzanya</xsl:when>
   <xsl:when test="$CountryType = 'TH'">Tayland</xsl:when>
   <xsl:when test="$CountryType = 'TW'">Tayvan</xsl:when>
   <xsl:when test="$CountryType = 'TG'">Togo</xsl:when>
   <xsl:when test="$CountryType = 'TO'">Tonga</xsl:when>
   <xsl:when test="$CountryType = 'TT'">Trinidad ve Tobago</xsl:when>
   <xsl:when test="$CountryType = 'TN'">Tunus</xsl:when>
   <xsl:when test="$CountryType = 'TR'">Türkiye</xsl:when>
   <xsl:when test="$CountryType = 'TM'">Türkmenistan</xsl:when>
   <xsl:when test="$CountryType = 'TC'">Turks ve Caicos</xsl:when>
   <xsl:when test="$CountryType = 'TV'">Tuvalu</xsl:when>
   <xsl:when test="$CountryType = 'UG'">Uganda</xsl:when>
   <xsl:when test="$CountryType = 'UA'">Ukrayna</xsl:when>
   <xsl:when test="$CountryType = 'OM'">Umman</xsl:when>
   <xsl:when test="$CountryType = 'JO'">Ürdün</xsl:when>
   <xsl:when test="$CountryType = 'UY'">Uruguay</xsl:when>
   <xsl:when test="$CountryType = 'VU'">Vanuatu</xsl:when>
   <xsl:when test="$CountryType = 'VA'">Vatikan</xsl:when>
   <xsl:when test="$CountryType = 'VE'">Venezuela</xsl:when>
   <xsl:when test="$CountryType = 'VN'">Vietnam</xsl:when>
   <xsl:when test="$CountryType = 'WF'">Wallis ve Futuna (FR)</xsl:when>
   <xsl:when test="$CountryType = 'YE'">Yemen</xsl:when>
   <xsl:when test="$CountryType = 'NC'">Yeni Kaledonya (FR)</xsl:when>
   <xsl:when test="$CountryType = 'NZ'">Yeni Zelanda</xsl:when>
   <xsl:when test="$CountryType = 'CV'">Yeşil Burun Adaları</xsl:when>
   <xsl:when test="$CountryType = 'GR'">Yunanistan</xsl:when>
   <xsl:when test="$CountryType = 'ZM'">Zambiya</xsl:when>
   <xsl:when test="$CountryType = 'ZW'">Zimbabve</xsl:when>
   <xsl:otherwise>
    <xsl:value-of select="$CountryType"/>
   </xsl:otherwise>
  </xsl:choose>

 </xsl:template>

</xsl:stylesheet>

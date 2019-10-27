import { Card } from 'antd';
import React, { PureComponent } from 'react';
import { BankInfoModel, CompanyInfoModel, DocumentNotesModel, ThemeModel } from '../../../../../common/models';
import './style.scss';

interface IProps {
  selected: ThemeModel;
  logo: any;
  signature: any;
  bankInfo: Array<BankInfoModel>;
  companyInfo: CompanyInfoModel;
  documentNotes: DocumentNotesModel;
}

class FirstInvoiceHtml extends PureComponent<IProps> {
  render() {
    const bankInfoList = this.props.bankInfo.map(data => {
      return (
        <tr>
          <td>{data.bankName}</td>
          <td>{data.branch}</td>
          <td>{data.branchCode}</td>
          <td>{data.accountCode}</td>
          <td>{data.accountType}</td>
          <td>{data.iban}</td>
          <td>{data.accountName}</td>
        </tr>
      );
    });

    const { companyInfo, documentNotes } = this.props;

    return (
      <Card className="themes">
     <div className="page_container">
        <table className="pw fatura_head_table" style={{width:800}} cellPadding="0px">
            <tbody>
                <tr>
                    <td>
                        <div>
                            <img src="data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAAAeAAD/4QOZaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjMtYzAxMSA2Ni4xNDU2NjEsIDIwMTIvMDIvMDYtMTQ6NTY6MjcgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6QzQyOERCNDBCNENGMTFFOEFCNzJDNUVBNTA3MEZBQzkiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6QzQyOERCM0ZCNENGMTFFOEFCNzJDNUVBNTA3MEZBQzkiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiBXaW5kb3dzIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InV1aWQ6ZmFmNWJkZDUtYmEzZC0xMWRhLWFkMzEtZDMzZDc1MTgyZjFiIiBzdFJlZjpkb2N1bWVudElEPSIyMUIyNjFBNkY0MThFOUM0NTVGOTA4MjAzNkVFQzg5OSIvPiA8ZGM6Y3JlYXRvcj4gPHJkZjpTZXE+IDxyZGY6bGk+RVJERU0gQkFTPC9yZGY6bGk+IDwvcmRmOlNlcT4gPC9kYzpj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" className="logo" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div className="firma_adi">NES BİLGİ VERİ TEKNOLOJİLERİ VE SAKLAMA HİZMETLERİ A.Ş.</div>
                        <div className="firma_adresi">Barbaros Mah. Ak Zambak Sok Uphill Towers A Blok Kat:16 No:92   34746 <br/>Ataşehir / İstanbul</div>
                        <div className="cerceve_ust">
                            <div className="pad6px">
                                <span className="cerceve_box corner_tl"></span>
                                <span className="cerceve_box corner_tr"></span>
                            </div>
                        </div>
                        <div className="cerceve_orta">
                            <div className="musteri_adi">ORNEK HİZMETLERİ A.Ş.</div>
                            <div className="musteri_adres">Ornek Mah. Ornek Sok Ornek Towers B Blok Kat:1 No:1&nbsp;&nbsp;<br/>Ataşehir&nbsp;/&nbsp;İstanbul<div><span className="pair_key">E-Posta</span><span className="pair_seperator">:</span><span className="pair_value">www.ornek.com.tr</span></div></div>
                            <div className="musteri_vd">
                                <div>
                                    <span className="pair_key">Vergi Dairesi</span>
                                    <span className="pair_seperator">:</span>
                                    <span className="pair_value">Kozyatağı</span>
                                </div>
                                <div>
                                    <span className="pair_key">Vergi No</span>
                                    <span className="pair_seperator">:</span>
                                    <span className="pair_value">1111111111</span>
                                </div>
                            </div>
                        </div>
                        <div className="cerceve_alt">
                            <span className="cerceve_box corner_bl"></span>
                            <span className="cerceve_box corner_br"></span>
                        </div>
                    </td>
                    <td>
                        <div>
                            <div className="gib_logo_container">
                                <img src="" className="gib_logo" />
                            </div>
                            <div className="efatura_text">E-FATURA</div>
                        </div>
                    </td>
                    <td>
                        <div className="cerceve">
                            <div className="pad6px">
                                <div className="firma_vd">
                                    <div>
                                        <span className="pair_key">Vergi No</span>
                                        <span className="pair_seperator">:</span>
                                        <span className="pair_value">2222222222</span>
                                    </div>
                                    <div>
                                        <span className="pair_key">Vergi Dairesi</span>
                                        <span className="pair_seperator">:</span>
                                        <span className="pair_value">Ataşehir</span>
                                    </div>
                                    <div>
                                        <span className="pair_key">Ticaret Sicil No</span>
                                        <span className="pair_seperator">:</span>
                                        <span className="pair_value">4444444444</span>
                                    </div>
                                    <div>
                                        <span className="pair_key">Mersis No</span>
                                        <span className="pair_seperator">:</span>
                                        <span className="pair_value">3333333333</span>
                                    </div>
                                </div>
                                <div className="firma_tel"><div>
                                    <span className="pair_key">Tel</span>
                                    <span className="pair_seperator">:</span>
                                    <span className="pair_value">+ 90 216 688 51 00</span>
                                </div>
                                <div>
                                    <span className="pair_key">E-Posta</span>
                                    <span className="pair_seperator">:</span>
                                    <span className="pair_value">
                                        <a href="mailto:destek@nesbilgi.com.tr">destek@nesbilgi.com.tr</a>
                                    </span>
                                </div>
                                <div>
                                    <span className="pair_key">İnternet Sitesi</span><span className="pair_seperator">:</span>
                                    <span className="pair_value">
                                        <a href="http://www.nesbilgi.com.tr">www.nesbilgi.com.tr</a>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div className="cerceve">
                        <div className="pad6px">
                            <div className="fatura_bilgi">
                                <div>
                                    <span className="pair_key">Versiyon</span>
                                    <span className="pair_seperator">:</span>
                                    <span className="pair_value">TR1.2 / UBL 2.1</span>
                                </div>
                                <div>
                                    <span className="pair_key">Senaryo</span>
                                    <span className="pair_seperator">:</span>
                                    <span className="pair_value">TEMELFATURA</span>
                                </div>
                                <div>
                                    <span className="pair_key">Fatura Tipi</span>
                                    <span className="pair_seperator">:</span>
                                    <span className="pair_value">SATIS</span>
                                </div>
                                <div>
                                    <span className="pair_key">Fatura No</span>
                                    <span className="pair_seperator">:</span>
                                    <span className="pair_value">NES2019000000001</span>
                                </div>
                                <div>
                                    <span className="pair_key">Fatura Tarihi</span>
                                    <span className="pair_seperator">:</span>
                                    <span className="pair_value">15-10-2019</span>
                                </div>
                                <div>
                                    <span className="pair_key">Sipariş No</span>
                                    <span className="pair_seperator">:</span>
                                    <span className="pair_value">204174297498</span>
                                </div>
                                <div>
                                    <span className="pair_key">Sipariş Tarihi</span>
                                    <span className="pair_seperator">:</span>
                                    <span className="pair_value">2019-10-15</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
        </tbody>
    </table>
    <div className="tablo_bosluk">

    </div>
    <table style={{border:0}} id="tablo_satir" cellPadding={0} className="tablo_satir">
        <tbody>
            <tr className="tr_baslik">
                <td className="satir_sira kolon_baslik">
                    <span>#</span>
                </td>
                <td className="satir_kod kolon_baslik">
                    <span>Kod</span>
                </td>
                <td className="satir_mal kolon_baslik">
                    <span>Mal/Hizmet</span>
                </td>
                <td className="satir_miktar kolon_baslik">
                    <span>Miktar</span>
                </td>
                <td className="satir_bfiyat kolon_baslik">
                    <span>Birim Fiyat</span>
                </td>
                <td className="satir_iskonto_oran kolon_baslik">
                    <span>İskonto Oranı</span>
                </td>
                <td className="satir_iskonto_tutar kolon_baslik">
                    <span>İskonto Tutar</span>
                </td>
                <td className="satir_kdv_oran kolon_baslik">
                    <span>KDV Oranı</span>
                </td>
                <td className="satir_kdv_tutar kolon_baslik">
                    <span>KDV Tutarı</span>
                </td>
                <td className="satir_vergiler kolon_baslik">
                    <span>Diğer Vergiler</span>
                </td>
                <td className="satir_toplam kolon_baslik">
                    <span>Toplam</span>
                </td>
            </tr>
            <tr className="satir odd">
                <td className="satir_sira kolon_deger">
                    <div className="span_satir_sira">1</div>
                </td>
                <td className="satir_kod kolon_deger">
                    <div className="span_satir_kod">
                        <div>test</div>
                    </div>
                </td>
                <td className="satir_mal kolon_deger">
                    <div className="span_satir_mal">HİZMET BEDELİ</div>
                </td>
                <td className="satir_miktar kolon_deger">
                    <div className="span_satir_miktar">
                        <span>1 Adet</span>
                    </div>
                </td>
                <td className="satir_bfiyat kolon_deger">
                    <div className="span_satir_bfiyat">56,42 TL</div>
                </td>
                <td className="satir_iskonto_oran kolon_deger">
                    <div className="span_satir_iskonto_oran">

                    </div>
                </td>
                <td className="satir_iskonto_tutar kolon_deger">
                    <div className="span_satir_iskonto_tutar"></div>
                </td>
                <td className="satir_kdv_oran kolon_deger">
                    <div className="span_satir_kdv_oran">% 18</div>
                </td>
                <td className="satir_kdv_tutar kolon_deger">
                    <div className="span_satir_kdv_tutar">20,31 TL</div>
                </td>
                <td className="satir_vergiler kolon_deger">
                    <div className="span_satir_vergiler">

                    </div>
                </td>
                <td className="satir_toplam kolon_deger">
                    <div className="span_satir_toplam">112,84 TL</div>
                </td>
            </tr>
        </tbody>
    </table>
    <table style={{border:0}} id="alt_toplam_tablosu" cellPadding="0" className="alt_toplam_tablosu">
        <tbody>
            <tr>
                <td style={{width:'50%'}} className="alt_toplam_col1"
                ><div className="myframe ettn_container">
                    <span className="ettn">ETTN : f1111111-111c-1111-1111-111111111111</span>
                </div>
            </td>
            <td style={{width:'50%'}} className="alt_toplam_col2">
                <div className="myframe">
                    <div className="toplam_satiri">
                        <span className="alt_toplam_key">Mal Hizmet Toplam Tutarı</span>
                        <span className="alt_toplam_sep">:</span>
                        <span className="alt_toplam_val">112,84&nbsp;TL</span>
                    </div>
                    <div className="toplam_satiri">
                        <span className="alt_toplam_key">Hesaplanan KDV ( % 18 ) </span>
                        <span className="alt_toplam_sep">:</span>
                        <span className="alt_toplam_val"> 20,31&nbsp;TL</span>
                    </div>
                    <div className="toplam_satiri">
                        <span className="alt_toplam_key">Vergiler Dahil Toplam Tutar</span>
                        <span className="alt_toplam_sep">:</span>
                        <span className="alt_toplam_val">133,15&nbsp;TL</span>
                    </div>
                    <div className="toplam_satiri">
                        <span className="alt_toplam_key">Ödenecek Tutar</span>
                        <span className="alt_toplam_sep">:</span>
                        <span className="alt_toplam_val">133,15 &nbsp;TL</span>
                    </div>
                </div>
            </td>
        </tr>
    </tbody>
</table>
<div className="fatura_not_container_w_box">
  İş  bu  faturadaki mal  alıcıya iş yerinde teslim edildiğinden 213 sayılı V.U.K.nun 230/5. maddesi gereğince sevk irsaliyesi düzenlenmemiştir.
        <br/>  Fiş Düzenlenme Saati =  12:24:19<br/>
</div>
<div className="fatura_not_container_w_box">
  <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Genel Açıklamalar</b>
  <br/>
  <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
  YALNIZ : YÜZOTUZÜç TL ONBEŞ Kr.
  <br/>
  <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>##PaymentUrl##http://google.com<br/>
  <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
  Kargo Takip Kodu : dgfdhdshh<br/>
</div>
</div>
      </Card>
    );
  }
}

export default FirstInvoiceHtml;

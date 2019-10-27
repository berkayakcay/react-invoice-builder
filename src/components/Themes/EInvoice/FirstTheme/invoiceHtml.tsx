import { Card } from 'antd';
import React, { PureComponent } from 'react';

export default class EInvoiceFirstHtml extends PureComponent {
    render() {
        return (
            <Card>
            <table style={{borderColor:'#0017ff', border:0, width:800}} cellPadding={0} >
                <tbody>
                    <tr>
                        <td style={{width:'40%'}}><br />
                            <div className="hr" style={{marginBottom:5}}></div>
                            <table style={{border:0, width:'100%'}}>
                                <tbody>
                                    <tr style={{textAlign:'left'}}>
                                        <td align="left">NES BİLGİ VERİ TEKNOLOJİLERİ VE SAKLAMA HİZ. A.Ş.&nbsp;&nbsp;</td>
                                    </tr>
                                    <tr style={{textAlign:'left'}}>
                                        <td style={{textAlign:'left'}}>Barbaros Mah. Ak Zambak Sok Uphill Towers A Blok Kat:16
                                            No:92&nbsp;<br />34000&nbsp;HOPA/ İSTANBUL&nbsp;</td>
                                    </tr>
                                    <tr style={{textAlign:'left'}}>
                                        <td align="left">Tel: 0 216 688 51 00&nbsp;</td>
                                    </tr>
                                    <tr style={{textAlign:'left'}}>
                                        <td>Web Sitesi: http://www.nesbilgi.com.tr/</td>
                                    </tr>
                                    <tr style={{textAlign:'left'}}>
                                        <td>E-Posta: destek@nesbilgi.com.tr</td>
                                    </tr>
                                    <tr style={{textAlign:'left'}}>
                                        <td align="left">Vergi Dairesi: İSTANBUL&nbsp; </td>
                                    </tr>
                                    <tr style={{textAlign:'left'}}>
                                        <td>TCKN: 2222222222</td>
                                    </tr>
                                    <tr style={{textAlign:'left'}}>
                                        <td>MERSISNO: 1212121212</td>
                                    </tr>
                                    <tr style={{textAlign:'left'}}>
                                        <td>TICARETSICILNO: 3636363636</td>
                                    </tr>
                                </tbody>
                            </table>
                            <div className="hr" style={{marginBottom:5}}></div>
                        </td>
                        <td style={{width: '20%'}} valign='middle'><br /><br /><img style={{width:91}}
                                alt="E-Fatura Logo"
                                src="" />
                            <h1><span style={{fontWeight:'bold'}}>e-Fatura</span></h1>
                        </td>
                        <td style={{verticalAlign: 'middle', textAlign:'center', width:'40%'}}></td>
                    </tr>
                    <tr style={{height:118}}>
                        <td style={{width: '40%'}} align="right" valign="bottom">
                            <div className="hr" style={{marginBottom:5,marginTop:10}}></div>
                            <table>
                                <tbody>
                                    <tr>
                                        <td style={{width:469}} align="left"><span style={{fontWeight:'bold'}}>SAYIN</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style={{width:469}} align="left">Örnek Firma San. Tic. A.Ş.<br /></td>
                                    </tr>
                                    <tr>
                                        <td style={{width:469}} align="left">Ornek Mah. Ornek Cad. Ornek Sok.
                                            No:140/15&nbsp;<br /><br />16159&nbsp;Nilüfer/ Bursa&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>E-Posta: ornek@ornek.com.tr</td>
                                    </tr>
                                    <tr>
                                        <td style={{width:469}} align="left">Tel: 0 555 555 55 55&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>Vergi Dairesi: Nilüfer</td>
                                    </tr>
                                    <tr>
                                        <td>VKN: 1111111111</td>
                                    </tr>
                                    <tr>
                                        <td>MERSISNO: 2222222222</td>
                                    </tr>
                                    <tr>
                                        <td>TICARETSICILNO: 3333333333</td>
                                    </tr>
                                </tbody>
                            </table>
                            <div className="hr" style={{marginTop:5}}></div>
                        </td>
                        <td></td>
                        <td valign="bottom" colSpan={2}>
                            <table id="despatchTable">
                                <tbody>
                                    <tr>
                                        <td style={{width:115}} align="left"><span style={{fontWeight:'bold'}}>Özelleştirme
                                                No:</span></td>
                                        <td style={{width:110}} align="left">TR1.2</td>
                                    </tr>
                                    <tr style={{height:13}}>
                                        <td align="left"><span style={{fontWeight:'bold'}}>Senaryo:</span></td>
                                        <td align="left">TEMELFATURA</td>
                                    </tr>
                                    <tr style={{height:13}}>
                                        <td align="left"><span style={{fontWeight:'bold'}}>Fatura Tipi:</span></td>
                                        <td align="left">SATIS</td>
                                    </tr>
                                    <tr style={{height:13}}>
                                        <td align="left"><span style={{fontWeight:'bold'}}>Fatura No:</span></td>
                                        <td align="left">NBG2019000000001</td>
                                    </tr>
                                    <tr style={{height:13}}>
                                        <td align="left"><span style={{fontWeight:'bold'}}>Fatura Tarihi:</span></td>
                                        <td align="left">27-12-2016</td>
                                    </tr>
                                    <tr style={{height:13}}>
                                        <td align="left"><span style={{fontWeight:'bold'}}>Düzenlenme Saati:</span></td>
                                        <td align="left">12:24:19</td>
                                    </tr>
                                    <tr style={{height:13}}>
                                        <td align="left"><span style={{fontWeight:'bold'}}>Sipariş No:</span></td>
                                        <td align="left">444444444444</td>
                                    </tr>
                                    <tr style={{height:13}}>
                                        <td align="left"><span style={{fontWeight:'bold'}}>Sipariş Tarihi:</span></td>
                                        <td align="left">27-12-2016</td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" id="ettnTable"><span
                                style={{fontWeight:'bold'}}>ETTN:&nbsp;</span>f3a01b24-2b9c-4d1e-b17b-FOL4587V4H58</td>
                    </tr>
                </tbody>
            </table>
            <div id="lineTableAligner"><span>&nbsp;</span></div>
            <div className="malHizmetTablosu" style={{maxWidth:800}}>
                <table id="lineTable" style={{width:800}}>
                    <tbody>
                        <tr>
                            <th>Sıra No</th>
                            <th className="alignLeft">Mal Hizmet</th>
                            <th className="alignLeft">Satıcı Ürün Kodu</th>
                            <th>Miktar</th>
                            <th>Birim Fiyat</th>
                            <th>KDV Oranı</th>
                            <th>KDV Tutarı</th>
                            <th>Mal Hizmet Tutarı</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td className="wrap">E-FATURA KONTÖR BEDELİ</td>
                            <td><span>test</span></td>
                            <td>2 Adet</td>
                            <td>56,42 TL</td>
                            <td> %18,00</td>
                            <td> 20,31 TL</td>
                            <td>112,84 TL</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div style={{width:800, marginTop:10}}>
                <table id="budgetContainerTable" style={{width:800}}>
                    <tr>
                        <td style={{widows:200}}><span style={{fontWeight:'bold'}}>Mal Hizmet Toplam Tutarı</span></td>
                        <td style={{widows:80}} >112,84 TL</td>
                    </tr>
                    <tr >
                        <td style={{widows:200}}><span style={{fontWeight:'bold'}}>Toplam İskonto</span></td>
                        <td style={{widows:81}}>0,00 TL</td>
                    </tr>
                    <tr >
                        <td><span style={{fontWeight:'bold'}}>Hesaplanan KDV(%18)</span></td>
                        <td style={{widows:82}}> 20,31 TL</td>
                    </tr>
                    <tr >
                        <td style={{widows:200}}><span style={{fontWeight:'bold'}}>Vergiler Dahil Toplam Tutar</span></td>
                        <td style={{widows:82}}>133,15 TL</td>
                    </tr>
                    <tr >
                        <td style={{widows:200}}><span style={{fontWeight:'bold'}}>Ödenecek Tutar</span></td>
                        <td style={{widows:82}}>133,15 TL</td>
                    </tr>
                </table>
            </div>
            <div style={{clear: 'both'}}></div>
            <div className="hr" style={{clear: 'both',width:800, marginTop:10}}></div>
            <table id="notesTable" style={{width:800}}>
                <tbody>
                    <tr>
                        <td id="notesTableTd"><b>Not: </b>YALNIZ : YÜZOTUZÜç TL ONBEŞ Kr.<br /><b>Not:
                            </b>##PaymentUrl##http://google.com<br /><b>Not: </b>Kargo Takip Kodu : dgfdhdshh<br /></td>
                    </tr>
                </tbody>
            </table>
            <div className="hr" style={{clear: 'both', width: 800}}></div>
        </Card>
        )
    }
}

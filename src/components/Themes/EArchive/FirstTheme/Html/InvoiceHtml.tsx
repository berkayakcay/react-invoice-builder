import { Card } from 'antd';
import React, { PureComponent } from 'react';
import { BankInfoModel, CompanyInfoModel, DocumentNotesModel, ThemeModel } from '../../../../../common/models';
import { GIBLogo } from '../../../../GIBLogo';

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
      <Card className="earchiveFirstThemes">
        <table style={{ borderColor: '#0001ff', border: 0, width: 800 }} cellPadding={0}>
          <tbody>
            <tr>
              <td style={{ width: '40%' }}>
                <br />
                <hr />
                <table style={{ border: 0, width: '100%' }}>
                  <tbody>
                    <tr>
                      <td align="left">
                        {this.props.companyInfo.name}
                        <br />
                      </td>
                    </tr>
                    <tr>
                      <td align="left">
                        {companyInfo.address}&nbsp;No:{companyInfo.buildingNumber}/{companyInfo.doorNumber}
                      </td>
                    </tr>
                    <tr>
                      <td align="left">
                        {companyInfo.district}-{companyInfo.city}/{companyInfo.country} &nbsp;
                        {companyInfo.postalCode && <>Posta Kodu:{companyInfo.postalCode}</>}
                      </td>
                    </tr>
                    {companyInfo.phone && (
                      <tr>
                        <td align="left">
                          {companyInfo.phone && <>Tel: {companyInfo.phone}</>}{' '}
                          {companyInfo.fax && <>Fax: {companyInfo.fax}</>}
                        </td>
                      </tr>
                    )}
                    {companyInfo.webSite && (
                      <tr>
                        <td align="left">Web Sitesi: {companyInfo.webSite}</td>
                      </tr>
                    )}
                    {companyInfo.mersisNumber && (
                      <tr>
                        <td>
                          {companyInfo.mersisNumber && <>Mersis No: {companyInfo.mersisNumber}</>}{' '}
                          {companyInfo.tradeRegistryNumber && <>Ticaret Sicil No: {companyInfo.tradeRegistryNumber}</>}
                        </td>
                      </tr>
                    )}
                    <tr>
                      <td align="left">Vergi Dairesi: {companyInfo.taxOffice}</td>
                    </tr>
                    <tr>
                      <td>VKN: {companyInfo.registerNumber}</td>
                    </tr>
                  </tbody>
                </table>
                <hr />
              </td>
              <td style={{ width: '20%' }} align="center" valign="middle">
                <br />
                <br />
                <img style={{ width: 91 }} alt="E-Fatura Logo" src={GIBLogo} />
                <h1>
                  <span style={{ fontWeight: 'bold' }}>e-Arşiv Fatura</span>
                </h1>
              </td>
              <td style={{ textAlign: 'center', width: '40%', paddingTop: 20 }}>
                <img style={{ minWidth: 150, minHeight: 150, maxWidth: 150, maxHeight: 150 }} src={this.props.logo} />
              </td>
            </tr>
            <tr style={{ height: 118 }}>
              <td style={{ width: '40%' }} align="right" valign="bottom">
                <table id="customerPartyTable" style={{ border: 0, height: '50%' }}>
                  <tbody>
                    <tr style={{ height: 71 }}>
                      <td>
                        <hr />
                        <table style={{ border: 0 }}>
                          <tbody>
                            <tr>
                              <td style={{ width: 469 }} align="left">
                                <span style={{ fontWeight: 'bold' }}>SAYIN</span>
                              </td>
                            </tr>
                            <tr>
                              <td style={{ width: 469 }} align="left">
                                DENEME&nbsp;REKLAM&nbsp;SAN&nbsp;TIC&nbsp;LTD&nbsp;ŞTİ&nbsp;
                              </td>
                            </tr>
                            <tr>
                              <td style={{ width: 469 }} align="left">
                                DENEME MAH. 55&nbsp;
                                <br />
                                <br />
                                ATAŞEHİR/ İSTANBUL&nbsp;
                              </td>
                            </tr>
                            <tr>
                              <td>TCKN: 1111111111</td>
                            </tr>
                          </tbody>
                        </table>
                        <hr />
                      </td>
                    </tr>
                  </tbody>
                </table>
                <br />
              </td>
              <td align="center" style={{ textAlign: 'center', width: '20%' }} valign="bottom">
                <img
                  style={{ minWidth: 100, minHeight: 100, maxWidth: 100, maxHeight: 100, marginBottom: 30 }}
                  src={this.props.signature}
                />
              </td>
              <td align="right" style={{ textAlign: 'right', width: '40%' }} valign="bottom">
                <table style={{ border: 1, height: 13 }} id="despatchTable">
                  <tbody>
                    <tr>
                      <td style={{ width: 185 }} align="left">
                        <span style={{ fontWeight: 'bold' }}>Özelleştirme No:</span>
                      </td>
                      <td style={{ width: 110 }} align="left">
                        TR1.2
                      </td>
                    </tr>
                    <tr style={{ height: 13 }}>
                      <td align="left">
                        <span style={{ fontWeight: 'bold' }}>Fatura Tipi:</span>
                      </td>
                      <td align="left">SATIS</td>
                    </tr>
                    <tr style={{ height: 13 }}>
                      <td align="left">
                        <span style={{ fontWeight: 'bold' }}>Fatura No:</span>
                      </td>
                      <td align="left">MER2019000000331</td>
                    </tr>
                    <tr style={{ height: 13 }}>
                      <td align="left">
                        <span style={{ fontWeight: 'bold' }}>Fatura Tarihi:</span>
                      </td>
                      <td align="left">16-08-2019</td>
                    </tr>
                    <tr style={{ height: 13 }}>
                      <td align="left">
                        <span style={{ fontWeight: 'bold' }}>Düzenlenme Saati:</span>
                      </td>
                      <td align="left">11:20:36</td>
                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>
            <tr></tr>
          </tbody>
        </table>
        <table id="ettnTable">
          <tbody>
            <tr style={{ height: 13 }}>
              <td align="left" valign="top">
                <span style={{ fontWeight: 'bold' }}>ETTN:</span>
              </td>
              <td align="left" style={{ width: 240 }}>
                15890dd3-b54a-42e8-ba15-6746dffe3d6a
              </td>
            </tr>
          </tbody>
        </table>
        <div id="lineTableAligner">
          <span>&nbsp;</span>
        </div>
        <div className="malHizmetTablosu">
          <table id="lineTable">
            <tbody>
              <tr>
                <th>Sıra No</th>
                <th className="alignLeft">Mal Hizmet</th>
                <th>Miktar</th>
                <th>Birim Fiyat</th>
                <th>KDV Oranı</th>
                <th>KDV Tutarı</th>
                <th>Mal Hizmet Tutarı</th>
              </tr>
              <tr>
                <td>
                  <span>1</span>
                </td>
                <td className="wrap">
                  <span>ANGORA TOUCH 3982A 100*300 HALI</span>
                </td>
                <td>
                  <span>1,0 </span>
                </td>
                <td>
                  <span>&nbsp;92,5926 TL</span>
                </td>
                <td>
                  <span>&nbsp; %8,00</span>
                </td>
                <td>
                  <span>&nbsp; 7,41 TL</span>
                </td>
                <td>
                  <span>&nbsp;92,59 TL</span>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
        <table id="budgetContainerTable" style={{ border: 0, width: 800 }}>
          <tbody>
            <tr id="budgetContainerTr">
              <td id="budgetContainerDummyTd"></td>
              <td id="lineTableBudgetTd" style={{ border: '1px solid #CCC', width: 200 }} align="right">
                <span style={{ fontWeight: 'bold' }}>Mal Hizmet Toplam Tutarı</span>
              </td>
              <td
                id="lineTableBudgetTd"
                style={{ width: 81, border: '1px solid #CCC', borderLeft: 'none' }}
                align="right"
              >
                92,59 TL
              </td>
            </tr>
            <tr id="budgetContainerTr">
              <td id="budgetContainerDummyTd"></td>
              <td id="lineTableBudgetTd" align="right" style={{ width: 200, border: '1px solid #CCC' }}>
                <span style={{ fontWeight: 'bold' }}>Toplam İskonto</span>
              </td>
              <td
                id="lineTableBudgetTd"
                style={{ width: 81, border: '1px solid #CCC', borderLeft: 'none', borderTop: 'none' }}
                align="right"
              >
                0,00 TL
              </td>
            </tr>
            <tr id="budgetContainerTr">
              <td id="budgetContainerDummyTd"></td>
              <td
                id="lineTableBudgetTd"
                style={{ width: 221, border: '1px solid #CCC', borderTop: 'none' }}
                align="right"
              >
                <span style={{ fontWeight: 'bold' }}>Hesaplanan KDV(%8.00)</span>
              </td>
              <td
                id="lineTableBudgetTd"
                style={{ width: 82, border: '1px solid #CCC', borderLeft: 'none', borderTop: 'none' }}
                align="right"
              >
                {' '}
                7,41 TL
              </td>
            </tr>
            <tr id="budgetContainerTr">
              <td id="budgetContainerDummyTd"></td>
              <td
                id="lineTableBudgetTd"
                style={{ width: 200, border: '1px solid #CCC', borderTop: 'none' }}
                align="right"
              >
                <span style={{ fontWeight: 'bold' }}>Vergiler Dahil Toplam Tutar</span>
              </td>
              <td
                id="lineTableBudgetTd"
                style={{ width: 82, border: '1px solid #CCC', borderLeft: 'none', borderTop: 'none' }}
                align="right"
              >
                100,00 TL
              </td>
            </tr>
            <tr id="budgetContainerTr">
              <td id="budgetContainerDummyTd"></td>
              <td
                id="lineTableBudgetTd"
                style={{ width: 200, border: '1px solid #CCC', borderTop: 'none' }}
                align="right"
              >
                <span style={{ fontWeight: 'bold' }}>Ödenecek Tutar</span>
              </td>
              <td
                id="lineTableBudgetTd"
                style={{ width: 82, border: '1px solid #CCC', borderLeft: 'none', borderTop: 'none' }}
                align="right"
              >
                100,00 TL
              </td>
            </tr>
          </tbody>
        </table>
        {this.props.bankInfo.length > 0 && (
          <table id="bankaHesap" style={{ width: 800, marginTop: 10 }}>
            <thead>
              <tr>
                <th style={{ width: 120 }}>Banka Adı</th>
                <th style={{ width: 100 }}>Şube</th>
                <th style={{ width: 50 }}>Şube Kodu</th>
                <th style={{ width: 100 }}>Hesap No</th>
                <th style={{ width: 50 }}>Hesap Türü</th>
                <th style={{ width: 240 }}>İban</th>
                <th style={{ width: 150 }}>Hesap Adı</th>
              </tr>
            </thead>
            <tbody>{bankInfoList}</tbody>
          </table>
        )}

        <div style={{ width: 800 }}>
          <hr />
        </div>
        <table id="notesTable">
          <tbody>
            <tr>
              <td id="notesTableTd">
                <b>*</b>YALNIZ : YÜZ TL SIFIR Kr.
                <br />
              </td>
            </tr>
            {documentNotes.firstNote && (
              <tr>
                <td id="notesTableTd">
                  <b>*</b>
                  {documentNotes.firstNote}
                  <br />
                </td>
              </tr>
            )}
            {documentNotes.secondNote && (
              <tr>
                <td id="notesTableTd">
                  <b>*</b>
                  {documentNotes.secondNote}
                  <br />
                </td>
              </tr>
            )}
            {documentNotes.thirdNote && (
              <tr>
                <td id="notesTableTd">
                  <b>*</b>
                  {documentNotes.thirdNote}
                  <br />
                </td>
              </tr>
            )}
          </tbody>
        </table>
        <div style={{ clear: 'both' }}></div>
        <div id="eArsivAlan" style={{ marginTop: 10 }}>
          <div style={{ width: 800 }}>
            <hr />
          </div>
          <div id="irsaliye" style={{ marginTop: 10 }}></div>
          <div id="elektronikOrtam" style={{ width: 800 }}></div>
          <div id="elektronikOrtamDogrula" style={{ width: 800 }}>
            <div style={{ width: 'auto', marginBottom: 10, marginTop: 3 }}>
              Bu faturayı elekronik olarak görmek ve doğrulamak için{' '}
              <a target="_blank" style={{ fontWeight: 'bold' }} href="http://e-fatura.link">
                <u>e-fatura.link</u>
              </a>{' '}
              adresini ziyaret ediniz.
            </div>
          </div>
        </div>
      </Card>
    );
  }
}

export default FirstInvoiceHtml;

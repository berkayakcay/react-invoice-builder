import { Button } from 'antd';
import React, { PureComponent } from 'react';
import { connect } from 'react-redux';
import { Dispatch } from 'redux';
import { BankInfoModel, CompanyInfoModel, DocumentNotesModel, ThemeModel } from '../../common/models';
import EArchiveFirstInvoiceHtml from '../../components/Themes/EArchive/FirstTheme/Html/InvoiceHtml';
import EArchiveFourthInvoiceHtml from '../../components/Themes/EArchive/FourthTheme/Html/InvoiceHtml';
import EArchiveSecondInvoiceHtml from '../../components/Themes/EArchive/SecondTheme/Html/InvoiceHtml';
import EArchiveThirdInvoiceHtml from '../../components/Themes/EArchive/ThirdTheme/Html/InvoiceHtml';
import EInvoiceFirstHtml from '../../components/Themes/EInvoice/FirstTheme/invoiceHtml';
import EInvoiceFirstInvoiceHtml from '../../components/Themes/EInvoice/SecondTheme/Html/InvoiceHtml';
import { selectedProduct } from './actions';
import './style.scss';

interface IProps {
  product: boolean;
  selected: ThemeModel;
  logo: any;
  signature: any;
  bankInfo: Array<BankInfoModel>;
  companyInfo: CompanyInfoModel;
  documentNotes: DocumentNotesModel;
}

interface IPropsFromDispatch {
  selectedProduct: typeof selectedProduct;
}

type AllProps = IProps & IPropsFromDispatch;

class HtmlContent extends PureComponent<AllProps> {
  render() {
    const props = this.props;
    return (
      <React.Fragment>
        <Button.Group style={{ marginBottom: 10 }}>
          <Button onClick={() => this.props.selectedProduct(true)} defaultChecked={true} type="danger" icon="file">
            E-FATURA
          </Button>
          <Button onClick={() => this.props.selectedProduct(false)} type="primary" icon="file">
            E-ARŞİV
          </Button>
        </Button.Group>
        {props.product === false
          ? (function() {
              switch (props.selected.Theme) {
                case 1:
                  return (
                    <EArchiveFirstInvoiceHtml
                      selected={props.selected}
                      logo={props.logo}
                      signature={props.signature}
                      bankInfo={props.bankInfo}
                      companyInfo={props.companyInfo}
                      documentNotes={props.documentNotes}
                    />
                  );
                case 2:
                  return (
                    <EArchiveSecondInvoiceHtml
                      selected={props.selected}
                      logo={props.logo}
                      signature={props.signature}
                      bankInfo={props.bankInfo}
                      companyInfo={props.companyInfo}
                      documentNotes={props.documentNotes}
                    />
                  );
                case 3:
                  return (
                    <EArchiveThirdInvoiceHtml
                      selected={props.selected}
                      logo={props.logo}
                      signature={props.signature}
                      bankInfo={props.bankInfo}
                      companyInfo={props.companyInfo}
                      documentNotes={props.documentNotes}
                    />
                  );
                case 4:
                  return (
                    <EArchiveFourthInvoiceHtml
                      selected={props.selected}
                      logo={props.logo}
                      signature={props.signature}
                      bankInfo={props.bankInfo}
                      companyInfo={props.companyInfo}
                      documentNotes={props.documentNotes}
                    />
                  );
                default:
                  return (
                    <EArchiveFirstInvoiceHtml
                      selected={props.selected}
                      logo={props.logo}
                      signature={props.signature}
                      bankInfo={props.bankInfo}
                      companyInfo={props.companyInfo}
                      documentNotes={props.documentNotes}
                    />
                  );
              }
            })()
          : (function() {
              switch (props.selected.Theme) {
                case 1:
                  return <EInvoiceFirstHtml />;
                case 2:
                  return (
                    <EInvoiceFirstInvoiceHtml
                      selected={props.selected}
                      logo={props.logo}
                      signature={props.signature}
                      bankInfo={props.bankInfo}
                      companyInfo={props.companyInfo}
                      documentNotes={props.documentNotes}
                    />
                  );
                case 3:
                  return (
                    <EInvoiceFirstInvoiceHtml
                      selected={props.selected}
                      logo={props.logo}
                      signature={props.signature}
                      bankInfo={props.bankInfo}
                      companyInfo={props.companyInfo}
                      documentNotes={props.documentNotes}
                    />
                  );
                case 4:
                  return (
                    <EInvoiceFirstInvoiceHtml
                      selected={props.selected}
                      logo={props.logo}
                      signature={props.signature}
                      bankInfo={props.bankInfo}
                      companyInfo={props.companyInfo}
                      documentNotes={props.documentNotes}
                    />
                  );
                default:
                  return (
                    <EInvoiceFirstInvoiceHtml
                      selected={props.selected}
                      logo={props.logo}
                      signature={props.signature}
                      bankInfo={props.bankInfo}
                      companyInfo={props.companyInfo}
                      documentNotes={props.documentNotes}
                    />
                  );
              }
            })()}
      </React.Fragment>
    );
  }
}

const mapStateToProps = ({ htmlContent, htmlPreview, logoAndSignature, bankInfo, companyInfo, documentNotes }) => ({
  product: htmlContent.selectedProduct,
  selected: htmlPreview.selected,
  logo: logoAndSignature.logoCroppedImage,
  signature: logoAndSignature.signatureCroppedImage,
  bankInfo: bankInfo.list,
  companyInfo: companyInfo.info,
  documentNotes: documentNotes.notes
});

const mapDispatchToProps = (dispatch: Dispatch) => ({
  selectedProduct: (params: boolean) => dispatch(selectedProduct(params))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(HtmlContent);

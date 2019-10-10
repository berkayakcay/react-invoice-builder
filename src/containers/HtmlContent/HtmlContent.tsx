import React, { PureComponent } from 'react';
import { connect } from 'react-redux';
import { Dispatch } from 'redux';
import { BankInfoModel, CompanyInfoModel, ThemeModel } from '../../common/models';
import FirstInvoiceHtml from '../../components/Themes/FirstTheme/Html/InvoiceHtml';
import FourthInvoiceHtml from '../../components/Themes/FourthTheme/Html/InvoiceHtml';
import SecondInvoiceHtml from '../../components/Themes/SecondTheme/Html/InvoiceHtml';
import ThirdInvoiceHtml from '../../components/Themes/ThirdTheme/Html/InvoiceHtml';
import './style.scss';

interface IProps {
  selected: ThemeModel;
  logo: any;
  signature: any;
  bankInfo: Array<BankInfoModel>;
  companyInfo: CompanyInfoModel;
}

class HtmlContent extends PureComponent<IProps> {
  render() {
    const props = this.props;
    return (
      <React.Fragment>
        {(function() {
          switch (props.selected.Theme) {
            case 1:
              return (
                <FirstInvoiceHtml
                  selected={props.selected}
                  logo={props.logo}
                  signature={props.signature}
                  bankInfo={props.bankInfo}
                  companyInfo={props.companyInfo}
                />
              );
            case 2:
              return (
                <SecondInvoiceHtml
                  selected={props.selected}
                  logo={props.logo}
                  signature={props.signature}
                  bankInfo={props.bankInfo}
                  companyInfo={props.companyInfo}
                />
              );
            case 3:
              return (
                <ThirdInvoiceHtml
                  selected={props.selected}
                  logo={props.logo}
                  signature={props.signature}
                  bankInfo={props.bankInfo}
                  companyInfo={props.companyInfo}
                />
              );
            case 4:
              return (
                <FourthInvoiceHtml
                  selected={props.selected}
                  logo={props.logo}
                  signature={props.signature}
                  bankInfo={props.bankInfo}
                  companyInfo={props.companyInfo}
                />
              );
            default:
              return (
                <FirstInvoiceHtml
                  selected={props.selected}
                  logo={props.logo}
                  signature={props.signature}
                  bankInfo={props.bankInfo}
                  companyInfo={props.companyInfo}
                />
              );
          }
        })()}
      </React.Fragment>
    );
  }
}

const mapStateToProps = ({ htmlPreview, logoAndSignature, bankInfo, companyInfo }) => ({
  selected: htmlPreview.selected,
  logo: logoAndSignature.logoCroppedImage,
  signature: logoAndSignature.signatureCroppedImage,
  bankInfo: bankInfo.list,
  companyInfo: companyInfo.info
});

const mapDispatchToProps = (dispatch: Dispatch) => ({});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(HtmlContent);

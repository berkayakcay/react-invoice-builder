import React, { PureComponent } from 'react';
import { connect } from 'react-redux';
import { Dispatch } from 'redux';
import { BankInfoModel, CompanyInfoModel, ThemeModel } from '../../common/models';
import FirstInvoiceHtml from '../../components/Themes/FirstTheme/Html/InvoiceHtml';

interface IProps {
  selected: ThemeModel;
  logo: any;
  signature: any;
  bankInfo: Array<BankInfoModel>;
  companyInfo: CompanyInfoModel;
}

class HtmlContent extends PureComponent<IProps> {
  render() {
    return (
      <FirstInvoiceHtml
        selected={this.props.selected}
        logo={this.props.logo}
        signature={this.props.signature}
        bankInfo={this.props.bankInfo}
        companyInfo={this.props.companyInfo}
      />
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

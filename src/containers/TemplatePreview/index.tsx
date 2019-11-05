import { Alert, Skeleton } from 'antd';
import React from 'react';
import { connect } from 'react-redux';

interface IProps {
  html: string;
  state: any;
}

interface IState {
  isLoading: boolean;
  replacedHtml: string;
}

type AllProps = IProps;

class HtmlContent extends React.Component<AllProps> {
  state: IState = {
    isLoading: true,
    replacedHtml: ''
  };

  componentWillReceiveProps() {
    this.replaceWithParameters(this.props.html);
  }

  componentWillMount() {
    setTimeout(() => {
      this.setState({ isLoading: false });
    }, 500);
  }

  replaceWithParameters = (text: string) => {
    text = text.replace(/{{COMPANYINFO.NAME}}/gim, this.props.state.companyInfo.info.name);
    text = text.replace(/{{COMPANYINFO.ADDRESS}}/gim, this.props.state.companyInfo.info.address);
    text = text.replace(/{{COMPANYINFO.DISTRICH}}/gim, this.props.state.companyInfo.info.district);
    text = text.replace(/{{COMPANYINFO.CITY}}/gim, this.props.state.companyInfo.info.city);
    text = text.replace(/{{COMPANYINFO.COUNTRY}}/gim, this.props.state.companyInfo.info.country);
    text = text.replace(/{{COMPANYINFO.PHONE}}/gim, this.props.state.companyInfo.info.phone);
    text = text.replace(/{{COMPANYINFO.FAX}}/gim, this.props.state.companyInfo.info.fax);
    text = text.replace(/{{COMPANYINFO.WEBSITE}}/gim, this.props.state.companyInfo.info.webSite);
    text = text.replace(/{{COMPANYINFO.TAXOFFICE}}/gim, this.props.state.companyInfo.info.taxOffice);
    text = text.replace(/{{COMPANYINFO.REGISTERNUMBER}}/gim, this.props.state.companyInfo.info.registerNumber);
    text = text.replace(/{{COMPANYINFO.MERSISNUMBER}}/gim, this.props.state.companyInfo.info.mersisNumber);
    text = text.replace(
      /{{COMPANYINFO.TRADEREGISTERNUMBER}}/gim,
      this.props.state.companyInfo.info.tradeRegistryNumber
    );

    text = text.replace(
      /{{BANKINFO}}/gim,
      this.props.state.bankInfo.list.map(x => {
        return (
          '<tr><td>' +
          x.bankName +
          '</td><td>' +
          x.branch +
          '</td><td>' +
          x.branchCode +
          '</td><td>' +
          x.accountCode +
          '</td><td>' +
          x.accountType +
          '</td><td>' +
          x.iban +
          '</td><td>' +
          x.accountName +
          '</td></tr>'
        );
      })
    );

    text = text.replace(
      /{{NOTES.DOCUMENTNOTES}}/gim,
      this.props.state.documentNotes.notes.map(x => {
        return (
          '<div><tr align="left"><td id="notesTableTd"><b>Not: </b>' +
          x.firstNote +
          '</td></tr><tr align="left"><td id="notesTableTd"><b>Not: </b>' +
          x.secondNote +
          '</td></tr><tr align="left"><td id="notesTableTd"><b>Not: </b>' +
          x.thirdNote +
          '</td></tr></div>'
        );
      })
    );

    text = text.replace(/{{LOGO}}/gim, this.props.state.logoAndSignature.logoCroppedImage);

    text = text.replace(/{{IMZA}}/gim, this.props.state.logoAndSignature.signatureCroppedImage);

    this.setState({ isLoading: false, replacedHtml: text });
  };

  render() {
    return this.state.replacedHtml === '' ? (
      <Alert message="Uyarı!" description="Lütfen Soldaki Menü'den Tema Seçimi Yapınız.." type="error" closable />
    ) : (
      <Skeleton avatar loading={this.state.isLoading} paragraph={{ rows: 40 }}>
        <iframe
          title={Date.now.toString()}
          frameBorder={0}
          style={{ minHeight: 800 }}
          width="100%"
          height="100%"
          scrolling="yes"
          seamless
          srcDoc={this.state.replacedHtml}
        />
      </Skeleton>
    );
  }
}

const mapStateToProps = state => ({
  state: state
});

export default connect(mapStateToProps)(HtmlContent);

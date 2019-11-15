import { Alert, Button, Skeleton } from 'antd';
import React from 'react';
import { connect } from 'react-redux';
import Download from './DownloadTemplate/Download';

interface IProps {
  html: string;
  xslt: string;
  state: any;
}

interface IState {
  isLoading: boolean;
  replacedHtml: string;
  replaceXslt: string;
}

type AllProps = IProps;

class HtmlContent extends React.Component<AllProps> {
  state: IState = {
    isLoading: true,
    replacedHtml: '',
    replaceXslt: ''
  };

  componentWillReceiveProps() {
    this.replaceWithParameters(this.props.html, this.props.xslt);
  }

  componentWillMount() {
    setTimeout(() => {
      this.setState({ isLoading: false });
    }, 500);
  }

  replaceWithParameters = (text: string, xsltText: string) => {
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

    //XSLT

    xsltText = xsltText.replace(/{{COMPANYINFO.NAME}}/gim, this.props.state.companyInfo.info.name);
    xsltText = xsltText.replace(/{{COMPANYINFO.ADDRESS}}/gim, this.props.state.companyInfo.info.address);
    xsltText = xsltText.replace(/{{COMPANYINFO.DISTRICH}}/gim, this.props.state.companyInfo.info.district);
    xsltText = xsltText.replace(/{{COMPANYINFO.CITY}}/gim, this.props.state.companyInfo.info.city);
    xsltText = xsltText.replace(/{{COMPANYINFO.COUNTRY}}/gim, this.props.state.companyInfo.info.country);
    xsltText = xsltText.replace(/{{COMPANYINFO.PHONE}}/gim, this.props.state.companyInfo.info.phone);
    xsltText = xsltText.replace(/{{COMPANYINFO.FAX}}/gim, this.props.state.companyInfo.info.fax);
    xsltText = xsltText.replace(/{{COMPANYINFO.WEBSITE}}/gim, this.props.state.companyInfo.info.webSite);
    xsltText = xsltText.replace(/{{COMPANYINFO.TAXOFFICE}}/gim, this.props.state.companyInfo.info.taxOffice);
    xsltText = xsltText.replace(/{{COMPANYINFO.REGISTERNUMBER}}/gim, this.props.state.companyInfo.info.registerNumber);
    xsltText = xsltText.replace(/{{COMPANYINFO.MERSISNUMBER}}/gim, this.props.state.companyInfo.info.mersisNumber);
    xsltText = xsltText.replace(
      /{{COMPANYINFO.TRADEREGISTERNUMBER}}/gim,
      this.props.state.companyInfo.info.tradeRegistryNumber
    );

    xsltText = xsltText.replace(
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

    xsltText = xsltText.replace(
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

    //{{LOGO VE İMZA BASE64 DE CONVERT EDİLECEK}}
    xsltText = xsltText.replace(/{{LOGO}}/gim, this.props.state.logoAndSignature.logoCroppedImage);

    xsltText = xsltText.replace(/{{IMZA}}/gim, this.props.state.logoAndSignature.signatureCroppedImage);

    this.setState({ isLoading: false, replacedHtml: text, replaceXslt: xsltText });
  };

  render() {
    console.log('this.state.replacedHtml', this.state.replacedHtml);
    console.log('this.state.replaceXslt', this.state.replaceXslt);

    console.log(
      'this.props.state.logoAndSignature.logoCroppedImage',
      this.props.state.logoAndSignature.logoCroppedImage
    );
    return this.state.replacedHtml === '' ? (
      <Alert message="Uyarı!" description="Lütfen Soldaki Menü'den Tema Seçimi Yapınız.." type="error" closable />
    ) : (
      <Skeleton avatar loading={this.state.isLoading} paragraph={{ rows: 40 }}>
        <div>
          <Download file="default.xslt" content={this.state.replaceXslt}>
            <Button type="primary">İndir</Button>
          </Download>
        </div>
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
  state: state,
  xsltTemp: state.htmlPreview.selected.TemplateXslt
});

export default connect(mapStateToProps)(HtmlContent);

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

  imgConverterToBase64 = urlImg => {
    var img = new Image();
    img.src = urlImg;
    img.crossOrigin = 'Anonymous';

    var canvas = document.createElement('canvas'),
      ctx = canvas.getContext('2d')!;

    canvas.height = img.naturalHeight;
    canvas.width = img.naturalWidth;
    ctx.drawImage(img, 0, 0);

    var b64 = canvas.toDataURL(urlImg).replace(/^data:image.+;base64,/, '');
    return b64;
  };

  componentWillReceiveProps() {
    this.replaceWithParametersHtml(this.props.html);
    this.replaceWithParametersXslt(this.props.xslt);
  }

  componentWillMount() {
    setTimeout(() => {
      this.setState({ isLoading: false });
    }, 500);
  }

  replaceWithParametersHtml = (text: string) => {
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

    if (this.props.state.bankInfo.list.length > 0) {
      text = text.replace(
        /{{BANKINFO}}/gim,
        "<table id='bankaHesap' style='width:800px; margin-top:10px'><thead><tr><th>Banka Adı</th><th>Şube</th><th style='width:30px'>Şube Kodu</th><th>Hesap No</th><th>Hesap Türü</th><th>Hesap Iban</th><th>Hesap Adı</th></tr></thead><tbody>" +
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
          }) +
          '</tbody></table>'
      );
    } else {
      text = text.replace(/{{BANKINFO}}/gim, '');
    }

    if (this.props.state.documentNotes.notes.firstNote !== '') {
      text = text.replace(
        /{{NOTES.FIRST}}/gim,
        '<tr align="left"><td id="notesTableTd"><b>Not: </b>' +
          this.props.state.documentNotes.notes.firstNote +
          '</td></tr>'
      );
    } else {
      text = text.replace(/{{NOTES.FIRST}}/gim, '');
    }

    if (this.props.state.documentNotes.notes.secondNote !== '') {
      text = text.replace(
        /{{NOTES.SECOND}}/gim,
        '<tr align="left"><td id="notesTableTd"><b>Not: </b>' +
          this.props.state.documentNotes.notes.secondNote +
          '</td></tr>'
      );
    } else {
      text = text.replace(/{{NOTES.SECOND}}/gim, '');
    }

    if (this.props.state.documentNotes.notes.thirdNote !== '') {
      text = text.replace(
        /{{NOTES.THIRD}}/gim,
        '<tr align="left"><td id="notesTableTd"><b>Not: </b>' +
          this.props.state.documentNotes.notes.thirdNote +
          '</td></tr>'
      );
    } else {
      text = text.replace(/{{NOTES.THIRD}}/gim, '');
    }

    if (this.props.state.logoAndSignature.logoCroppedImage !== null) {
      text = text.replace(
        /{{LOGO}}/gim,
        '<img style="width: 150px; height: 150px;" src="data:image/png;base64,' +
          this.imgConverterToBase64(this.props.state.logoAndSignature.logoCroppedImage) +
          '" />'
      );
    } else {
      text = text.replace(/{{LOGO}}/gim, '');
    }

    if (this.props.state.logoAndSignature.signatureCroppedImage !== null) {
      text = text.replace(
        /{{IMZA}}/gim,
        '<img style="width: 100px; height: 100px;" src="data:image/png;base64,' +
          this.imgConverterToBase64(this.props.state.logoAndSignature.signatureCroppedImage) +
          '" />'
      );
    } else {
      text = text.replace(/{{IMZA}}/gim, '');
    }
    this.setState({ isLoading: false, replacedHtml: text });
  };

  replaceWithParametersXslt = (xsltText: string) => {
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

    if (this.props.state.bankInfo.list.length > 0) {
      xsltText = xsltText.replace(
        /{{BANKINFO}}/gim,
        "<table id='bankaHesap' style='width:800px; margin-top:10px'><thead><tr><th>Banka Adı</th><th>Şube</th><th style='width:30px'>Şube Kodu</th><th>Hesap No</th><th>Hesap Türü</th><th>Hesap Iban</th><th>Hesap Adı</th></tr></thead><tbody>" +
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
          }) +
          '</tbody></table>'
      );
    } else {
      xsltText = xsltText.replace(/{{BANKINFO}}/gim, '');
    }

    if (this.props.state.documentNotes.notes.firstNote !== '') {
      xsltText = xsltText.replace(
        /{{NOTES.FIRST}}/gim,
        '<tr align="left"><td id="notesTableTd"><b>Not: </b>' +
          this.props.state.documentNotes.notes.firstNote +
          '</td></tr>'
      );
    } else {
      xsltText = xsltText.replace(/{{NOTES.FIRST}}/gim, '');
    }

    if (this.props.state.documentNotes.notes.secondNote !== '') {
      xsltText = xsltText.replace(
        /{{NOTES.SECOND}}/gim,
        '<tr align="left"><td id="notesTableTd"><b>Not: </b>' +
          this.props.state.documentNotes.notes.secondNote +
          '</td></tr>'
      );
    } else {
      xsltText = xsltText.replace(/{{NOTES.SECOND}}/gim, '');
    }

    if (this.props.state.documentNotes.notes.thirdNote !== '') {
      xsltText = xsltText.replace(
        /{{NOTES.THIRD}}/gim,
        '<tr align="left"><td id="notesTableTd"><b>Not: </b>' +
          this.props.state.documentNotes.notes.thirdNote +
          '</td></tr>'
      );
    } else {
      xsltText = xsltText.replace(/{{NOTES.THIRD}}/gim, '');
    }

    //{{LOGO VE İMZA BASE64 DE CONVERT EDİLECEK}}
    if (this.props.state.logoAndSignature.logoCroppedImage !== null) {
      xsltText = xsltText.replace(
        /{{LOGO}}/gim,
        '<img style="width: 150px; height: 150px;" src="data:image/png;base64,' +
          this.imgConverterToBase64(this.props.state.logoAndSignature.logoCroppedImage) +
          '" />'
      );
    } else {
      xsltText = xsltText.replace(/{{LOGO}}/gim, '');
    }

    if (this.props.state.logoAndSignature.signatureCroppedImage !== null) {
      xsltText = xsltText.replace(
        /{{IMZA}}/gim,
        '<img style="width: 100px; height: 100px;" src="data:image/png;base64,' +
          this.imgConverterToBase64(this.props.state.logoAndSignature.signatureCroppedImage) +
          '" />'
      );
    } else {
      xsltText = xsltText.replace(/{{IMZA}}/gim, '');
    }

    this.setState({ replaceXslt: xsltText });
  };

  render() {
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
  state: state
});

export default connect(mapStateToProps)(HtmlContent);

interface IProps {
  xsltText: string;
  state: any;
}

const ReplaceWithParameter = (props: IProps) => {
  const imgConverterToBase64 = urlImg => {
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

  props.xsltText = props.xsltText.replace(/{{COMPANYINFO.NAME}}/gim, props.state.companyInfo.info.name);
  props.xsltText = props.xsltText.replace(/{{COMPANYINFO.ADDRESS}}/gim, props.state.companyInfo.info.address);
  props.xsltText = props.xsltText.replace(/{{COMPANYINFO.DISTRICH}}/gim, props.state.companyInfo.info.district);
  props.xsltText = props.xsltText.replace(/{{COMPANYINFO.CITY}}/gim, props.state.companyInfo.info.city);
  props.xsltText = props.xsltText.replace(/{{COMPANYINFO.COUNTRY}}/gim, props.state.companyInfo.info.country);
  props.xsltText = props.xsltText.replace(/{{COMPANYINFO.PHONE}}/gim, props.state.companyInfo.info.phone);
  props.xsltText = props.xsltText.replace(/{{COMPANYINFO.FAX}}/gim, props.state.companyInfo.info.fax);
  props.xsltText = props.xsltText.replace(/{{COMPANYINFO.WEBSITE}}/gim, props.state.companyInfo.info.webSite);
  props.xsltText = props.xsltText.replace(/{{COMPANYINFO.TAXOFFICE}}/gim, props.state.companyInfo.info.taxOffice);
  props.xsltText = props.xsltText.replace(
    /{{COMPANYINFO.REGISTERNUMBER}}/gim,
    props.state.companyInfo.info.registerNumber
  );
  props.xsltText = props.xsltText.replace(/{{COMPANYINFO.MERSISNUMBER}}/gim, props.state.companyInfo.info.mersisNumber);
  props.xsltText = props.xsltText.replace(
    /{{COMPANYINFO.TRADEREGISTERNUMBER}}/gim,
    props.state.companyInfo.info.tradeRegistryNumber
  );

  if (props.state.bankInfo.list.length > 0) {
    props.xsltText = props.xsltText.replace(
      /{{BANKINFO}}/gim,
      "<table id='bankaHesap' style='width:800px; margin-top:10px'><thead><tr><th>Banka Adı</th><th>Şube</th><th style='width:30px'>Şube Kodu</th><th>Hesap No</th><th>Hesap Türü</th><th>Hesap Iban</th><th>Hesap Adı</th></tr></thead><tbody>" +
        props.state.bankInfo.list.map(x => {
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
    props.xsltText = props.xsltText.replace(/{{BANKINFO}}/gim, '');
  }

  if (props.state.documentNotes.notes.firstNote !== '') {
    props.xsltText = props.xsltText.replace(
      /{{NOTES.FIRST}}/gim,
      '<tr align="left"><td id="notesTableTd"><b>Not: </b>' + props.state.documentNotes.notes.firstNote + '</td></tr>'
    );
  } else {
    props.xsltText = props.xsltText.replace(/{{NOTES.FIRST}}/gim, '');
  }

  if (props.state.documentNotes.notes.secondNote !== '') {
    props.xsltText = props.xsltText.replace(
      /{{NOTES.SECOND}}/gim,
      '<tr align="left"><td id="notesTableTd"><b>Not: </b>' + props.state.documentNotes.notes.secondNote + '</td></tr>'
    );
  } else {
    props.xsltText = props.xsltText.replace(/{{NOTES.SECOND}}/gim, '');
  }

  if (props.state.documentNotes.notes.thirdNote !== '') {
    props.xsltText = props.xsltText.replace(
      /{{NOTES.THIRD}}/gim,
      '<tr align="left"><td id="notesTableTd"><b>Not: </b>' + props.state.documentNotes.notes.thirdNote + '</td></tr>'
    );
  } else {
    props.xsltText = props.xsltText.replace(/{{NOTES.THIRD}}/gim, '');
  }

  if (props.state.logoAndSignature.logoCroppedImage !== null) {
    props.xsltText = props.xsltText.replace(
      /{{LOGO}}/gim,
      '<img style="width: 150px; height: 150px;" src="data:image/png;base64,' +
        imgConverterToBase64(props.state.logoAndSignature.logoCroppedImage) +
        '" />'
    );
  } else {
    props.xsltText = props.xsltText.replace(/{{LOGO}}/gim, '');
  }

  if (props.state.logoAndSignature.signatureCroppedImage !== null) {
    props.xsltText = props.xsltText.replace(
      /{{IMZA}}/gim,
      '<img style="width: 100px; height: 100px;" src="data:image/png;base64,' +
        imgConverterToBase64(props.state.logoAndSignature.signatureCroppedImage) +
        '" />'
    );
  } else {
    props.xsltText = props.xsltText.replace(/{{IMZA}}/gim, '');
  }

  return props.xsltText;
};

export default ReplaceWithParameter;

import { BankInfoModel, CommonModel } from '../../../common/models';

interface IProps {
  text: string;
  state: CommonModel;
}

const ReplaceWithParameter = (props: IProps) => {
  props.text = props.text.replace(/{{COMPANYINFO.NAME}}/gim, props.state.companyInfo.info.name);
  props.text = props.text.replace(/{{COMPANYINFO.ADDRESS}}/gim, props.state.companyInfo.info.address);
  props.text = props.text.replace(/{{COMPANYINFO.DISTRICH}}/gim, props.state.companyInfo.info.district);
  props.text = props.text.replace(/{{COMPANYINFO.CITY}}/gim, props.state.companyInfo.info.city);
  props.text = props.text.replace(/{{COMPANYINFO.COUNTRY}}/gim, props.state.companyInfo.info.country);
  props.text = props.text.replace(/{{COMPANYINFO.PHONE}}/gim, props.state.companyInfo.info.phone);
  props.text = props.text.replace(/{{COMPANYINFO.FAX}}/gim, props.state.companyInfo.info.fax);
  props.text = props.text.replace(/{{COMPANYINFO.WEBSITE}}/gim, props.state.companyInfo.info.webSite);
  props.text = props.text.replace(/{{COMPANYINFO.TAXOFFICE}}/gim, props.state.companyInfo.info.taxOffice);
  props.text = props.text.replace(/{{COMPANYINFO.REGISTERNUMBER}}/gim, props.state.companyInfo.info.registerNumber);
  props.text = props.text.replace(/{{COMPANYINFO.MERSISNUMBER}}/gim, props.state.companyInfo.info.mersisNumber);
  props.text = props.text.replace(
    /{{COMPANYINFO.TRADEREGISTERNUMBER}}/gim,
    props.state.companyInfo.info.tradeRegistryNumber
  );

  if (props.state.bankInfo.list.length > 0) {
    const body = props.state.bankInfo.list.reduce((content: string, item: BankInfoModel) => {
      return (content +=
        '<tr><td>' +
        item.bankName +
        '</td><td>' +
        item.branch +
        '</td><td>' +
        item.branchCode +
        '</td><td>' +
        item.accountCode +
        '</td><td>' +
        item.accountType +
        '</td><td>' +
        item.iban +
        '</td><td>' +
        item.accountName +
        '</td></tr>');
    }, '');

    console.log('content', body);

    props.text = props.text.replace(
      /{{BANKINFO}}/gim,
      `<table id='bankaHesap' style='width:800px; margin-top:10px'><thead><tr><th>Banka Adı</th><th>Şube</th><th style='width:30px'>Şube Kodu</th><th>Hesap No</th><th>Hesap Türü</th><th>Hesap Iban</th><th>Hesap Adı</th></tr></thead><tbody>${body}</tbody></table>`
    );
  } else {
    props.text = props.text.replace(/{{BANKINFO}}/gim, '');
  }

  if (props.state.documentNotes.notes.firstNote !== '') {
    props.text = props.text.replace(
      /{{NOTES.FIRST}}/gim,
      '<tr align="left"><td id="notesTableTd"><b>Not: </b>' + props.state.documentNotes.notes.firstNote + '</td></tr>'
    );
  } else {
    props.text = props.text.replace(/{{NOTES.FIRST}}/gim, '');
  }

  if (props.state.documentNotes.notes.secondNote !== '') {
    props.text = props.text.replace(
      /{{NOTES.SECOND}}/gim,
      '<tr align="left"><td id="notesTableTd"><b>Not: </b>' + props.state.documentNotes.notes.secondNote + '</td></tr>'
    );
  } else {
    props.text = props.text.replace(/{{NOTES.SECOND}}/gim, '');
  }

  if (props.state.documentNotes.notes.thirdNote !== '') {
    props.text = props.text.replace(
      /{{NOTES.THIRD}}/gim,
      '<tr align="left"><td id="notesTableTd"><b>Not: </b>' + props.state.documentNotes.notes.thirdNote + '</td></tr>'
    );
  } else {
    props.text = props.text.replace(/{{NOTES.THIRD}}/gim, '');
  }

  if (props.state.logoAndSignature.logoBase64 !== undefined) {
    props.text = props.text.replace(
      /{{LOGO}}/gim,
      '<img style="width: 150px; height: 150px;" src="' + props.state.logoAndSignature.logoBase64 + '" />'
    );
  } else {
    props.text = props.text.replace(/{{LOGO}}/gim, '');
  }

  if (props.state.logoAndSignature.signatureBase64 !== undefined) {
    props.text = props.text.replace(
      /{{IMZA}}/gim,
      '<img style="width: 100px; height: 100px;" src="' + props.state.logoAndSignature.signatureBase64 + '" />'
    );
  } else {
    props.text = props.text.replace(/{{IMZA}}/gim, '');
  }

  return props.text;
};

export default ReplaceWithParameter;

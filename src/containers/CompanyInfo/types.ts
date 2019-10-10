import { CompanyInfoModel } from '../../common/models';

export const initialState: CompanyInfoState = {
  info: {
    name: 'ORNEK İNŞ. SAN. TİC. LTD. ŞTİ.',
    registerNumber: '2222222222',
    taxOffice: 'BEYKOZ ',
    tradeRegistryNumber: '4545454545',
    mersisNumber: '12456',
    phone: '0216 666 66 66',
    fax: '0216 666 66 65',
    address: 'Ornek Mah. Ornek Cad. Ornek Sok.',
    district: 'Beykoz',
    city: 'İstanbul',
    country: 'Türkiye',
    postalCode: '34500',
    buildingNumber: '140',
    doorNumber: '15',
    mail: 'ornek@ornekinsaat.com',
    webSite: 'www.ornekinsaat.com.tr'
  }
};

export interface CompanyInfoStateType {
  companyInfo: CompanyInfoState;
}
export interface CompanyInfoState {
  readonly info: CompanyInfoModel;
}

export enum CompanyInfoActionTypes {
  SHOW_COMPANYINFO_MODAL = 'SHOW_COMPANYINFO_MODAL',
  UPDATE_COMPANYINFO = 'UPDATE_COMPANYINFO'
}

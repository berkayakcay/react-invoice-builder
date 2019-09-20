import { CompanyInfoModel } from '../../common/models';

export const initialState: CompanyInfoState = {
  info: {
    name: '',
    registerNumber: '',
    taxOffice: '',
    tradeRegistryNumber: '',
    mersisNumber: '',
    phone: '',
    fax: '',
    address: '',
    district: '',
    city: '',
    country: '',
    postalCode: '',
    buildingNumber: '',
    doorNumber: '',
    mail: '',
    webSite: ''
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

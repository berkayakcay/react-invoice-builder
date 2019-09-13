import { CompanyInfoModel } from '../../common/models';

export const initialState: CompanyInfoModel = {
    name: "",
    registerNumber: "",
    taxOffice: "",
    ticaretSicilNo: "",
    mersisNo: "",
    phone: "",
    fax: "",
    address: "",
    district: "",
    city: "",
    country: "",
};


export interface CompanyInfoState {
    companyInfo: CompanyInfoModel
}

export enum CompanyInfoActionTypes {
    SHOW_COMPANYINFO_MODAL = 'SHOW_COMPANYINFO_MODAL',
    UPDATE_COMPANYINFO = 'UPDATE_COMPANYINFO'
}
import { CompnayInfoModel } from '../../common/models';

export const initialState: CompnayInfoModel = {
    name: "",
    registerNumber: "",
    address: "",
    city: "",
    district: ""
};

export enum CompanyInfoActionTypes {
    SHOW_COMPANYINFO_MODAL = 'SHOW_COMPANYINFO_MODAL'
}
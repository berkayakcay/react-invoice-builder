import { BankInfoModel } from '../../common/models';

export const initialState: BankInfoModel = {
    name: ""
};
export enum BankInfoActionTypes {
    SHOW_BANKINFO_MODAL = 'SHOW_BANKINFO_MODAL'
}
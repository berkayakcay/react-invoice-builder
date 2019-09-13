import { BankInfoModel } from '../../common/models';

export const initialState: BankInfoState = {
  list: []
};


export interface BankInfoStateType {
  bankInfo: BankInfoState
}

export interface BankInfoState {
  readonly list: Array<BankInfoModel>;
}

export enum BankInfoActionTypes {
  SHOW_BANKINFO_MODAL = 'SHOW_BANKINFO_MODAL',
  UPDATE_BANKINFO = 'UPDATE_BANKINFO'
}

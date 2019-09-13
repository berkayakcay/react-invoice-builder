import { BankInfoTypeModel } from '../../common/models';

export const initialState: BankInfoState = {
  bankInfoData: []
};

export interface BankInfoState {
  readonly bankInfoData: Array<BankInfoTypeModel>;
}

export enum BankInfoActionTypes {
  SHOW_BANKINFO_MODAL = 'SHOW_BANKINFO_MODAL',
  ADD_BANKINFOTABLE_REQUEST = 'ADD_BANKINFOTABLE_REQUEST'
}

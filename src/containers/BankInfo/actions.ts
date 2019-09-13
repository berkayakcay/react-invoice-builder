import { action } from 'typesafe-actions';
import { BankInfoTypeModel } from '../../common/models';
import { BankInfoActionTypes } from './types';

export const showBankInfoModal = () => action(BankInfoActionTypes.SHOW_BANKINFO_MODAL);

export const addBankInfoTableRequest = (param: BankInfoTypeModel) =>
  action(BankInfoActionTypes.ADD_BANKINFOTABLE_REQUEST, param);

import { action } from 'typesafe-actions';
import { BankInfoModel } from '../../common/models';
import { BankInfoActionTypes } from './types';

export const showBankInfoModal = () => action(BankInfoActionTypes.SHOW_BANKINFO_MODAL);

export const updateBankInfo = (payload: BankInfoModel) => action(BankInfoActionTypes.UPDATE_BANKINFO, payload);

export const deleteBankInfo = (params: BankInfoModel) => action(BankInfoActionTypes.DELETE_BANKINFO, params);

import { action } from 'typesafe-actions';
import { CompanyInfoModel } from '../../common/models';
import { CompanyInfoActionTypes } from './types';

export const showCompanyInfoModal = () => action(CompanyInfoActionTypes.SHOW_COMPANYINFO_MODAL);

export const updateCompanyInfo = (payload: CompanyInfoModel) =>
  action(CompanyInfoActionTypes.UPDATE_COMPANYINFO, payload);

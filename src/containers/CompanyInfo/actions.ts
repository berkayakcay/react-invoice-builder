import { action } from 'typesafe-actions';
import { CompanyInfoActionTypes } from './types'
import { CompanyInfoModel } from '../../common/models';



export const showCompanyInfoModal = () => action(CompanyInfoActionTypes.SHOW_COMPANYINFO_MODAL)

export const updateCompanyInfo = (payload: CompanyInfoModel) => action(CompanyInfoActionTypes.UPDATE_COMPANYINFO, payload)
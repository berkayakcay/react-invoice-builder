import { action } from 'typesafe-actions';
import { CompanyInfoActionTypes } from './types'



export const showCompanyInfoModal = () => action(CompanyInfoActionTypes.SHOW_COMPANYINFO_MODAL)

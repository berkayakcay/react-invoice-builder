import { action } from 'typesafe-actions'
import { BankInfoActionTypes } from './types'

export const showBankInfoModal = () => action(BankInfoActionTypes.SHOW_BANKINFO_MODAL)
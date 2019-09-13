import { action } from 'typesafe-actions';
import { LogoAndSignatureActionTypes } from './types';

export const showLogoAndSignatureModal = () => action(LogoAndSignatureActionTypes.SHOW_LOGOANDSIGNATURE_MODAL);

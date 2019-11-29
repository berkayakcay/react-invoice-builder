import { action } from 'typesafe-actions';
import { LogoAndSignatureActionTypes } from './types';

export const showLogoAndSignatureModal = () => action(LogoAndSignatureActionTypes.SHOW_LOGOANDSIGNATURE_MODAL);

//LOGO

export const logoOnCrop = (payload: string) => action(LogoAndSignatureActionTypes.LOGO_UPDATE_CROP, payload);

//SIGNATURE

export const signatureOnCrop = (payload: string) => action(LogoAndSignatureActionTypes.SIGNATURE_UPDATE_CROP, payload);

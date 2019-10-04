import { action } from 'typesafe-actions';
import { LogoAndSignatureActionTypes } from './types';

export const showLogoAndSignatureModal = () => action(LogoAndSignatureActionTypes.SHOW_LOGOANDSIGNATURE_MODAL);

//LOGO

export const logoOnCrop = (payload: object | any) => action(LogoAndSignatureActionTypes.LOGO_UPDATE_CROP, payload);

export const logoOnCropComplete = (payload: any) => action(LogoAndSignatureActionTypes.LOGO_ON_CROP_COMPLATE, payload);

export const logoOnZoom = (payload: number) => action(LogoAndSignatureActionTypes.LOGO_ON_ZOOM, payload);

export const showCroppedLogo = (payload: any) => action(LogoAndSignatureActionTypes.LOGO_SHOW_CROPPED_IMAGE, payload);

export const fileReaderLogoSrc = (payload: any) => action(LogoAndSignatureActionTypes.LOGO_FILE_READER, payload);

//SIGNATURE

export const signatureOnCrop = (payload: object | any) =>
  action(LogoAndSignatureActionTypes.SIGNATURE_UPDATE_CROP, payload);

export const signatureOnCropComplete = (payload: any) =>
  action(LogoAndSignatureActionTypes.SIGNATURE_ON_CROP_COMPLATE, payload);

export const signatureOnZoom = (payload: number) => action(LogoAndSignatureActionTypes.SIGNATURE_ON_ZOOM, payload);

export const showCroppedSignature = (payload: any) =>
  action(LogoAndSignatureActionTypes.SIGNATURE_SHOW_CROPPED_IMAGE, payload);

export const fileReaderSignatureSrc = (payload: any) =>
  action(LogoAndSignatureActionTypes.SIGNATURE_FILE_READER, payload);

import { action } from 'typesafe-actions';
import { LogoAndSignatureActionTypes } from './types';

export const showLogoAndSignatureModal = () => action(LogoAndSignatureActionTypes.SHOW_LOGOANDSIGNATURE_MODAL);

export const logoOnCrop = (payload: object | any) => action(LogoAndSignatureActionTypes.UPDATE_CROP, payload);

export const logoOnCropComplete = (payload: any) => action(LogoAndSignatureActionTypes.ON_CROP_COMPLATE, payload);

export const logoOnZoom = (payload: number) => action(LogoAndSignatureActionTypes.ON_ZOOM, payload);

export const showCroppedLogo = (payload: any) => action(LogoAndSignatureActionTypes.SHOW_CROPPED_IMAGE, payload);

export const fileReaderLogoSrc = (payload: any) => action(LogoAndSignatureActionTypes.FILE_READER, payload);

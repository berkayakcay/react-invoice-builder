export const initialState: LogoAndSignatureState = {
  logoSrc: '',
  logoCrop: { x: 0, y: 0 },
  logoZoom: 1,
  logoAspect: 1,
  logoCroppedAreaPixels: null,
  logoCroppedImage: null,

  signatureSrc: '',
  signatureCrop: { x: 0, y: 0 },
  signatureZoom: 1,
  signatureAspect: 1,
  signatureCroppedAreaPixels: null,
  signatureCroppedImage: null
};

export interface LogoAndSignatureStateType {
  logoAndSignature: LogoAndSignatureState;
}

export interface LogoAndSignatureState {
  readonly logoSrc: string;
  readonly logoCrop: object | any;
  readonly logoZoom: number;
  readonly logoAspect: number;
  readonly logoCroppedAreaPixels: any;
  readonly logoCroppedImage: any;

  readonly signatureSrc: string;
  readonly signatureCrop: object | any;
  readonly signatureZoom: number;
  readonly signatureAspect: number;
  readonly signatureCroppedAreaPixels: any;
  readonly signatureCroppedImage: any;
}

export enum LogoAndSignatureActionTypes {
  SHOW_LOGOANDSIGNATURE_MODAL = 'SHOW_LOGOANDSIGNATURE_MODAL',

  LOGO_UPDATE_CROP = 'LOGO_UPDATE_CROP',
  LOGO_ON_CROP_COMPLATE = 'LOGO_ON_CROP_COMPLATE',
  LOGO_ON_ZOOM = 'LOGO_ON_ZOOM',
  LOGO_SHOW_CROPPED_IMAGE = 'LOGO_SHOW_CROPPED_IMAGE',
  LOGO_FILE_READER = 'LOGO_FILE_READER',

  SIGNATURE_UPDATE_CROP = 'SIGNATURE_UPDATE_CROP',
  SIGNATURE_ON_CROP_COMPLATE = 'SIGNATURE_ON_CROP_COMPLATE',
  SIGNATURE_ON_ZOOM = 'SIGNATURE_ON_ZOOM',
  SIGNATURE_SHOW_CROPPED_IMAGE = 'SIGNATURE_SHOW_CROPPED_IMAGE',
  SIGNATURE_FILE_READER = 'SIGNATURE_FILE_READER'
}

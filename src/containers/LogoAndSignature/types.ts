export const initialState: LogoAndSignatureState = {
  logoSrc: '',
  logoCrop: { x: 0, y: 0 },
  logoZoom: 1,
  logoAspect: 1,
  logoCroppedAreaPixels: null,
  logoCroppedImage: null
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
}

export enum LogoAndSignatureActionTypes {
  SHOW_LOGOANDSIGNATURE_MODAL = 'SHOW_LOGOANDSIGNATURE_MODAL',
  UPDATE_CROP = 'UPDATE_CROP',
  ON_CROP_COMPLATE = 'ON_CROP_COMPLATE',
  ON_ZOOM = 'ON_ZOOM',
  SHOW_CROPPED_IMAGE = 'SHOW_CROPPED_IMAGE',
  FILE_READER = 'FILE_READER'
}

export const initialState: LogoAndSignatureState = {
  logoBase64: undefined,
  signatureBase64: undefined
};

export interface LogoAndSignatureStateType {
  logoAndSignature: LogoAndSignatureState;
}

export interface LogoAndSignatureState {
  readonly logoBase64: any;
  readonly signatureBase64: any;
}

export enum LogoAndSignatureActionTypes {
  SHOW_LOGOANDSIGNATURE_MODAL = 'SHOW_LOGOANDSIGNATURE_MODAL',
  LOGO_UPDATE_CROP = 'LOGO_UPDATE_CROP',
  SIGNATURE_UPDATE_CROP = 'SIGNATURE_UPDATE_CROP'
}

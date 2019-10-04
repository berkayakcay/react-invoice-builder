import { Reducer } from 'redux';
import { initialState, LogoAndSignatureActionTypes, LogoAndSignatureState } from './types';

const reducer: Reducer<LogoAndSignatureState> = (state = initialState, action) => {
  switch (action.type) {
    //LOGO
    case LogoAndSignatureActionTypes.LOGO_FILE_READER: {
      return {
        ...state,
        logoSrc: action.payload
      };
    }
    case LogoAndSignatureActionTypes.LOGO_UPDATE_CROP: {
      return {
        ...state,
        logoCrop: action.payload
      };
    }
    case LogoAndSignatureActionTypes.LOGO_ON_CROP_COMPLATE: {
      return {
        ...state,
        logoCroppedAreaPixels: action.payload
      };
    }
    case LogoAndSignatureActionTypes.LOGO_ON_ZOOM: {
      return {
        ...state,
        logoZoom: action.payload
      };
    }
    case LogoAndSignatureActionTypes.LOGO_SHOW_CROPPED_IMAGE: {
      return {
        ...state,
        logoCroppedImage: action.payload
      };
    }
    //SIGNATURE
    case LogoAndSignatureActionTypes.SIGNATURE_FILE_READER: {
      return {
        ...state,
        signatureSrc: action.payload
      };
    }
    case LogoAndSignatureActionTypes.SIGNATURE_UPDATE_CROP: {
      return {
        ...state,
        signatureCrop: action.payload
      };
    }
    case LogoAndSignatureActionTypes.SIGNATURE_ON_CROP_COMPLATE: {
      return {
        ...state,
        signatureCroppedAreaPixels: action.payload
      };
    }
    case LogoAndSignatureActionTypes.SIGNATURE_ON_ZOOM: {
      return {
        ...state,
        signatureZoom: action.payload
      };
    }
    case LogoAndSignatureActionTypes.SIGNATURE_SHOW_CROPPED_IMAGE: {
      return {
        ...state,
        signatureCroppedImage: action.payload
      };
    }
    default:
      return state;
  }
};

export default reducer;

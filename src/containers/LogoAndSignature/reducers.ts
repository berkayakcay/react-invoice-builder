import { Reducer } from 'redux';
import { initialState, LogoAndSignatureActionTypes, LogoAndSignatureState } from './types';

const reducer: Reducer<LogoAndSignatureState> = (state = initialState, action) => {
  switch (action.type) {
    case LogoAndSignatureActionTypes.FILE_READER: {
      return {
        ...state,
        logoSrc: action.payload
      };
    }
    case LogoAndSignatureActionTypes.UPDATE_CROP: {
      return {
        ...state,
        logoCrop: action.payload
      };
    }
    case LogoAndSignatureActionTypes.ON_CROP_COMPLATE: {
      return {
        ...state,
        logoCroppedAreaPixels: action.payload
      };
    }
    case LogoAndSignatureActionTypes.ON_ZOOM: {
      return {
        ...state,
        logoZoom: action.payload
      };
    }
    case LogoAndSignatureActionTypes.SHOW_CROPPED_IMAGE: {
      return {
        ...state,
        logoCroppedImage: action.payload
      };
    }
    default:
      return state;
  }
};

export default reducer;

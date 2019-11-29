import { Reducer } from 'redux';
import { initialState, LogoAndSignatureActionTypes, LogoAndSignatureState } from './types';

const reducer: Reducer<LogoAndSignatureState> = (state = initialState, action) => {
  switch (action.type) {
    //LOGO
    case LogoAndSignatureActionTypes.LOGO_UPDATE_CROP: {
      return {
        ...state,
        logoBase64: action.payload
      };
    }
    case LogoAndSignatureActionTypes.SIGNATURE_UPDATE_CROP: {
      return {
        ...state,
        signatureBase64: action.payload
      };
    }
    default:
      return state;
  }
};

export default reducer;

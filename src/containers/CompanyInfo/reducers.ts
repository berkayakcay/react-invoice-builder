import { Reducer } from 'redux';
import { CompanyInfoActionTypes, CompanyInfoState, initialState } from './types';

const reducer: Reducer<CompanyInfoState> = (state = initialState, action) => {
  switch (action.type) {
    case CompanyInfoActionTypes.UPDATE_COMPANYINFO: {
      return {
        ...state,
        info: action.payload
      };
    }
    default:
      return state;
  }
};

export default reducer;

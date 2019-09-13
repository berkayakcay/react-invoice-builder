import { Reducer } from 'redux';
import { BankInfoActionTypes, BankInfoState, initialState } from './types';

const reducer: Reducer<BankInfoState> = (state = initialState, action) => {
  switch (action.type) {
    case BankInfoActionTypes.SHOW_BANKINFO_MODAL: {
      return { ...state };
    }
    case BankInfoActionTypes.UPDATE_BANKINFO: {
      return {
        ...state,
        list: [...state.list, action.payload]
      };
    }
    default:
      return state;
  }
};

export default reducer;

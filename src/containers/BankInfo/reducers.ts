import { Reducer } from 'redux';
import { BankInfoActionTypes, BankInfoState, initialState } from './types';

const reducer: Reducer<BankInfoState> = (state = initialState, action) => {
  switch (action.type) {
    case BankInfoActionTypes.SHOW_BANKINFO_MODAL: {
      return { ...state };
    }
    case BankInfoActionTypes.UPDATE_BANKINFO: {
      console.log('...state.list:', ...state.list);
      console.log('...action.payload:', action.payload);
      return {
        ...state,
        list: [...state.list, action.payload]
      };
    }
    case BankInfoActionTypes.DELETE_BANKINFO: {
      return { ...state, list: [...state.list.filter(x => x.accountCode !== action.payload.accountCode)] };
    }
    default:
      return state;
  }
};

export default reducer;

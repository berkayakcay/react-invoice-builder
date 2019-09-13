import { Reducer } from 'redux';
import { BankInfoActionTypes, BankInfoState, initialState } from './types';

const reducer: Reducer<BankInfoState> = (state = initialState, action) => {
  switch (action.type) {
    case BankInfoActionTypes.SHOW_BANKINFO_MODAL: {
      return { ...state };
    }
    case BankInfoActionTypes.ADD_BANKINFOTABLE_REQUEST: {
      return {
        ...state,
        bankInfoData: [action.payload, ...state.bankInfoData].map(item => {
          return item;
        })
      };
    }
    default:
      return state;
  }
};

export default reducer;

import { Reducer } from 'redux';
import { HtmlContentActionTypes, HtmlContentState, initialState } from './types';

const reducer: Reducer<HtmlContentState> = (state = initialState, action) => {
  switch (action.type) {
    case HtmlContentActionTypes.SELECTED_PRODUCT: {
      return {
        ...state,
        selectedProduct: action.payload
      };
    }
    default:
      return state;
  }
};

export default reducer;

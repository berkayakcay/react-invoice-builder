import { Reducer } from 'redux';
import { TemplateSelectorActionTypes, TemplateSelectorState, initialState } from './types';

const reducer: Reducer<TemplateSelectorState> = (state = initialState, action) => {
  switch (action.type) {
    case TemplateSelectorActionTypes.SHOW_TEMPLATE_SELECTOR_MODAL: {
      return { ...state };
    }
    case TemplateSelectorActionTypes.SELECTED_TEMPLATE: {
      return {
        ...state,
        selected: { Theme: action.payload }
      };
    }
    default:
      return state;
  }
};

export default reducer;

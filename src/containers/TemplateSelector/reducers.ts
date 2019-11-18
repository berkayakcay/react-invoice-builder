import { Reducer } from 'redux';
import { initialState, TemplateSelectorActionTypes, TemplateSelectorState } from './types';

const reducer: Reducer<TemplateSelectorState> = (state = initialState, action) => {
  switch (action.type) {
    case TemplateSelectorActionTypes.SHOW_TEMPLATE_SELECTOR_MODAL: {
      return { ...state };
    }
    case TemplateSelectorActionTypes.SET_SELECTED_TEMPLATE: {
      return {
        ...state,
        selected: { TemplateHtml: action.payload, TemplateXslt: action.meta }
      };
    }
    default:
      return state;
  }
};

export default reducer;

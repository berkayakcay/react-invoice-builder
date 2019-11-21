import { Reducer } from 'redux';
import { initialState, TemplateSelectorActionTypes, TemplateSelectorState } from './types';

const reducer: Reducer<TemplateSelectorState> = (state = initialState, action) => {
  switch (action.type) {
    case TemplateSelectorActionTypes.SHOW_TEMPLATE_SELECTOR_MODAL: {
      return { ...state };
    }
    case TemplateSelectorActionTypes.SET_SELECTED_HTML: {
      return {
        ...state,
        selectedHtml: { Template: action.payload }
      };
    }
    case TemplateSelectorActionTypes.SET_SELECTED_XSLT_EINVOICE: {
      return {
        ...state,
        selectedEInvoiceXslt: { Template: action.payload }
      };
    }
    case TemplateSelectorActionTypes.SET_SELECTED_XSLT_EARCHIVE: {
      return {
        ...state,
        selectedEArchiveXslt: { Template: action.payload }
      };
    }
    default:
      return state;
  }
};

export default reducer;

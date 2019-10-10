import { Reducer } from 'redux';
import { HtmlPreviewActionTypes, HtmlPreviewState, initialState } from './types';

const reducer: Reducer<HtmlPreviewState> = (state = initialState, action) => {
  switch (action.type) {
    case HtmlPreviewActionTypes.SHOW_HTMLPREVIEW_MODAL: {
      return { ...state };
    }
    case HtmlPreviewActionTypes.SELECTED_THEME: {
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

import { ThemeModel } from '../../common/models';

export const initialState: HtmlPreviewState = {
  selected: {
    Theme: 1
  }
};

export interface HtmlPreviewStateType {
  htmlPreview: HtmlPreviewState;
}

export interface HtmlPreviewState {
  readonly selected: ThemeModel;
}

export enum HtmlPreviewActionTypes {
  SHOW_HTMLPREVIEW_MODAL = 'SHOW_HTMLPREVIEW_MODAL',
  SELECTED_THEME = 'SELECTED_THEME'
}

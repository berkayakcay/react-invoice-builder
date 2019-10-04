export const initialState: HtmlPreviewState = {
  list: []
};

export interface HtmlPreviewStateType {
  htmlPreview: HtmlPreviewState;
}

export interface HtmlPreviewState {
  readonly list: any;
}

export enum HtmlPreviewActionTypes {
  SHOW_HTMLPREVIEW_MODAL = 'SHOW_HTMLPREVIEW_MODAL'
}

export const initialState: HtmlContentState = {
  selectedProduct: true
};

export interface HtmlContentStateType {
  htmlContent: HtmlContentState;
}

export interface HtmlContentState {
  readonly selectedProduct: boolean;
}

export enum HtmlContentActionTypes {
  SELECTED_PRODUCT = 'SELECTED_PRODUCT'
}

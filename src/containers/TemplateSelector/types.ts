import { EINVOICE } from '../../common/constants';
import { ProductSetModel, TemplateModel } from '../../common/models';

export const initialState: TemplateSelectorState = {
  selected: {
    HtmlTemplate: '',
    EinvoiceTemplate: '',
    EarchiveTemplate: ''
  },
  selectedProduct: { Product: EINVOICE }
};

export interface TemplateSelectorStateType {
  htmlPreview: TemplateSelectorState;
}

export interface TemplateSelectorState {
  readonly selected: TemplateModel;
  readonly selectedProduct: ProductSetModel;
}

export enum TemplateSelectorActionTypes {
  SHOW_TEMPLATE_SELECTOR_MODAL = 'SHOW_TEMPLATE_SELECTOR_MODAL',
  SET_SELECTED_TEMPLATE = 'SET_SELECTED_TEMPLATE',
  SET_PRODUCT = 'SET_PRODUCT'
}

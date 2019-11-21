import { TemplateModel } from '../../common/models';

export const initialState: TemplateSelectorState = {
  selectedHtml: {
    Template: ''
  },
  selectedEInvoiceXslt: {
    Template: ''
  },
  selectedEArchiveXslt: {
    Template: ''
  }
};

export interface TemplateSelectorStateType {
  htmlPreview: TemplateSelectorState;
}

export interface TemplateSelectorState {
  readonly selectedHtml: TemplateModel;
  readonly selectedEInvoiceXslt: TemplateModel;
  readonly selectedEArchiveXslt: TemplateModel;
}

export enum TemplateSelectorActionTypes {
  SHOW_TEMPLATE_SELECTOR_MODAL = 'SHOW_TEMPLATE_SELECTOR_MODAL',
  SET_SELECTED_HTML = 'SET_SELECTED_HTML',
  SET_SELECTED_XSLT_EINVOICE = 'SET_SELECTED_XSLT_EINVOICE',
  SET_SELECTED_XSLT_EARCHIVE = 'SET_SELECTED_XSLT_EARCHIVE'
}

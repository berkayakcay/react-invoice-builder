import { TemplateModel } from '../../common/models';

export const initialState: TemplateSelectorState = {
  selectedHtml: {
    Template: ''
  },
  selectedXslt: {
    Template: ''
  }
};

export interface TemplateSelectorStateType {
  htmlPreview: TemplateSelectorState;
}

export interface TemplateSelectorState {
  readonly selectedHtml: TemplateModel;
  readonly selectedXslt: TemplateModel;
}

export enum TemplateSelectorActionTypes {
  SHOW_TEMPLATE_SELECTOR_MODAL = 'SHOW_TEMPLATE_SELECTOR_MODAL',
  SET_SELECTED_HTML = 'SET_SELECTED_HTML',
  SET_SELECTED_XSLT = 'SET_SELECTED_XSLT'
}

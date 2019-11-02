import { TemplateModel } from '../../common/models';

export const initialState: TemplateSelectorState = {
  selected: {
    TemplateHtml: ''
  }
};

export interface TemplateSelectorStateType {
  htmlPreview: TemplateSelectorState;
}

export interface TemplateSelectorState {
  readonly selected: TemplateModel;
}

export enum TemplateSelectorActionTypes {
  SHOW_TEMPLATE_SELECTOR_MODAL = 'SHOW_TEMPLATE_SELECTOR_MODAL',
  SET_SELECTED_TEMPLATE = 'SET_SELECTED_TEMPLATE'
}

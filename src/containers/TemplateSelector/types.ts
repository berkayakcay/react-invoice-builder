import { TemplateModel } from '../../common/models';

export const initialState: TemplateSelectorState = {
  selected: {
    Theme: ''
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
  SELECTED_TEMPLATE = 'SELECTED_TEMPLATE'
}

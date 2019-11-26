import { action } from 'typesafe-actions';
import { ProductSetModel, TemplateModel } from '../../common/models';
import { TemplateSelectorActionTypes } from './types';

export const showTemplateSelectorModal = () => action(TemplateSelectorActionTypes.SHOW_TEMPLATE_SELECTOR_MODAL);

export const setSelectedTemplate = (payload: TemplateModel) =>
  action(TemplateSelectorActionTypes.SET_SELECTED_TEMPLATE, payload);

export const setSelectedProduct = (payload: ProductSetModel) =>
  action(TemplateSelectorActionTypes.SET_PRODUCT, payload);

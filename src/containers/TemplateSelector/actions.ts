import { action } from 'typesafe-actions';
import { TemplateSelectorActionTypes } from './types';

export const showTemplateSelectorModal = () => action(TemplateSelectorActionTypes.SHOW_TEMPLATE_SELECTOR_MODAL);

export const selectedTemplate = (payload: string) => action(TemplateSelectorActionTypes.SELECTED_TEMPLATE, payload);

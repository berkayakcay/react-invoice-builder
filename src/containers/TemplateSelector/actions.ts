import { action } from 'typesafe-actions';
import { TemplateSelectorActionTypes } from './types';

export const showTemplateSelectorModal = () => action(TemplateSelectorActionTypes.SHOW_TEMPLATE_SELECTOR_MODAL);

//XSLT ALMIYOR DÜZNELNECEK!
export const setSelectedTemplate = (payload: string, xslt: string) =>
  action(TemplateSelectorActionTypes.SET_SELECTED_TEMPLATE, payload, xslt);

import { action } from 'typesafe-actions';
import { TemplateSelectorActionTypes } from './types';

export const showTemplateSelectorModal = () => action(TemplateSelectorActionTypes.SHOW_TEMPLATE_SELECTOR_MODAL);

//XSLT ALMIYOR DÜZNELNECEK!
export const setSelectedHtml = (payload: string) => action(TemplateSelectorActionTypes.SET_SELECTED_HTML, payload);

export const setSelectedXslt = (payload: string) => action(TemplateSelectorActionTypes.SET_SELECTED_XSLT, payload);

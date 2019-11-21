import { action } from 'typesafe-actions';
import { TemplateSelectorActionTypes } from './types';

export const showTemplateSelectorModal = () => action(TemplateSelectorActionTypes.SHOW_TEMPLATE_SELECTOR_MODAL);

export const setSelectedHtml = (payload: string) => action(TemplateSelectorActionTypes.SET_SELECTED_HTML, payload);

export const setSelectedXsltEinvoice = (payload: string) =>
  action(TemplateSelectorActionTypes.SET_SELECTED_XSLT_EINVOICE, payload);

export const setSelectedXsltEarchive = (payload: string) =>
  action(TemplateSelectorActionTypes.SET_SELECTED_XSLT_EARCHIVE, payload);

import { action } from 'typesafe-actions';
import { HtmlPreviewActionTypes } from './types';

export const showHtmlPreviewModal = () => action(HtmlPreviewActionTypes.SHOW_HTMLPREVIEW_MODAL);

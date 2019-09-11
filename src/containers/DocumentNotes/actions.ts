import { action } from 'typesafe-actions';
import { DocumentNotesActionTypes } from './types';

export const showDocumentNotesModal = () => action(DocumentNotesActionTypes.SHOW_DOCUMENTNOTES_MODAL);
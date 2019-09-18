import { action } from 'typesafe-actions';
import { DocumentNotesModel } from '../../common/models';
import { DocumentNotesActionTypes } from './types';

export const showDocumentNotesModal = () => action(DocumentNotesActionTypes.SHOW_DOCUMENTNOTES_MODAL);

export const addDocumentNotes = (payload: DocumentNotesModel) =>
  action(DocumentNotesActionTypes.ADD_DOCUMENTNOTES, payload);

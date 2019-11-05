import { DocumentNotesModel } from '../../common/models';

export const initialState: NotesState = {
  notes: []
};

export interface NotesStateType {
  documentNotes: NotesState;
}

export interface NotesState {
  readonly notes: Array<DocumentNotesModel>;
}

export enum DocumentNotesActionTypes {
  SHOW_DOCUMENTNOTES_MODAL = 'SHOW_DOCUMENTNOTES_MODAL',
  ADD_DOCUMENTNOTES = 'ADD_DOCUMENTNOTES'
}

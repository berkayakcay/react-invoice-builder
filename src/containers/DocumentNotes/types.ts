import { DocumentNotesModel } from '../../common/models';

export const initialState: DocumentNotesModel = {
    name: ""
}

export enum DocumentNotesActionTypes {

    SHOW_DOCUMENTNOTES_MODAL = 'SHOW_DOCUMENTNOTES_MODAL'
}
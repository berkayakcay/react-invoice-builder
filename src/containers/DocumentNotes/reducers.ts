import { Reducer } from 'redux';
import { DocumentNotesActionTypes, initialState, NotesState } from './types';

const reducer: Reducer<NotesState> = (state = initialState, action) => {
  switch (action.type) {
    case DocumentNotesActionTypes.SHOW_DOCUMENTNOTES_MODAL: {
      return { ...state };
    }
    case DocumentNotesActionTypes.ADD_DOCUMENTNOTES: {
      return {
        ...state,
        notes: action.payload
      };
    }
    default:
      return state;
  }
};

export default reducer;

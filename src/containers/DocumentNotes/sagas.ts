import { all, put, takeLatest } from 'redux-saga/effects';
import { showModal } from '../../common/actions';
import { ModalType } from '../../components/Modals/ModalRoot/types';
import { addDocumentNotes, showDocumentNotesModal } from './actions';
import { DocumentNotesActionTypes } from './types';

function* handleShowDocumentNotesModal(action: ReturnType<typeof showDocumentNotesModal>) {
  yield put(
    showModal({
      type: ModalType.DocumentNotesModal,
      props: {}
    })
  );
}

export function* handleAddDocumentNotes(action: ReturnType<typeof addDocumentNotes>) {
  const { response } = yield action.payload;
  if (response) {
    yield put(response);
  }
}

function* DocumentNotesSaga() {
  yield all([
    takeLatest(DocumentNotesActionTypes.SHOW_DOCUMENTNOTES_MODAL, handleShowDocumentNotesModal),
    takeLatest(DocumentNotesActionTypes.ADD_DOCUMENTNOTES, handleAddDocumentNotes)
  ]);
}

export default DocumentNotesSaga;

import { showDocumentNotesModal } from './actions'
import { all, put, takeLatest } from 'redux-saga/effects'
import { showModal } from '../../common/actions'
import { ModalType } from '../../components/Modals/ModalRoot/types'
import { DocumentNotesActionTypes } from './types'


function* handleShowDocumentNotesModal(action: ReturnType<typeof showDocumentNotesModal>) {

    yield put(
        showModal({
            type: ModalType.DocumentNotesModal,
            props: {

            }
        })
    )
}


function* DocumentNotesSaga() {
    yield all([
        takeLatest(DocumentNotesActionTypes.SHOW_DOCUMENTNOTES_MODAL, handleShowDocumentNotesModal)
    ])
}


export default DocumentNotesSaga
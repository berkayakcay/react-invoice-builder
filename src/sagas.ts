import { all, takeLatest } from 'redux-saga/effects';
import { ModalRootActionTypes } from './components/Modals/ModalRoot/types';


function* handleShowModal(action: ReturnType<any>) {
    yield console.log('Hello Sagas!')
}


function* ModalRootSaga() {
    yield all([takeLatest(ModalRootActionTypes.SHOW_MODAL, handleShowModal)])
}

export default function* rootSaga() {
    yield all([
        ModalRootSaga()
    ])
}
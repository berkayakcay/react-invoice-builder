import { all, call } from 'redux-saga/effects';
import CompanyInfoSaga from '../containers/CompanyInfo/sagas'
import BankInfoSaga from '../containers/BankInfo/sagas';
import DocumentNotesSaga from '../containers/DocumentNotes/sagas'




export default function* rootSaga() {
    yield all([
        call(CompanyInfoSaga),
        call(BankInfoSaga),
        call(DocumentNotesSaga)
    ])
}
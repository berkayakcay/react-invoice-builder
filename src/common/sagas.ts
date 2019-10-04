import { all, call } from 'redux-saga/effects';
import BankInfoSaga from '../containers/BankInfo/sagas';
import CompanyInfoSaga from '../containers/CompanyInfo/sagas';
import DocumentNotesSaga from '../containers/DocumentNotes/sagas';
import HtmlPreviewSaga from '../containers/HtmlPreview/sagas';
import LogoAndSignatureSaga from '../containers/LogoAndSignature/sagas';

export default function* rootSaga() {
  yield all([
    call(CompanyInfoSaga),
    call(BankInfoSaga),
    call(DocumentNotesSaga),
    call(LogoAndSignatureSaga),
    call(HtmlPreviewSaga)
  ]);
}

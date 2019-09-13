import { all, put, takeLatest } from 'redux-saga/effects';
import { showModal } from '../../common/actions';
import { ModalType } from '../../components/Modals/ModalRoot/types';
import { showLogoAndSignatureModal } from './actions';
import { LogoAndSignatureActionTypes } from './types';

function* handleLogoAndSignature(action: ReturnType<typeof showLogoAndSignatureModal>) {
  yield put(
    showModal({
      type: ModalType.LogoAndSignatureModal,
      props: {}
    })
  );
}

function* LogoAndSignatureSagas() {
  yield all([takeLatest(LogoAndSignatureActionTypes.SHOW_LOGOANDSIGNATURE_MODAL, handleLogoAndSignature)]);
}

export default LogoAndSignatureSagas;

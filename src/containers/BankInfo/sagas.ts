import { all, put, takeLatest } from 'redux-saga/effects';
import { showModal } from '../../common/actions';
import { ModalType } from '../../components/Modals/ModalRoot/types';
import { updateBankInfo, showBankInfoModal } from './actions';
import { BankInfoActionTypes } from './types';

export function* handleShowBankInfoModal(action: ReturnType<typeof showBankInfoModal>) {
  yield put(
    showModal({
      type: ModalType.BankInfoModal,
      props: {}
    })
  );
}

export function* handleUpdateBankInfo(action: ReturnType<typeof updateBankInfo>) {
  const { response } = yield action.payload;
  if (response) {
    yield put(response);
  }
}

export default function* BankInfoSaga() {
  yield all([
    takeLatest(BankInfoActionTypes.SHOW_BANKINFO_MODAL, handleShowBankInfoModal),
    takeLatest(BankInfoActionTypes.UPDATE_BANKINFO, handleUpdateBankInfo)
  ]);
}

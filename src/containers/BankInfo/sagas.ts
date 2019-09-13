import { all, put, takeLatest } from 'redux-saga/effects';
import { showModal } from '../../common/actions';
import { ModalType } from '../../components/Modals/ModalRoot/types';
import { addBankInfoTableRequest, showBankInfoModal } from './actions';
import { BankInfoActionTypes } from './types';

export function* handleShowBankInfoModal(action: ReturnType<typeof showBankInfoModal>) {
  yield put(
    showModal({
      type: ModalType.BankInfoModal,
      props: {}
    })
  );
}

export function* handleAddBankInfoTable(action: ReturnType<typeof addBankInfoTableRequest>) {
  const { response } = yield action.payload;
  if (response) {
    yield put(response);
  }
}

export default function* BankInfoSaga() {
  yield all([
    takeLatest(BankInfoActionTypes.SHOW_BANKINFO_MODAL, handleShowBankInfoModal),
    takeLatest(BankInfoActionTypes.ADD_BANKINFOTABLE_REQUEST, handleAddBankInfoTable)
  ]);
}

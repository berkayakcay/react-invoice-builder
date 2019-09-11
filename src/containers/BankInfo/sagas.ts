import { showBankInfoModal } from './actions';
import { showModal } from '../../common/actions';
import { ModalType } from '../../components/Modals/ModalRoot/types';
import { put, takeLatest, all } from 'redux-saga/effects';
import { BankInfoActionTypes } from './types';



export function* handleShowBankInfoModal(action: ReturnType<typeof showBankInfoModal>) {

    yield put(
        showModal({
            type: ModalType.BankInfoModal,
            props: {

            }
        })
    )
}



export default function* BankInfoSaga() {

    yield all([
        takeLatest(BankInfoActionTypes.SHOW_BANKINFO_MODAL, handleShowBankInfoModal)
    ])
}



import { showCompanyInfoModal } from "./actions";
import { all, put, takeLatest } from 'redux-saga/effects'
import { showModal } from '../../common/actions'
import { ModalType } from '../../components/Modals/ModalRoot/types'
import { CompanyInfoActionTypes } from "./types";



function* handleShowCompanyInfoModal(action: ReturnType<typeof showCompanyInfoModal>) {

    yield put(
        showModal({
            type: ModalType.CompanyInfoModal,
            props: {
            }
        })
    )
}

function* CompanyInfoSaga() {
    yield all([
        takeLatest(CompanyInfoActionTypes.SHOW_COMPANYINFO_MODAL, handleShowCompanyInfoModal)
    ])
}


export default CompanyInfoSaga 
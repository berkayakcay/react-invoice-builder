
import { showCompanyInfoModal, updateCompanyInfo } from "./actions";
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

export function* handleUpdateCompanyInfo(action: ReturnType<typeof updateCompanyInfo>) {
    const { response } = yield action.payload;
    if (response) {
        yield put(response)
    }
}

function* CompanyInfoSaga() {
    yield all([
        takeLatest(CompanyInfoActionTypes.SHOW_COMPANYINFO_MODAL, handleShowCompanyInfoModal),
        takeLatest(CompanyInfoActionTypes.UPDATE_COMPANYINFO, handleUpdateCompanyInfo)

    ])
}


export default CompanyInfoSaga 
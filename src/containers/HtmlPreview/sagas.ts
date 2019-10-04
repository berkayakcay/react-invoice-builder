import { all, put, takeLatest } from 'redux-saga/effects';
import { showModal } from '../../common/actions';
import { ModalType } from '../../components/Modals/ModalRoot/types';
import { showHtmlPreviewModal } from './actions';
import { HtmlPreviewActionTypes } from './types';

export function* handleShowHtmlPreviewModal(action: ReturnType<typeof showHtmlPreviewModal>) {
  yield put(
    showModal({
      type: ModalType.HtmlPreviewModal,
      props: {}
    })
  );
}

export default function* HtmlPreviewSaga() {
  yield all([takeLatest(HtmlPreviewActionTypes.SHOW_HTMLPREVIEW_MODAL, handleShowHtmlPreviewModal)]);
}

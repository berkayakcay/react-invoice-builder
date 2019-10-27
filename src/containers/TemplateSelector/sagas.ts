import { all, put, takeLatest } from 'redux-saga/effects';
import { showModal } from '../../common/actions';
import { ModalType } from '../../components/Modals/ModalRoot/types';
import { showTemplateSelectorModal } from './actions';
import { TemplateSelectorActionTypes } from './types';

export function* handleShowTemplateSelectoryModal(action: ReturnType<typeof showTemplateSelectorModal>) {
  yield put(
    showModal({
      type: ModalType.HtmlPreviewModal,
      props: {}
    })
  );
}

export default function* TemplateSelectorSaga() {
  yield all([takeLatest(TemplateSelectorActionTypes.SHOW_TEMPLATE_SELECTOR_MODAL, handleShowTemplateSelectoryModal)]);
}

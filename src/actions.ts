import { action } from 'typesafe-actions';
import { ModalRootActionTypes, ModalData } from './components/Modals/ModalRoot/types';

export const showModal = (data: ModalData) => action(ModalRootActionTypes.SHOW_MODAL, data)
export const hideModal = () => action(ModalRootActionTypes.HIDE_MODAL)

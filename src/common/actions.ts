import { action } from 'typesafe-actions';
import { ModalRootActionTypes, ModalData } from '../components/Modals/ModalRoot/types';

export const showModal = (payload: ModalData) => action(ModalRootActionTypes.SHOW_MODAL, payload)
export const hideModal = () => action(ModalRootActionTypes.HIDE_MODAL)

export enum ModalRootActionTypes {
  SHOW_MODAL = "@@common/SHOW_MODAL",
  HIDE_MODAL = "@@common/HIDE_MODAL"
}

export interface IModalOpenState {
  modalName: string;
  openedStateName: string;
  value: boolean;
}

export enum ModalType {}

export interface ModalData {
  type?: ModalType | null;
  open?: boolean;
  props?: any;
}

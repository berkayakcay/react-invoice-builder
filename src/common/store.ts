import { Dispatch, Action, AnyAction } from "redux";
import companyInfoReducer from "../containers/CompanyInfo/reducers";
import bankInfoReducer from "../containers/BankInfo/reducers"
import documentNotesReducer from '../containers/DocumentNotes/reducers'
import modalReducer from '../components/Modals/ModalRoot/reducers'
import { ModalData } from '../components/Modals/ModalRoot/types';

export interface ApplicationState {
  modal: ModalData
}

export const reducers: any = {
  modal: modalReducer,
  companyInfo: companyInfoReducer,
  bankInfo: bankInfoReducer,
  documentNotes: documentNotesReducer
};

export interface ConnectedReduxProps<A extends Action = AnyAction> {
  dispatch: Dispatch<A>
}


// This type can be used as a hint on action creators so that its 'dispatch' and 'getState' params are
// correctly typed to match your store.
export interface AppThunkAction<TAction> {
  (dispatch: (action: TAction) => void, getState: () => ApplicationState): void
}

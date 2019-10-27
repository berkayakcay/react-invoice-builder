import { Action, AnyAction, Dispatch } from 'redux';
import modalReducer from '../components/Modals/ModalRoot/reducers';
import { ModalData } from '../components/Modals/ModalRoot/types';
import bankInfoReducer from '../containers/BankInfo/reducers';
import companyInfoReducer from '../containers/CompanyInfo/reducers';
import documentNotesReducer from '../containers/DocumentNotes/reducers';
import htmlPreviewReducer from '../containers/TemplateSelector/reducers';
import logoAndSignatureReducer from '../containers/LogoAndSignature/reducers';

export interface ApplicationState {
  modal: ModalData;
}

export const reducers: any = {
  modal: modalReducer,
  companyInfo: companyInfoReducer,
  bankInfo: bankInfoReducer,
  documentNotes: documentNotesReducer,
  logoAndSignature: logoAndSignatureReducer,
  htmlPreview: htmlPreviewReducer,
};

export interface ConnectedReduxProps<A extends Action = AnyAction> {
  dispatch: Dispatch<A>;
}

// This type can be used as a hint on action creators so that its 'dispatch' and 'getState' params are
// correctly typed to match your store.
export interface AppThunkAction<TAction> {
  (dispatch: (action: TAction) => void, getState: () => ApplicationState): void;
}

import { ModalRootActionTypes, ModalData } from "./types";
import { Reducer } from "redux";

const initialState: ModalData = {
  props: {},
  type: null,
  open: false
};

const reducer: Reducer<ModalData> = (state = initialState, action) => {
  switch (action.type) {
    case ModalRootActionTypes.SHOW_MODAL:
      return {
        ...state,
        type: action.payload.type,
        open: true,
        props: action.payload.props
      };
    case ModalRootActionTypes.HIDE_MODAL: {
      return { ...state, open: false, type: null, props: {} };
    }
    default: {
      return state;
    }
  }
};

export default reducer;

import { MODAL_COMPANYINFO, UPDATE_COMPANYINFO } from '../actions/companyInfoAction';
export const initialState = {
  modalVisible: false,
  companyInfo: {
    name: 'BBBBBB',
    registerNumber: '',
    address: '',
    city: '',
    district: ''
  }
};

export default (state = initialState, action) => {
  switch (action.type) {
    case UPDATE_COMPANYINFO:
      return {
        ...state,
        companyInfo: action.payload
      };
    case MODAL_COMPANYINFO:
      return {
        ...state,
        modalVisible: action.payload
      };
    default:
      return state;
  }
};

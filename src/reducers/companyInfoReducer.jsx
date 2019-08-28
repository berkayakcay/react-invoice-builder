import { UPDATE_COMPANYINFO } from '../actions/companyInfoAction'
export const initialState = {
    companyInfo: {
        name: 'aAAAAAa',
        registerNumber: '',
        address: '',
        city: '',
        district: '',
    }
}


export default (state = initialState, action) => {
    switch (action.type) {
        case UPDATE_COMPANYINFO:
            return {
                ...state,
                fetching: false,
                companyInfo: action.payload
            };
        default:
            return state;
    }
}
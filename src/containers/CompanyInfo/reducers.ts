import { Reducer } from "redux";
import { CompanyInfoModel } from "../../common/models";
import { initialState, CompanyInfoActionTypes } from "./types";

const reducer: Reducer<CompanyInfoModel> = (state = initialState, action) => {
  switch (action.type) {
    case CompanyInfoActionTypes.UPDATE_COMPANYINFO: {
      return action.payload
    }
    default:
      return state;
  }
};

export default reducer;

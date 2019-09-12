import { Reducer } from "redux";
import { CompnayInfoModel } from "../../common/models";
import { initialState } from "./types";

const reducer: Reducer<CompnayInfoModel> = (state = initialState, action) => {
  switch (action.type) {
    default:
      return state;
  }
};

export default reducer;

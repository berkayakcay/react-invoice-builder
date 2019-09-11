import { Reducer } from "redux";
import { BankInfoModel } from "../../common/models";
import { initialState } from "./types";

const reducer: Reducer<BankInfoModel> = (state = initialState, action) => {
    switch (action.type) {
        default:
            return state;
    }
};

export default reducer;

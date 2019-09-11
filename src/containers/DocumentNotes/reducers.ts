import { Reducer } from "redux";
import { DocumentNotesModel } from '../../common/models'
import { initialState } from './types'

const reducer: Reducer<DocumentNotesModel> = (state = initialState, action) => {
    switch (action.type) {
        default:
            return state
    }
}

export default reducer;
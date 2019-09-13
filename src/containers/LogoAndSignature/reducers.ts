import { Reducer } from 'redux';
import { LogoAndSignatureModel } from '../../common/models';
import { initialState } from './types';

const reducer: Reducer<LogoAndSignatureModel> = (state = initialState, action) => {
  switch (action.type) {
    default:
      return state;
  }
};

export default reducer;

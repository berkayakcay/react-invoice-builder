import { combineReducers } from 'redux';
import companyInfo from './companyInfoReducer';

export default combineReducers({
  companyInfo: companyInfo
});

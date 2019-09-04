import { combineReducers, applyMiddleware, createStore } from "redux";
import companyInfoReducer from "./containers/CompanyInfo/reducers";

import thunk from "redux-thunk";
import createSagaMiddleware from 'redux-saga'
import logger from "redux-logger";

import { composeWithDevTools } from "redux-devtools-extension";
import rootSaga from './sagas';

const rootReducer = combineReducers({
  companyInfo: companyInfoReducer
});

export type AppState = ReturnType<typeof rootReducer>;

export default function configureStore() {
  const sagaMiddleware = createSagaMiddleware()
  const middlewares = [thunk, sagaMiddleware, logger];
  const middlewareEnhancer = applyMiddleware(...middlewares);


  const store = createStore(
    rootReducer,
    composeWithDevTools(middlewareEnhancer)
  );

  sagaMiddleware.run(rootSaga)

  return store;
}

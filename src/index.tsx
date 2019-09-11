import React from "react";
import ReactDOM from "react-dom";
import App from "./App";
import { createBrowserHistory } from "history";

import { Provider } from "react-redux";
import { ApplicationState } from "./common/store";
import configureStore from "./common/configureStore";
import sagas from "./common/sagas";
import ModalRoot from "./components/Modals/ModalRoot";

const history = createBrowserHistory();

const initialState = (window as any).initialReduxState as ApplicationState;
const { store, sagaMiddleware } = configureStore(history, initialState);
sagaMiddleware.run(sagas);

ReactDOM.render(
  <Provider store={store}>
    <App />
    <ModalRoot />
  </Provider>,
  document.getElementById("root")
);

export { store, history };

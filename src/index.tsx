import React from "react";
import ReactDOM from "react-dom";
import App from "./App";
import { createBrowserHistory } from "history";

import { Provider } from "react-redux";
import { ApplicationState } from "./store";
import configureStore from "./configureStore";
import * as serviceWorker from "./serviceWorker";
import sagas from "./sagas";

const history = createBrowserHistory();
const initialState = (window as any).initialReduxState as ApplicationState;
const { store, sagaMiddleware } = configureStore(history, initialState);
sagaMiddleware.run(sagas);

ReactDOM.render(
  <Provider store={store}>
    <App />
  </Provider>,
  document.getElementById("root")
);

serviceWorker.register();
export { store, history };

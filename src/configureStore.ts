import { History } from 'history'
import {
    applyMiddleware,
    combineReducers,
    compose,
    createStore,
    Store,
    StoreEnhancer,
    StoreEnhancerStoreCreator
} from 'redux'
import thunk from 'redux-thunk'
import { ApplicationState, reducers } from './store'
import logger from 'redux-logger'
import createSagaMiddleware from 'redux-saga'


export default function configureStore(history: History, initialState?: ApplicationState) {
    const windowIfDefined = typeof window === 'undefined' ? null : (window as any)
    const devToolsExtension = windowIfDefined && (windowIfDefined.__REDUX_DEVTOOLS_EXTENSION__ as () => StoreEnhancer)
    const sagaMiddleware = createSagaMiddleware()


    const middlewares = [thunk, sagaMiddleware, logger];
    const createStoreWithMiddleware = compose<StoreEnhancerStoreCreator<any>>(
        applyMiddleware(...middlewares),
        devToolsExtension
            ? devToolsExtension()
            : <S>(next: StoreEnhancerStoreCreator<S>) => next
    )(createStore)

    // Combine all reducers and instantiate the app-wide store instance
    const allReducers = buildRootReducer(reducers, history)
    const store = createStoreWithMiddleware(allReducers, initialState) as Store<ApplicationState>
    return { store, sagaMiddleware }
}

function buildRootReducer(allReducers: any, history: History) {
    return combineReducers<ApplicationState>(
        Object.assign({}, allReducers, {
        })
    )
}

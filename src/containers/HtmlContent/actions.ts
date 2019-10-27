import { action } from 'typesafe-actions';
import { HtmlContentActionTypes } from './types';

export const selectedProduct = (payload: boolean) => action(HtmlContentActionTypes.SELECTED_PRODUCT, payload);

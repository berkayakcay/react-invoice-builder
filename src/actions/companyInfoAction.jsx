export const UPDATE_COMPANYINFO = 'UPDATE_COMPANYINFO';
export const MODAL_COMPANYINFO = 'MODAL_COMPANYINFO';

export function updateCompanyInfo(companyInfo) {
  return dispatch => {
    dispatch({
      type: UPDATE_COMPANYINFO,
      payload: companyInfo
    });
  };
}

export function modalCompanyInfo(modalVisible) {
  return dispatch => {
    dispatch({
      type: MODAL_COMPANYINFO,
      payload: modalVisible
    });
  };
}

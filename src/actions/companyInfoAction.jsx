
export const UPDATE_COMPANYINFO = 'UPDATE_COMPANYINFO';

export function updateCompanyInfo(companyInfo) {
  return dispatch => {
    dispatch({
      type: UPDATE_COMPANYINFO,
      payload: companyInfo
    });
  };
}
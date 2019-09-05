export const initialState = {
  companyInfo: {
    name: "",
    registerNumber: "",
    address: "",
    city: "",
    district: ""
  }
};

export default (state = initialState, action) => {
  switch (action.type) {
    default:
      return state;
  }
};

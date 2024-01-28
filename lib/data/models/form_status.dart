enum AuthStatus {
  pure,
  authenticated,
  unauthenticated,
}

enum FormStatus {
  pure,
  loading,
  success,
  failure,

  ///------------------------- USER PROFILE  -----------------------------------
  //Get all category
  getCategoryInProgress,
  getCategoryInSuccess,
  getCategoryInFailure,

  ///------------------------- USER PROFILE  -----------------------------------
  //Get user profile
  getUserProfileInProgress,
  getUserProfileInSuccess,
  getUserProfileInFailure,

  ///-----------------------------  AUTH  --------------------------------------
  //Client login
  loginInProgress,
  loginInSuccess,
  loginInFailure,

  //Client register
  registerInProgress,
  registerInSuccess,
  registerInFailure,

  //Check client phone number
  checkPhoneNumberInProgress,
  checkPhoneNumberInSuccess,
  checkPhoneNumberInFailure,

  ///-----------------------------  ADDRESS  -----------------------------------
  //Create address
  creatingAddressInProgress,
  creatingAddressInSuccess,
  creatingAddressInFailure,

  //Get address
  gettingAddressInProgress,
  gettingAddressInSuccess,
  gettingAddressInFailure,

  //Delete address
  deletingAddressInProgress,
  deletingAddressInSuccess,
  deletingAddressInFailure,

  //Update address
  updateAddressInProgress,
  updateAddressInSuccess,
  updateAddressInFailure,
}

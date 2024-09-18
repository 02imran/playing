

class AppConstantConfig {

  static const module = "JW9tc0ByZWRsdGQl";
  static const imageUploadModule = "JW9tc0BBZWRsdGQl";
  static const takaSymbol = "৳ ";
  static const prefix = "88";
  static const prefixWithPlus = "+88 ";
  static const phoneNumberLength = 11;
  static const nidLength = 17;
  static const language = 'bn';  //"Accept-Language": AppConstantConfig.language
  static const bearer = "Bearer ";
  static const basic = "basic ";
  static const merchant = "MERCHANT";
  static const purchaseSms = "8801700000011";

  static const telegram_id = "5677193209";
  static const telegram_group_id = "-1002037399294";
  static const telegram_token = "7120928447:AAHZZw6ZlfL-jK1_mYL5lGTn0hpdN-jXBIU";


  /// KYC
  static num isKycVerified = (-0);
  static num kycVerified = 1;
  static var nidSelfieImage = "nidSelfieImage";
  static var nidDob = "nidDob";
  static var nidNumbers = "nidNumbers";
  static var nidFrontImage = "nidFrontImage";
  static var nidBackImage = "nidBackImage";
  static var nidLicenseImage = "nidLicenseImage";
  static bool clickedFromDashboardKyc = false;

  static bool routeFromNIdScreen = true;
  static num isAdvanceBusinessInfoVerified = (-1);
  /// KYC

  /// Transaction History
  static var maxNumberOfTransactionHistoryDataItemToLoad = "10";
  static num minimumTransactionAmount = 20.0;
  static num minimumTransactionAmount0Tk = 0.0;


  // static const stockToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTcwMjg4MzQyMjQ2OSwiYXV0aF90eXBlIjoibWVyY2hlbnQiLCJVSUQiOiIxNzAyODgzNDIyNDY5IiwiYnVzaW5lc3NfaWQiOiIxNzAyODgzNDIyNDY5IiwianRpIjoiMTcwMjg4MzY1NTI2M18weFI0b0tPQU1rIiwiaWF0IjoxNzAyODgzNjU1LCJleHAiOjE3ODA2NDM2NTV9.sSf-RvtoyBefpASA95A6VnjO7p8CCmSa9SsMcnRmKig";

  static var productStatusActive = 1; /// 0 = inactive, 1 = active, 2 = published, 3 = unpublished

  static var paymentAccountTypeCash = "cash"; /// "13" While creating new product

  static int invalidIndex = (-1);
  static int invalidID = (-2);

  static var ascendingOrder = "ASC";
  static var descendingOrder = "DESC";

  static num advanceBusinessInfoOrLimitUpdateDokanerVideoSizeLimit = 10;


  static var banglalinkPrefix1 = "019";
  static var banglalinkPrefix2 = "014";
  static var airtelPrefix1 = "016";
  static var robiPrefix1 = "018";
  static var teletalkPrefix1 = "015";
  static var grameenPhonePrefix1 = "017";
  static var grameenPhonePrefix2 = "013";
  static var skittoPrefix1 = "017";

  static var topUpDestinationMSISDN = "9800000104";

  static var topUpKeyword = "TPUP";

  static var destinationMSISDNPrefix = "AEONCAM";

  static var amlCurrency = "XCD";

  static bool syncInProgress = false;

  static bool addingNewProductFromPOSScreen = false;
  static bool addingNewProductFromComboCreateProductListScreen = false;
  static bool addingNewProductFromDashboardSalesByProductScreen = false;

  String urlForAgreementWhileDoingKyc = "https://www.smanager.xyz/termsandconditions/";
  String termsAndConditionsUrl = "https://www.smanager.xyz/termsandconditions/";
  static String shebaCustomerCareNumner = "16516";

  static Object cashVoucherType = "cash";
  static Object discountVoucherType = "discount";
  static Object productVoucherType = "product";

  static var paymentAccountTypeID = "13"; // 13 == Cash type

}

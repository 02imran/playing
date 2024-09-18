

class UrlUtils {

  ///Sheba Pay
  static String shebaPayBaseUrl = "http://digi.redltd.tech:4050/"; //

  ///App Config
  static String smanagerConfigUrl =
      "${shebaPayBaseUrl}registration/accountregistration/user_app_config";

  /// Integration
  static String smanagerIntegrationUrl =
      "${shebaPayBaseUrl}jrxapi/mninfo/integration_config";

  ///App MerchantRilacAuth
  static String getMerchantRilacAuthUrl =
      "${shebaPayBaseUrl}registration/accountregistration/MerchantRilacAuth";

  ///Sheba Pay registration
  static String appRegisterUrl =
      "${shebaPayBaseUrl}registration/accountregistration/appregister";

  static String validateOTPUrl =
      "${shebaPayBaseUrl}registration/accountregistration/ValidateOtp";

  static String sManagerLoginValidateUrl =
      "${shebaPayBaseUrl}registration/accountregistration/v2/SmanagerLoginValidateOtp";

  static String sManagerDivisionUrl =
      "${shebaPayBaseUrl}registration/location/getDivision";

  static String sManagerDistrictUrl = "${shebaPayBaseUrl}registration/location";



}


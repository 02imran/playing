import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod/config/app_constant_config.dart';
import 'package:river_pod/main_screen/login_screen/login_repository/login_repo.dart';
import '../models/body/app_register_body.dart';
import '../models/response/app_register_response.dart';

final phoneNumberProvider = StateProvider<String>((ref) => '');
final appRegResponseCodeProvider = StateProvider<int>((ref) => 0);
final isSmanagerOtpValidateProvider = StateProvider<bool>((ref) => false);

class LoginNotifier extends StateNotifier<AsyncValue<void>> {
  LoginNotifier(this.ref) : super(const AsyncValue.loading());

  final Ref ref;
  final _loginRepo = LoginRepository();



  void checkLogin(BuildContext context, GlobalKey<FormState> loginKey, String phone, bool mounted) async {
  
      final isValid = loginKey.currentState?.validate() ?? false;
      if (!isValid) {
        return;
      }
      loginKey.currentState?.save();

      // CustomAlertPopUp.showLoadingDialog(context: context);

      var body = AppRegisterBody(
        username: AppConstantConfig.prefix + phone,
        appVersion: "1.0",
        deviceId: "q",
        fullName: "q",
        osVersion: "13",
        phoneBrand: "q",
        phoneOs: "q",
        lang: AppConstantConfig.language,
      );

      var data = await _loginRepo.getAppReg(body);

      if (!mounted) return;
      // CustomAlertPopUp.hideLoadingDialog(context: context);

      if ((data.password ?? "").isNotEmpty) {
        // PrefUtils.storeMsisdnPassword(msisdn: AppConstantConfig.prefix + phone, password: data.password ?? "");

        if (data.responseCode == 100 || data.responseCode == 103) {
          // ref.read(isSmanagerOtpValidateProvider).state = true;
          // context.push(RouterPath.otpScreenPath, extra: ref.read(isSmanagerOtpValidateProvider).state);
        } else if (data.responseCode == 101) {
          // CustomAlertPopUp.errorAlert(
          //   context: context,
          //   message: ValidationManager.deviceRegisteredMsg,
          //   onOkTapFunction: () {},
          // );
        } else if (data.responseCode == 102) {
          if (data.User_Scope?.toLowerCase() == "m") {
            ref.read(isSmanagerOtpValidateProvider.notifier).state = false;
            // context.push(RouterPath.otpScreenPath, extra: ref.read(isSmanagerOtpValidateProvider));
          } else {
            var userType = "";
            if (data.User_Scope?.toLowerCase() == "c") {
              userType = "গ্রাহক";
            } else if (data.User_Scope?.toLowerCase() == "a") {
              userType = "এজেন্ট";
            }
            // CustomAlertPopUp.errorAlert(
            //   context: context,
            //   message: ValidationManager.sorryUAreNotAuthorizedToLoginToThisAppUsingThisPhoneNo1 +
            //       userType +
            //       ValidationManager.sorryUAreNotAuthorizedToLoginToThisAppUsingThisPhoneNo2,
            //   onOkTapFunction: () {
            //     clearData();
            //   },
            // );
          }
        } else {
          // CustomAlertPopUp.errorAlert(
          //   context: context,
          //   message: data.responseDescription ?? ValidationManager.contactSupport,
          //   onOkTapFunction: () {},
          // );
        }
      } else if (data.isSuccess == false) {
        var errorMsgList = data.errors?.message
            ?.expand((errorMessage) => errorMessage.messages)
            .toList() ?? [];
        var formatErrorMessageList = errorMsgList.join('\n');
        // CustomAlertPopUp.errorAlert(
        //   context: context,
        //   message: data.responseDescription ?? formatErrorMessageList,
        //   onOkTapFunction: () {},
        // );
      } else {
        // CustomAlertPopUp.errorAlert(
        //   context: context,
        //   message: data.responseDescription ?? "",
        //   onOkTapFunction: () {},
        // );
      }
    
  }

  void generateFCMTokenAsDeviceToken() async {
    
  }

  // String? validatePhone(BuildContext context, String value) {
  //   if (value.isEmpty) {
  //     return ValidationManager.empty_field;
  //   } else if (!value.startsWith("0")) {
  //     return ValidationManager.phoneNoShouldStartWithZeroDigit;
  //   } else if (value.length < 11) {
  //     return ValidationManager.phoneNoShouldBe11Digits;
  //   } else {
  //     // hideKeyboard(context);
  //   }

  //   return null;
  // }

  void _printData(String deviceIdData) {
    debugPrint("deviceID ::: $deviceIdData");
  }
}

final loginProvider = StateNotifierProvider<LoginNotifier, AsyncValue<void>>((ref) {
  return LoginNotifier(ref);
});

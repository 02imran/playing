

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:river_pod/api_service/api_service.dart';
import 'package:river_pod/api_service/dio_client.dart';
import 'package:river_pod/config/app_constant_config.dart';
import 'package:river_pod/config/exception.dart';
import '../models/body/app_register_body.dart';
import '../models/response/app_register_response.dart';


class LoginRepository {

  Future<AppRegisterResponse> getAppReg(AppRegisterBody getAppOtpBody) async{

    if (kDebugMode) {
      print(UrlUtils.appRegisterUrl);
    }

    try{
      Response response = await DioClient().dio.post(UrlUtils.appRegisterUrl, data: getAppOtpBody.toJson(),
          options: Options(headers: {'Module': AppConstantConfig.module,'Content-Type':'application/json'},));
      if (kDebugMode) {
        print("AppRegisterResponse ${response.data}");
      }
      return AppRegisterResponse.fromJson(response.data);
    }catch(e){
      var errorMessage = e.toString();
      if (e is DioException) {
        errorMessage = DioExceptions.fromDioError(e).toString();
      }

      if (kDebugMode) {
        print(errorMessage);
      }

      // Handle error response mapping to AppRegisterResponse
      if (e is DioException && e.response != null) {
        final errorResponse = e.response!;

        if (errorResponse.statusCode == 422) {
          final errorData = errorResponse.data ?? {};
          final appRegisterResponse = AppRegisterResponse.fromJson(errorData);
          return appRegisterResponse;
        }
      }

      // Return a default response in case of an unexpected error
      return AppRegisterResponse();
    }
  }


}
import 'package:dio/dio.dart';


class DioExceptions implements Exception {

  DioExceptions.fromDioError(DioException dioError) {


    switch (dioError.type) {
      case DioExceptionType.cancel:
        message = "Request to API server was cancelled";
        break;
      case DioExceptionType.connectionTimeout:
        message = "Connection timeout with API server";
        // systemMaintenance();
        break;
      case DioExceptionType.receiveTimeout:
        message = "Receive timeout in connection with API server";
        // systemMaintenance();
        break;
      case DioExceptionType.sendTimeout:
        message = "Send timeout in connection with API server";
        // systemMaintenance();
        break;
      case DioExceptionType.connectionError:
        message = "connectionError";
        // InternetConnectivity().showInternetSnackbar();
        // systemMaintenance();
        break;
      case DioExceptionType.badResponse:
        message = _handleError(dioError.response!.statusCode!, dioError.response!.data);
        break;
      default:
        message = "Something went wrong";
        break;
    }
  }

  String message='';

  String _handleError(int statusCode, dynamic error) {
    switch (statusCode){
      case 400:
        return "Bad Request";
      case 401:
        return "Session Expired Please Login";
      case 403:

        return "Session Expired Please Login";
      case 404:
        return "Server Not Found";
      case 500:

        return 'Internal server error';
      case 502:

        return 'An invalid response was received from the upstream server';
      default:
        return 'Oops something went wrong';
    }
  }

  @override
  String toString() => message;

}
class AppRegisterResponse {
  final bool? isSuccess;
  final int? statusCode;
  final String? password;
  final bool? isUserExist;
  final num? walletType;
  final num? responseCode;
  final String? responseDescription;
  final String? transactionId;
  final String? OTPDiff;
  Errors? errors;
  final String? message;
  final String? User_Scope;

  AppRegisterResponse({
    this.isSuccess,
    this.statusCode,
    this.password,
    this.isUserExist,
    this.walletType,
    this.responseCode,
    this.responseDescription,
    this.transactionId,
    this.OTPDiff,
    this.errors,
    this.message,
    this.User_Scope,
  });

  factory AppRegisterResponse.fromJson(Map<String, dynamic> json) {
    return AppRegisterResponse(
      isSuccess: json['issuccess'],
      statusCode: json['statusCode'],
      password: json['Password'],
      isUserExist: json['IsUserExist'],
      walletType: json['WalletType'],
      responseCode: json['ResponseCode'],
      responseDescription: json['ResponseDescription'],
      transactionId: json['Transaction_Id'],
      OTPDiff: json['OTPDiff'],
      errors: Errors.fromJson(json['errors'] ?? {}),
      message: json['message'],
      User_Scope: json['User_Scope'],
    );
  }
}

class Errors {
  int statusCode;
  List<ErrorMessage> message;
  String error;

  Errors({
    required this.statusCode,
    required this.message,
    required this.error,
  });

  factory Errors.fromJson(Map<String, dynamic> json) {
    return Errors(
      statusCode: json['statusCode'] ?? 0,
      message: (json['message'] as List<dynamic>? ?? [])
          .map((e) => ErrorMessage.fromJson(e))
          .toList(),
      error: json['error'] ?? "",
    );
  }
}

class ErrorMessage {
  String field;
  List<String> messages;

  ErrorMessage({
    required this.field,
    required this.messages,
  });

  factory ErrorMessage.fromJson(Map<String, dynamic> json) {
    return ErrorMessage(
      field: json.keys.first,
      messages: (json[json.keys.first] as List<dynamic>? ?? [])
          .map((e) => e.toString())
          .toList(),
    );
  }
}

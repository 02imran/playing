/// Username : "11234567880"
/// FullName : "804832c13b0613a9"
/// App_Version : "1.0.0"
/// Phone_Brand : "sdk_gphone64_x86_64"
/// Phone_Os : "android"
/// Os_Version : "13"
/// LANG : "EN"
/// Device_Id : "dT5lYiCjQKCrr3a4znYtRK:APA91bFzdgiNZnzy6MT-wHl7J73DeFCH6C0RCFc5ucPME_R2Sse5YKsIgDqc_oyd5byw7aelZnToAHZKQyk239EZFZxs9SL0VMSbeg-15_jR1IgQjnfmzWSJMpt89WkBqFM6w-UHZGzd"

class AppRegisterBody {
  AppRegisterBody({
    String? username,
    String? fullName,
    String? appVersion,
    String? phoneBrand,
    String? phoneOs,
    String? osVersion,
    String? lang,
    String? deviceId,}){
    _username = username;
    _fullName = fullName;
    _appVersion = appVersion;
    _phoneBrand = phoneBrand;
    _phoneOs = phoneOs;
    _osVersion = osVersion;
    _lang = lang;
    _deviceId = deviceId;
  }

  AppRegisterBody.fromJson(dynamic json) {
    _username = json['Username'];
    _fullName = json['FullName'];
    _appVersion = json['App_Version'];
    _phoneBrand = json['Phone_Brand'];
    _phoneOs = json['Phone_Os'];
    _osVersion = json['Os_Version'];
    _lang = json['LANG'];
    _deviceId = json['Device_Id'];
  }
  String? _username;
  String? _fullName;
  String? _appVersion;
  String? _phoneBrand;
  String? _phoneOs;
  String? _osVersion;
  String? _lang;
  String? _deviceId;
  AppRegisterBody copyWith({  String? username,
    String? fullName,
    String? appVersion,
    String? phoneBrand,
    String? phoneOs,
    String? osVersion,
    String? lang,
    String? deviceId,
  }) => AppRegisterBody(  username: username ?? _username,
    fullName: fullName ?? _fullName,
    appVersion: appVersion ?? _appVersion,
    phoneBrand: phoneBrand ?? _phoneBrand,
    phoneOs: phoneOs ?? _phoneOs,
    osVersion: osVersion ?? _osVersion,
    lang: lang ?? _lang,
    deviceId: deviceId ?? _deviceId,
  );
  String? get username => _username;
  String? get fullName => _fullName;
  String? get appVersion => _appVersion;
  String? get phoneBrand => _phoneBrand;
  String? get phoneOs => _phoneOs;
  String? get osVersion => _osVersion;
  String? get lang => _lang;
  String? get deviceId => _deviceId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Username'] = _username;
    map['FullName'] = _fullName;
    map['App_Version'] = _appVersion;
    map['Phone_Brand'] = _phoneBrand;
    map['Phone_Os'] = _phoneOs;
    map['Os_Version'] = _osVersion;
    map['LANG'] = _lang;
    map['Device_Id'] = _deviceId;
    return map;
  }

}
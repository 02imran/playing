import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:river_pod/main_screen/post_screen/models/post_response.dart';

class Repository {
  final _dio = Dio();
  static const baseUrl = "https://jsonplaceholder.typicode.com/posts";

  Future<PostResponseModel> getList() async {
    try {
      Response response = await _dio.get(baseUrl,
          options: Options(
            headers: {
              'Content-Type': 'application/json',
            },
          ));
      return PostResponseModel.fromJson(response.data);
    } catch (e) {
      log(e.toString());
      return PostResponseModel();
    }
  }
}

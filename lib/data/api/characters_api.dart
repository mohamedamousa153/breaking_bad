import 'dart:convert';

import 'package:dio/dio.dart';

import '../../constants/strings.dart';

class CharactersApi {
  late Dio dio;
  CharactersApi() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 20 * 1000,
      receiveTimeout: 20 * 1000,
    );

    dio = Dio(options);
  }
  Future<List<dynamic>> getAllCharaters() async {
    try {
      Response response = await dio.get('characters');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return <dynamic>[];
    }
  }
}

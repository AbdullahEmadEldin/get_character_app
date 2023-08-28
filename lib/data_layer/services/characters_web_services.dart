import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_character_app/Utilities/api_urls.dart';

class CharactersWebServices {
  late Dio dio;
  CharactersWebServices() {
    BaseOptions options = BaseOptions(
        baseUrl: ApiUrl.baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20));
    dio = Dio(options);
  }

  Future<List<dynamic>> getAllCharacters() async {
    try {
      Response response = await dio.get('character');
      return response.data;
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }
}

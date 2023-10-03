import 'dart:async';

import 'package:dio/dio.dart';

import 'network_exceptions.dart';

class DioClient {
  final Dio _dio = Dio();

  Future<Response> get(String url) async {
    try {
      final response = await _dio.get(url);
      if (response.statusCode == 200) {
      } else {
        throw ServerException('Server error occurred', response.statusCode);
      }
      return response;
    } on DioException catch (error) {
      if (error.type == DioExceptionType.connectionTimeout || error.type == DioExceptionType.receiveTimeout) {
        throw TimeoutException('Request timed out', 408);
      } else if (error.type == DioExceptionType.unknown) {
        throw NetworkException('Network error occurred', 0);
      } else {
        throw ApiException('An error occurred', 500);
      }
    }
  }

  Future<Response> post(String url) async {
    try {
      final response = await _dio.post(url);
      if (response.statusCode == 200) {
      } else {
        throw ServerException('Server error occurred', response.statusCode);
      }
      return response;
    } on DioException catch (error) {
      if (error.type == DioExceptionType.connectionTimeout || error.type == DioExceptionType.receiveTimeout) {
        throw TimeoutException('Request timed out', 408);
      } else if (error.type == DioExceptionType.unknown) {
        throw NetworkException('Network error occurred', 0);
      } else {
        throw ApiException('An error occurred', 500);
      }
    }
  }
}

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class DioProvider {
  @singleton
  Dio dio() {
    Dio dio = Dio();
    if (kDebugMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          responseBody: true,
          requestBody: true,
        ),
      );
    }
    return dio;
  }
}

@module
abstract class LoggerProvider {
  @singleton
  Logger logger() {
    Logger logger = Logger();
    return logger;
  }
}

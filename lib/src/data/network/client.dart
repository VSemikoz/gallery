import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class BaseClient {
  static const _baseUrl = "https://pixabay.com/api/";
  static const _key = "25230076-236f3a69d72f61c45f68f0167";

  static Dio client() {
    final client = Dio(
      BaseOptions(
        baseUrl: _baseUrl,
        connectTimeout: 10000,
        receiveTimeout: 10000,
        sendTimeout: 10000,
      ),
    );

    client.interceptors.addAll([
      PrettyDioLogger(
        request: true,
        requestBody: true,
        responseBody: true,
      ),
      InterceptorsWrapper(onRequest: (options, handler) {
        options.queryParameters["key"] = _key;
        return handler.next(options);
      }),
    ]);
    return client;
  }
}

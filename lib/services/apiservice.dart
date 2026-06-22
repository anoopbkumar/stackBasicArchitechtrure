import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class ApiService {
  late Dio _dio;
  final logger = Logger();

  ApiService() {
    _dio = Dio(
      BaseOptions(
        baseUrl: "",
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json",
        },
      ),
    );

    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        logger.i("url:${options.path}");
        logger.i("method:${options.method}");
        logger.i("baseurl:${options.baseUrl}");
        logger.i("headers:${options.headers}");
        logger.i("data:${options.data}");
        handler.next(options);
      },
      onResponse: (response, handler) {
        logger.i("statusCode:${response.statusCode}");
        logger.i("resp:${response.data}");
        handler.next(response);
      },
      onError: (error, handler) {
        logger.e("err:${error.message}");
        logger.e("stack trace:${error.stackTrace}");
        handler.next(error);
      },
    ));
  }


}
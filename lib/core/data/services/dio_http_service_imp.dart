import 'package:dio/dio.dart';
import 'package:dio/src/response.dart';
import 'package:movieapp/core/domain/services/http_service.dart';

class DioHttpServiceImp implements HttpService {
  late Dio _dio;
  DioHttpServiceImp() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.themoviedb.org/4/',
        headers: {
          'content-type': 'application/json;charset=utf-8',
          'authorization':
              'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4ZWNmMzk0ZjM0NjM0ZjgzM2M2NGE2MmNiYzk0MjRlMiIsInN1YiI6IjYyMGU4YzMzOTY2MWZjMDAxYjIwYjRlMCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.5Yna-Wrj6F0UNT1Joz7-4VtEx29TECKj2oHcRwrAczI'
        },
      ),
    );
  }
  @override
  Future<Response<T>> get<T>(String path,
      {Map<String, dynamic>? queryParameters}) {
    return _dio.get<T>(
      path,
      queryParameters: queryParameters,
    );
  }
}

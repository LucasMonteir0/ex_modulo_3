import 'package:dio/dio.dart';
import 'package:internal_storage/ex_2/apod_model.dart';

class ApodRepository {
  final _dio = Dio();
  final _url = 'https://api.nasa.gov/planetary/apod';
  final _api_key = 'Dgzji2psoz9NnOghhUgTRsbJFAh1XbEktr2PUqAT';

  Future<ApodModel> getApod() async {

    try {
      final response =
      await _dio.get(_url, queryParameters: {'api_key': _api_key});

      final apod = ApodModel.fromMap(response.data);
    return apod;
    } catch (e) {
      rethrow;
    }

  }
}

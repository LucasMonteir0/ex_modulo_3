import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:solid_1/part_2/exercicio_1/repositories/i_repository.dart';


class RepositoryDio implements IRepository {
  final Dio _dio;

  RepositoryDio(this._dio);

  @override
  Future<List<Map<String, dynamic>>> fetch() async {
    try {
      final response = await _dio.get('ex2_example_api_path');
      return List<Map<String, dynamic>>.from(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }
}

class RepositoryHttp implements IRepository {
  final http.Client _client;
  RepositoryHttp(this._client);

  @override
  Future<List<Map<String, dynamic>>> fetch() async {
    try {
      final response = await _client.get(Uri.parse('ex2_example_api_path'));
      final data = jsonDecode(response.body);
      return List<Map<String, dynamic>>.from(data);
    } catch (e) {
      throw Exception(e);
    }
  }
}

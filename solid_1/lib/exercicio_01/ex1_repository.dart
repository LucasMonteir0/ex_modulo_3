import 'package:dio/dio.dart';

class Ex1Repository {
  Dio dio = Dio();

  Future<List<Map<String, dynamic>>> fetch() async {
    try {
      final response = await dio.get('ex1_example_api_path');
      return List<Map<String, dynamic>>.from(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }
}

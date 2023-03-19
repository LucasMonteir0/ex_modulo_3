import 'package:dio/dio.dart';
import 'package:solid_1/part_1/exercicio_02/ex2_dto.dart';
import 'package:solid_1/part_1/exercicio_02/ex2_i_repository.dart';
import 'package:solid_1/part_1/exercicio_02/ex2_i_usecase.dart';
import 'package:solid_1/part_1/exercicio_02/ex2_mapper.dart';
import 'package:solid_1/part_1/exercicio_02/ex2_repository.dart';
import 'package:http/http.dart' as http;

class Ex2Usecase1 implements IUsecase {
  @override
  Ex2Mapper get mapper => Ex2Mapper();
  @override
  IRepository get repository => Ex2RepositoryDio(Dio());

 @override
  Future<List<Ex2DTO>> call() async {
    final json = await repository.fetch();
    return json.map((map) => mapper.fromJson(map)).toList();
  }
}


class Ex2Usecase2 implements IUsecase {
  @override
  Ex2Mapper get mapper => Ex2Mapper();
  @override
  IRepository get repository => Ex2RepositoryHttp(http.Client());

  @override
  Future<List<Ex2DTO>> call() async {
    final json = await repository.fetch();
    return json.map((map) => mapper.fromJson(map)).toList();
  }
}
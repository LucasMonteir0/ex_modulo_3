import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:solid_1/part_2/exercicio_1/dtos/dto.dart';
import 'package:solid_1/part_2/exercicio_1/mappers/mapper.dart';
import 'package:solid_1/part_2/exercicio_1/repositories/i_repository.dart';
import 'package:solid_1/part_2/exercicio_1/repositories/repository.dart';
import 'package:solid_1/part_2/exercicio_1/usecases/i_usecase.dart';

class Usecase1 implements IUsecase {
  @override
  Mapper get mapper => Mapper();
  @override
  IRepository get repository => RepositoryDio(Dio());

 @override
  Future<List<DTO>> call() async {
    final json = await repository.fetch();
    return json.map((map) => mapper.fromJson(map)).toList();
  }
}


class Usecase2 implements IUsecase {
  @override
  Mapper get mapper => Mapper();
  @override
  IRepository get repository => RepositoryHttp(http.Client());

  @override
  Future<List<DTO>> call() async {
    final json = await repository.fetch();
    return json.map((map) => mapper.fromJson(map)).toList();
  }
}
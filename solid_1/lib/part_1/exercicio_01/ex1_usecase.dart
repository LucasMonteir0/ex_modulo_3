import 'package:solid_1/part_1/exercicio_01/ex1_dto.dart';
import 'package:solid_1/part_1/exercicio_01/ex1_mapper.dart';
import 'package:solid_1/part_1/exercicio_01/ex1_repository.dart';

class Ex1Usecase {
  final Ex1Repository repository;
  final Ex1Mapper mapper;

  Ex1Usecase({required this.repository, required this.mapper});

  Future<List<Ex1DTO>> call() async {
    final json = await repository.fetch();
    return json.map((map) => mapper.fromJson(map)).toList();
}

}
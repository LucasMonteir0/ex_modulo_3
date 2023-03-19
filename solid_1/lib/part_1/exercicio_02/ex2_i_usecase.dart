
import 'package:solid_1/part_1/exercicio_02/ex2_dto.dart';
import 'package:solid_1/part_1/exercicio_02/ex2_i_repository.dart';
import 'package:solid_1/part_1/exercicio_02/ex2_mapper.dart';

abstract class IUsecase {
  IUsecase(this.repository, this.mapper);
   final IRepository repository;
   final Ex2Mapper mapper;

  Future<List<Ex2DTO>> call();
}
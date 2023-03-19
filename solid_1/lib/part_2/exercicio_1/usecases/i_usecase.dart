
import 'package:solid_1/part_2/exercicio_1/dtos/dto.dart';
import 'package:solid_1/part_2/exercicio_1/mappers/mapper.dart';
import 'package:solid_1/part_2/exercicio_1/repositories/i_repository.dart';

abstract class IUsecase {
  IUsecase(this.repository, this.mapper);
   final IRepository repository;
   final Mapper mapper;

  Future<List<DTO>> call();
}
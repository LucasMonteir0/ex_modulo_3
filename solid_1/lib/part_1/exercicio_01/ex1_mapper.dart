
import 'package:solid_1/part_1/exercicio_01/ex1_dto.dart';

class Ex1Mapper {
  Ex1DTO fromJson(Map<String, dynamic> json) {
    return Ex1DTO(
      id: json['id'],
      name: json['name'],
      age: json['age'],
    );
  }
}

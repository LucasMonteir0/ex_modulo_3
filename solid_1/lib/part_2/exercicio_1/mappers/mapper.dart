
import 'package:solid_1/part_2/exercicio_1/dtos/dto.dart';

class Mapper {
  DTO fromJson(Map<String, dynamic> json) {
    return DTO(
      id: json['id'],
      name: json['name'],
      age: json['age'],
    );
  }
}

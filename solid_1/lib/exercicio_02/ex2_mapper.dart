
import 'package:solid_1/exercicio_02/ex2_dto.dart';

class Ex2Mapper {
  Ex2DTO fromJson(Map<String, dynamic> json) {
    return Ex2DTO(
      id: json['id'],
      name: json['name'],
      age: json['age'],
    );
  }
}

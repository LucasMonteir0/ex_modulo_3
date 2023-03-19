


import 'package:solid_1/part_2/exercicio_1/controllers/icontroller.dart';
import 'package:solid_1/part_2/exercicio_1/dtos/dto.dart';
import 'package:solid_1/part_2/exercicio_1/mixins/http_request_mixin.dart';
import 'package:solid_1/part_2/exercicio_1/usecases/i_usecase.dart';

class GetDataController with GetXHttpRequestMixin<DTO> implements IGetDataController   {
  GetDataController(this._usecase);
  final IUsecase _usecase;
  @override
  Future<void> get() async {
    setLoading(true);
    setInitial(false);
    try {
      final usecase =  await _usecase();
      for (var v in usecase){
        setValue(v);
      }
      setError(false);
    } catch (e) {
      setError(true);
    }
  }
}
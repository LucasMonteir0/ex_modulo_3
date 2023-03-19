
import 'package:solid_1/part_2/exercicio_1/usecases/i_usecase.dart';


abstract class IGetDataController {
  IGetDataController(this._usecase);
  final IUsecase _usecase;

  Future<void> get();
}
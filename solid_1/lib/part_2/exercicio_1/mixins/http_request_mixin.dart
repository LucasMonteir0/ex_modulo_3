
import 'package:get/get.dart';
import 'package:solid_1/part_2/exercicio_1/controllers/http_controller.dart';

mixin GetXHttpRequestMixin<T> implements HttpController {
  final _isError = false.obs;
  final _isInitial = true.obs;
  final _isLoading = false.obs;
  final Rx<T?> _value = Rx(null);

  @override
  bool get isError => _isError.value;
  @override
  bool get isInitial => _isInitial.value;
  @override
  bool get isLoading => _isLoading.value;
  @override
  T? get value => _value.value;

  void setLoading(bool value) => _isLoading.value = value;
  void setError(bool value) => _isError.value = value;
  void setInitial(bool value) => _isInitial.value = value;
  void setValue(T? value) => _value.value = value;


}
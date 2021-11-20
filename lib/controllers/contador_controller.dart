import 'package:get/get.dart';

class ContadorController extends GetxController {
  RxInt contador = 0.obs;
  RxBool isLoading = true.obs;

  @override
  onInit() {
    super.onInit();
    // ignore: argument_type_not_assignable_to_error_handler
  }

  incrementar() {
    contador.value++;
  }

  decrementar() {
    contador.value--;
  }
}

import 'package:get/get.dart';

class ContadorIdController extends GetxController {
  RxInt contador = 0.obs;
  RxBool isLoading = true.obs;

  incrementar() {
    contador.value++;
    update(["contador"]);
  }

  decrementar() {
    contador.value--;
    update(["contador"]);
  }
}

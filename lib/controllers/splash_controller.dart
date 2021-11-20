import 'package:ft_curso_avanzado/pages/contador_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  onInit() {
    print("on init ");
    super.onInit();
    // ignore: argument_type_not_assignable_to_error_handler
  }

  @override
  void onReady() {
    print("on ready ");
    Future.delayed(const Duration(seconds: 5), () {
      Get.off(() => const ContadorPage(), transition: Transition.fadeIn);
    });
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    print(" on close");
    super.onClose();
  }
}

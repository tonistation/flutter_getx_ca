import 'package:flutter/material.dart';
import 'package:ft_curso_avanzado/controllers/splash_controller.dart';
import 'package:get/get.dart';
//import 'package:ft_curso_avanzado/controllers/contador_controller.dart';
//import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        init: SplashController(),
        builder: (_) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.blue),
              ),
            ),
          );
        });
  }
}

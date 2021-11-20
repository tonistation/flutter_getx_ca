import 'package:flutter/material.dart';
import 'package:ft_curso_avanzado/controllers/socket_controller.dart';
import 'package:get/get.dart';
//import 'package:ft_curso_avanzado/controllers/contador_controller.dart';
//import 'package:get/get.dart';

class SockectPage extends StatelessWidget {
  const SockectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic arguments = Get.arguments;
    return GetBuilder<SocketController>(
        init: SocketController(),
        builder: (controller) {
          return Obx(() => Scaffold(
              appBar: AppBar(
                  title: const Text('Socket con Faker'),
                  backgroundColor: arguments["color"] ?? Colors.blue),
              body: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Reactivo con faker',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    '${controller.jobTitle}',
                    style: const TextStyle(fontSize: 25),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    '${controller.sportName}',
                    style: const TextStyle(fontSize: 25),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    '${controller.personName}',
                    style: const TextStyle(fontSize: 25),
                  ),
                ],
              ))));
        });
    //final controller = Get.put(ContadorController());
  }
}

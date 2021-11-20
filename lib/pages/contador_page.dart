import 'package:flutter/material.dart';
import 'package:ft_curso_avanzado/controllers/contador_controller.dart';
import 'package:get/get.dart';
//import 'package:ft_curso_avanzado/controllers/contador_controller.dart';
//import 'package:get/get.dart';

class ContadorPage extends StatelessWidget {
  const ContadorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic arguments = Get.arguments;

    return GetBuilder<ContadorController>(
        init: ContadorController(),
        builder: (controller) {
          return Obx(
            () => Scaffold(
                appBar: AppBar(
                  title: const Text('Contador'),
                  backgroundColor: arguments["color"] ?? Colors.blue,
                ),
                body: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Contador',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      '${controller.contador}',
                      style: const TextStyle(fontSize: 50),
                    ),
                  ],
                )),
                floatingActionButton: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FloatingActionButton(
                      heroTag: "btn1",
                      child: const Icon(Icons.remove),
                      onPressed: controller.decrementar,
                    ),
                    const SizedBox(width: 10),
                    FloatingActionButton(
                      heroTag: "btn2",
                      child: const Icon(Icons.add),
                      onPressed: controller.incrementar,
                    ),
                  ],
                )),
          );
        });
    //final controller = Get.put(ContadorController());
  }
}

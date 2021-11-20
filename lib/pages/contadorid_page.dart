import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ft_curso_avanzado/controllers/contadorid_controller.dart';
import 'package:get/get.dart';

class ContadorIdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    dynamic arguments = Get.arguments;
    return GetBuilder<ContadorIdController>(
        init: ContadorIdController(),
        builder: (_) {
          // ignore: avoid_print
          log("Dibujando arbol de widgets");
          return Scaffold(
            appBar: AppBar(
                title: const Text('Contador ID'),
                backgroundColor: arguments["color"] ?? Colors.blue),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Contador',
                    style: TextStyle(fontSize: 30),
                  ),
                  GetBuilder<ContadorIdController>(
                    id: "contador",
                    builder: (_) {
                      return Text(
                        '${_.contador.value}',
                        style: const TextStyle(fontSize: 30),
                      );
                    },
                  )
                ],
              ),
            ),
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  heroTag: "btn1",
                  child: const Icon(Icons.remove),
                  onPressed: _.decrementar,
                ),
                const SizedBox(width: 10),
                FloatingActionButton(
                  heroTag: "btn2",
                  child: const Icon(Icons.add),
                  onPressed: _.incrementar,
                ),
              ],
            ),
          );
        });
  }
}

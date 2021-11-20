import 'package:flutter/material.dart';
import 'package:ft_curso_avanzado/controllers/consumerservice_controller.dart';
import 'package:get/get.dart';
//import 'package:ft_curso_avanzado/controllers/contador_controller.dart';
//import 'package:get/get.dart';

class ConsumerServicesPage extends StatelessWidget {
  const ConsumerServicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic arguments = Get.arguments;
    return GetBuilder<ConsumerServiceController>(
        init: ConsumerServiceController(),
        builder: (controller) {
          return Obx(() => Scaffold(
                appBar: AppBar(
                    title: const Text('Data de servicio'),
                    backgroundColor: arguments["color"] ?? Colors.blue),
                body: controller.genresList.isNotEmpty
                    ? SizedBox(
                        width: double.infinity,
                        child: ListView.separated(
                          separatorBuilder: (context, index) => const Divider(),
                          itemCount: controller.genresList.length,
                          itemBuilder: (context, index) {
                            final dynamic _genre = controller.genresList[index];
                            return Stack(children: [
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    _genre.name,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ]);
                          },
                        ))
                    : const Center(child: CircularProgressIndicator()),
              ));
        });
    //final controller = Get.put(ContadorController());
  }
}

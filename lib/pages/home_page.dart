import 'package:flutter/material.dart';
import 'package:ft_curso_avanzado/widgets/buttonroute.dart';
import 'package:ft_curso_avanzado/routes/app_routes.dart';
//import 'package:ft_curso_avanzado/controllers/contador_controller.dart';
//import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const ButtonRoute(text: 'Contador', route: Routes.contador),
            const ButtonRoute(text: 'Contador ID', route: Routes.contadorid),
            const ButtonRoute(
                text: 'Consumir Servicio', route: Routes.consumerservice),
            const ButtonRoute(text: 'Splash', route: Routes.splash),
            const ButtonRoute(text: 'Socket', route: Routes.sockect)
          ],
        ),
      ),
    );
  }
}

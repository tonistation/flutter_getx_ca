import 'package:ft_curso_avanzado/pages/consumerservices_page.dart';
import 'package:ft_curso_avanzado/pages/contador_page.dart';
import 'package:ft_curso_avanzado/pages/contadorid_page.dart';
import 'package:ft_curso_avanzado/pages/home_page.dart';
import 'package:ft_curso_avanzado/pages/socket_page.dart';
import 'package:ft_curso_avanzado/pages/splash_page.dart';
import 'package:get/get.dart';

abstract class Routes {
  static const home = _Paths.home;
  static const contador = _Paths.contador;
  static const contadorid = _Paths.contadorid;
  static const consumerservice = _Paths.consumerservice;
  static const splash = _Paths.splash;
  static const sockect = _Paths.socket;
}

abstract class _Paths {
  static const home = '/home';
  static const splash = '/splash';
  static const contador = '/contador';
  static const contadorid = '/contadorid';
  static const socket = '/socket';
  static const consumerservice = '/consumerservice';
}

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: _Paths.contador,
      page: () => const ContadorPage(),
    ),
    GetPage(
      name: _Paths.contadorid,
      page: () => ContadorIdPage(),
    ),
    GetPage(
      name: _Paths.consumerservice,
      page: () => const ConsumerServicesPage(),
    ),
    GetPage(
      name: _Paths.socket,
      page: () => const SockectPage(),
    ),
    GetPage(
      name: _Paths.splash,
      page: () => const SplashPage(),
    ),
  ];
}

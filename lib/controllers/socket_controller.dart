import 'dart:async';

import 'package:faker/faker.dart';
import 'package:get/get.dart';

class SocketController extends GetxController {
  final RxString _jobTitle = "".obs;
  final RxString _sportName = "".obs;
  final RxString _personName = "".obs;

  late Timer _timer;

  get jobTitle => _jobTitle.value;
  get sportName => _sportName.value;
  get personName => _personName.value;

  @override
  onInit() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _jobTitle.value = faker.job.title();
      _sportName.value = faker.sport.name();
      _personName.value = faker.person.name();
    });

    super.onInit();
    // ignore: argument_type_not_assignable_to_error_handler
  }
}

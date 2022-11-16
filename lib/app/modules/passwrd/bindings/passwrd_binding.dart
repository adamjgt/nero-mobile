import 'package:get/get.dart';

import '../controllers/passwrd_controller.dart';

class PasswrdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PasswrdController>(
      () => PasswrdController(),
    );
  }
}

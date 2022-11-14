import 'package:get/get.dart';

import '../controllers/awal_tampilan_controller.dart';

class AwalTampilanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AwalTampilanController>(
      () => AwalTampilanController(),
    );
  }
}

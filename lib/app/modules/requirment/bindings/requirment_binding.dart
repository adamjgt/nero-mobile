import 'package:get/get.dart';

import '../controllers/requirment_controller.dart';

class RequirmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RequirmentController>(
      () => RequirmentController(),
    );
  }
}

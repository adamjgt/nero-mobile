import 'package:get/get.dart';

class PasswrdController extends GetxController {
  RxBool isHidden = false.obs;
  RxBool isHiddenConfirm = false.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void hiddenPw() {
    isHidden.value = !isHidden.value;
  }

  void hiddenPwConfirm() {
    isHiddenConfirm.value = !isHiddenConfirm.value;
  }
}

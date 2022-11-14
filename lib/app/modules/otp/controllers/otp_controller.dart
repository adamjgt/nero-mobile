import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:timer_count_down/timer_controller.dart';

class OtpController extends GetxController {
  CountdownController countdownController = CountdownController();
  TextEditingController textEditingController = TextEditingController();
  var messageCode = "".obs;
  @override
  void onInit() async {
    super.onInit();
    await SmsAutoFill().listenForCode();
    print(SmsAutoFill().getAppSignature);
  }

  @override
  void onReady() {
    super.onReady();
    countdownController.start();
  }

  @override
  void onClose() {
    super.onClose();
    textEditingController.dispose();
    SmsAutoFill().unregisterListener();
  }
}

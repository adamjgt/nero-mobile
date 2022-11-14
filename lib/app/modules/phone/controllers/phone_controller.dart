import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nero/app/modules/requirment/views/requirment_view.dart';

class PhoneController extends GetxController {
  var isLoading = false.obs;
  final txtList = TextEditingController();

  var isButtonActive = true.obs;
  RxString controllerText = ''.obs;

  RxString myData = "081282636900".obs;

  void clickButton() async {
    isLoading.value = true;
    await Future.delayed(Duration(seconds: 3));
    if (controllerText == myData) {
      Get.off(RequirmentView());
    } else {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    txtList.addListener(() {
      controllerText.value = txtList.text;
    });

    debounce(controllerText, (_) {
      print("debouce$_");
    }, time: Duration(seconds: 1));
    super.onInit();
  }
}

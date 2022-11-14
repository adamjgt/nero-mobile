import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:nero/constant.dart';

import '../../../../components/back_button.dart';
import '../controllers/phone_controller.dart';

class PhoneView extends GetView<PhoneController> {
  @override
  Widget build(BuildContext context) {
    Get.put(PhoneController());
    return Scaffold(
        body: Container(
      color: kBgColor,
      alignment: Alignment.topLeft,
      width: double.infinity,
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height * 0.0355,
            ),
            MyBackButton(),
            SizedBox(
              height: Get.height * 0.0473,
            ),
            Text(
              "No. Handphone",
              style: GoogleFonts.mulish(
                  fontSize: Get.height * 0.01658,
                  color: kTextFieldNameColor,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 6,
            ),
            // Text Field
            Obx(() => Container(
                  width: Get.width,
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: controller.txtList,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 14)),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                          color: controller.controllerText ==
                                  controller.myData.value
                              ? kPrimaryColor
                              : kBorderColor)),
                )),
            Spacer(),

            //Button
            Obx(() => Container(
                width: Get.width,
                height: Get.height * 0.0592,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: kPrimaryColor,
                        onSurface: kPrimaryColor.withOpacity(0.1),
                        shape: StadiumBorder()),
                    onPressed: controller.controllerText.isNotEmpty
                        ? () {
                            controller.clickButton();
                          }
                        : null,
                    child: controller.isLoading.value
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 3.0,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Lanjut',
                                style: GoogleFonts.mulish(
                                    fontSize: Get.height * 0.01658,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          )
                        : Text("Lanjut")))),
            SizedBox(
              height: 20,
            )
          ],
        ),
      )),
    ));
  }
}

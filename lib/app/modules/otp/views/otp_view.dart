import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nero/components/back_button.dart';
import 'package:nero/components/button1.dart';
import 'package:nero/constant.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:timer_count_down/timer_count_down.dart';

import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  @override
  Widget build(BuildContext context) {
    Get.put(OtpController());
    return Scaffold(
      body: Container(
        color: kBgColor,
        width: Get.width,
        height: Get.height,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30.0,
                    ),
                    MyBackButton(),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Verifikasi nomor kamu yuk!",
                      style: GoogleFonts.mulish(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Masukan 4 digit kode yang dikirim ke *******900",
                      style: GoogleFonts.mulish(fontSize: 14),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Obx(() => PinFieldAutoFill(
                          codeLength: 4,
                          onCodeSubmitted: (code) {},
                          controller: controller.textEditingController,
                          currentCode: controller.messageCode.value,
                          onCodeChanged: (code) {
                            controller.messageCode.value = code!;
                            controller.countdownController.pause();
                          },
                        )),
                    SizedBox(
                      height: 40.0,
                    ),
                    Countdown(
                        seconds: 15,
                        build: (context, currentRemainingTime) {
                          if (currentRemainingTime == 0.0) {
                            return GestureDetector(
                              onTap: () {},
                              child: Container(
                                  alignment: Alignment.center,
                                  width: Get.width,
                                  child: Text(
                                    "Kirim Ulang Kode",
                                    style: GoogleFonts.mulish(
                                        color: kFontGreenColor,
                                        decoration: TextDecoration.underline),
                                  )),
                            );
                          } else {
                            return Container(
                                alignment: Alignment.center,
                                width: Get.width,
                                child: Text(
                                  "${currentRemainingTime.toString()}",
                                  style: GoogleFonts.mulish(
                                      color: kFontGreenColor,
                                      decoration: TextDecoration.underline),
                                ));
                          }
                        }),
                    SizedBox(
                      height: Get.height * 0.50,
                    ),
                    Button1(
                      text: 'Lanjut',
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 20.0,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

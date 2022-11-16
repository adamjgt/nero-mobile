import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nero/components/back_button.dart';
import 'package:nero/components/tanya_button.dart';
import 'package:nero/constant.dart';

import '../controllers/data_controller.dart';

class DataView extends GetView<DataController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: Get.width,
      height: Get.height,
      color: kBgColor,
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.035545,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [MyBackButton(), ButtonTanya()],
            ),
            Text(
              "Nah sekarang lengkapi data kamu\nyuk!...",
              style: GoogleFonts.mulish(),
            )
          ],
        ),
      )),
    ));
  }
}

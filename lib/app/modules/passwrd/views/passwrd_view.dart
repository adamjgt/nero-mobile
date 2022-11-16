import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nero/app/modules/data/views/data_view.dart';
import 'package:nero/components/back_button.dart';
import 'package:nero/components/button1.dart';
import 'package:nero/components/tanya_button.dart';
import 'package:nero/constant.dart';

import '../controllers/passwrd_controller.dart';

class PasswrdView extends GetView<PasswrdController> {
  @override
  Widget build(BuildContext context) {
    Get.put(PasswrdController());
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        color: kBgColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Get.height * 0.03554),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyBackButton(),
                    ButtonTanya(),
                  ],
                ),
                SizedBox(height: Get.height * 0.04739),
                Text(
                  "Buat Password Yuk!",
                  style: GoogleFonts.mulish(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: Get.height * 0.03554),
                Text(
                  "Password",
                  style: GoogleFonts.mulish(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: kTextFieldNameColor,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Obx(() => Container(
                    width: Get.width,
                    child: TextFormField(
                      obscureText: controller.isHidden.value ? true : false,
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              controller.hiddenPw();
                            },
                            icon: controller.isHidden.value
                                ? Icon(
                                    Icons.visibility_outlined,
                                    color: Colors.black,
                                  )
                                : Icon(
                                    Icons.visibility_off_outlined,
                                    color: Colors.black,
                                  ),
                          ),
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: GoogleFonts.mulish(color: kFontGreyColor),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 14)),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: kBorderColor),
                    ))),
                SizedBox(
                  height: Get.height * 0.03554,
                ),
                Text(
                  "Konfirmasi Password",
                  style: GoogleFonts.mulish(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: kTextFieldNameColor,
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Obx(() => Container(
                    width: Get.width,
                    child: TextFormField(
                      obscureText:
                          controller.isHiddenConfirm.value ? true : false,
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              controller.hiddenPwConfirm();
                            },
                            icon: controller.isHiddenConfirm.value
                                ? Icon(
                                    Icons.visibility_outlined,
                                    color: Colors.black,
                                  )
                                : Icon(
                                    Icons.visibility_off_outlined,
                                    color: Colors.black,
                                  ),
                          ),
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: GoogleFonts.mulish(color: kFontGreyColor),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 14)),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: kBorderColor),
                    ))),
                SizedBox(
                  height: Get.height * 0.035545,
                ),
                Container(
                  height: Get.height * 0.04672985782,
                  width: Get.width,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'A',
                            style: GoogleFonts.mulish(
                                color: kFontValidGreen,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'A',
                            style: GoogleFonts.mulish(
                                color: kFontValidGreen,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'A',
                            style: GoogleFonts.mulish(
                                color: kFontValidGreen,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'A',
                            style: GoogleFonts.mulish(
                                color: kFontValidGreen,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 13.0,
                          ),
                          Text(
                            'Huruf Kapital',
                            style: GoogleFonts.mulish(
                                color: kFontBlackColor,
                                fontSize: 10.0,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: 24.0,
                          ),
                          Text(
                            'Huruf Kecil',
                            style: GoogleFonts.mulish(
                                color: kFontBlackColor,
                                fontSize: 10.0,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: 33.0,
                          ),
                          Text(
                            'Character',
                            style: GoogleFonts.mulish(
                                color: kFontBlackColor,
                                fontSize: 10.0,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: 44.0,
                          ),
                          Text(
                            'Angka',
                            style: GoogleFonts.mulish(
                                color: kFontBlackColor,
                                fontSize: 10.0,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Button1(
                  text: 'Lanjut',
                  onPressed: () {
                    Get.to(DataView());
                  },
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

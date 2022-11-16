import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nero/app/modules/passwrd/views/passwrd_view.dart';
import 'package:nero/components/back_button.dart';
import 'package:nero/components/button1.dart';
import 'package:nero/constant.dart';

import '../../../../components/tanya_button.dart';
import '../controllers/email_controller.dart';

class EmailView extends GetView<EmailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBgColor,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * 0.035545,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [MyBackButton(), ButtonTanya()],
              ),
              SizedBox(
                height: Get.height * 0.04739,
              ),
              Text(
                "Masukkan email kamu yuk!",
                style: GoogleFonts.mulish(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: Get.height * 0.035545,
              ),
              Text("Email",
                  style: GoogleFonts.mulish(
                      fontSize: 14, fontWeight: FontWeight.w400)),
              SizedBox(
                height: 6,
              ),
              Container(
                  width: Get.width,
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Masukan Alamat Email Anda',
                        hintStyle: GoogleFonts.mulish(color: kFontGreyColor),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 14)),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: kBorderColor),
                  )),
              Spacer(),
              Button1(
                text: 'Lanjut',
                onPressed: () {
                  Get.to(PasswrdView());
                },
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        )));
  }
}

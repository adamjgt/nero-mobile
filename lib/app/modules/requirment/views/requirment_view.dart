import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nero/app/modules/otp/views/otp_view.dart';
import 'package:nero/components/back_button.dart';
import 'package:nero/components/button1.dart';
import 'package:nero/constant.dart';

import '../../../../components/my_card.dart';
import '../controllers/requirment_controller.dart';

class RequirmentView extends GetView<RequirmentController> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Get.height * 0.0355,
                ),
                MyBackButton(),
                SizedBox(
                  height: Get.height * 0.04739,
                ),
                Text(
                  "Siapin ini dulu yuk, biar prosesnya\nlancar",
                  style: GoogleFonts.mulish(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: Get.height * 0.041469,
                ),
                Expanded(
                    flex: 4,
                    child: Container(
                      width: Get.width,
                      child: Column(
                        children: [
                          MyCardRequir(
                            hText: "Pastikan kamu memnuhi kriteria ini",
                            img: "assets/images/Course Assign.png",
                            text1:
                                "1.\t\tBerusia minimal 17 tahun dan memiliki E-KTP",
                            text2: "2.\t\tWarga Negara Indonesia",
                            text3:
                                "3.\t\tTidak memiliki kewajiban perpajakan\n\t\t\t di negara lain",
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          MyCardRequir(
                              hText: 'Kamu perlu siapkan:',
                              img: "assets/images/Business Documentation.png",
                              text1: '1.\t\tE-KTP',
                              text2: '2.\t\tNPWP (Opsional)',
                              text3: '3.\t\tKoneksi Internet yang lancar')
                        ],
                      ),
                    )),
                Expanded(
                    child: Container(
                  child: Column(
                    children: [
                      Spacer(),
                      Button1(
                        text: 'Lanjut',
                        onPressed: () {
                          Get.to(OtpView());
                        },
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

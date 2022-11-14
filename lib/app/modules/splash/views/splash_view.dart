import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:nero/constant.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBgColor,
        body: Container(
          color: kBgColor,
          width: Get.width,
          height: Get.height,
          child: Stack(
            children: [
              Positioned(
                  bottom: 0,
                  child: Container(
                    width: Get.width,
                    child: SvgPicture.asset(
                      "assets/images/Vector (1).svg",
                      fit: BoxFit.fitWidth,
                    ),
                  )),
              SafeArea(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: Get.height * 0.404 - Get.mediaQuery.padding.top,
                      ),
                      Container(
                          height: Get.height * 0.06,
                          width: Get.width,
                          child: SvgPicture.asset(
                              "assets/images/Company logo.svg")),
                      SizedBox(
                        height: Get.height * 0.425,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Transaksi",
                            style: kTexGreentBiasa,
                          ),
                          Text(
                            " Gadai, Pembiayaan dan Emas bisa",
                            style: kTextGreyBiasa,
                          ),
                        ],
                      ),
                      Text("Dapat bonus kejutan", style: kTexGreentBiasa)
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

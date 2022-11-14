import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nero/app/modules/awalTampilan/carousell/carousell_slide.dart';
import 'package:nero/app/modules/awalTampilan/carousell/carousell_slide3.dart';
import 'package:nero/app/modules/awalTampilan/carousell/carousell_slide4.dart';
import 'package:nero/app/modules/awalTampilan/carousell/carousell_slider2.dart';
import 'package:nero/app/modules/phone/views/phone_view.dart';

import 'package:nero/constant.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../components/button1.dart';
import '../controllers/awal_tampilan_controller.dart';

class AwalTampilanView extends GetView<AwalTampilanController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: kBgColor,
      height: Get.height,
      width: Get.width,
      child: Stack(
        children: [
          Positioned(
              bottom: 0,
              child: Container(
                  width: Get.width,
                  child: SvgPicture.asset(
                    "assets/images/Vector (2).svg",
                    fit: BoxFit.cover,
                  ))),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.0355,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: SvgPicture.asset(
                            "assets/images/Company logo (1).svg")),
                    DropdownButtonHideUnderline(
                        child: DropdownButton2(
                      icon: Icon(Icons.keyboard_arrow_down),
                      iconDisabledColor: Colors.black,
                      items: [
                        DropdownMenuItem(
                            child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: SvgPicture.asset("assets/images/ID.svg"),
                        ))
                      ],
                    ))
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                Expanded(
                    flex: 4,
                    child: CarouselSlider(
                        carouselController: controller.buttonCarouslController,
                        items: [
                          KcarouselSlide1(),
                          KcarouselSlide2(),
                          KcarouselSlide3(),
                          KcarouselSlide4()
                        ],
                        options: CarouselOptions(
                          height: Get.height,
                          viewportFraction: 1,
                        ))),
                Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 30.0, horizontal: 2.0),
                    child: AnimatedSmoothIndicator(
                      activeIndex: 1,
                      count: 4,
                      effect: ExpandingDotsEffect(
                          activeDotColor: Color.fromARGB(255, 18, 183, 106),
                          dotWidth: 8,
                          dotHeight: 8),
                    )),
                Expanded(
                    child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button1(
                        text: 'Yuk Mulai',
                        onPressed: () {
                          Get.to(PhoneView());
                        },
                      ),
                      Text(
                        "Fees&Rates",
                        style: GoogleFonts.mulish(
                            fontSize: Get.height * 0.01184,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline),
                      )
                    ],
                  ),
                ))
              ],
            ),
          ))
        ],
      ),
    ));
  }
}

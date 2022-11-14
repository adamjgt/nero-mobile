import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

class MyCardRequir extends StatelessWidget {
  const MyCardRequir({
    Key? key,
    required this.hText,
    required this.img,
    required this.text1,
    required this.text2,
    required this.text3,
  }) : super(key: key);
  final String hText;
  final String img;
  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1,
        shadowColor: kCardColor,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
          width: Get.width,
          height: Get.height * 0.227488,
          decoration: BoxDecoration(
              color: kCardColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(offset: Offset(1, 3), color: kButtonGreyColor)
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(img),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    hText,
                    style: GoogleFonts.mulish(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: kFontBlackColor),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              Text(
                text1,
                style: GoogleFonts.mulish(
                    fontSize: 14,
                    color: kFontGreyColor,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                text2,
                style: GoogleFonts.mulish(
                    fontSize: 14,
                    color: kFontGreyColor,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                text3,
                style: GoogleFonts.mulish(
                    fontSize: 14,
                    color: kFontGreyColor,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ));
  }
}

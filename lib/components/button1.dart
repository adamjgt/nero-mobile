import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

class Button1 extends StatelessWidget {
  const Button1({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);
  final String text;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.0592,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: kPrimaryColor, shape: StadiumBorder()),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: GoogleFonts.mulish(
                    fontSize: Get.height * 0.01658,
                    fontWeight: FontWeight.w600),
              ),
            ],
          )),
    );
  }
}

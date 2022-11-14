import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant.dart';

class HeadLineCL extends StatelessWidget {
  const HeadLineCL({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        text,
        style: GoogleFonts.mulish(
            color: kFontBlackColor,
            fontSize: Get.height * 0.021,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

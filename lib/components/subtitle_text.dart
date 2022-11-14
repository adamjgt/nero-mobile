import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant.dart';

class SubTitleCL extends StatelessWidget {
  const SubTitleCL({
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
            fontSize: Get.height * 0.01568,
            fontWeight: FontWeight.w400,
            color: kFontGreyColor),
      ),
    );
  }
}

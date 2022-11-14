import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/headline_text.dart';
import '../../../../components/subtitle_text.dart';

//Section hero carousel
class KcarouselSlide1 extends StatelessWidget {
  const KcarouselSlide1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          HeadLineCL(
            text: "Mulai Langkahmu Bareng\nPegadaian!",
          ),
          SubTitleCL(
            text:
                "\nUntuk hidup lebih mudah dan terkoneksi, apa\npun tujuanmu.",
          ),
          SizedBox(
            height: Get.height * 0.1125,
          ),
          Image.asset("assets/images/index0.png")
        ],
      ),
    );
  }
}

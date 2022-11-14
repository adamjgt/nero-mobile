import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/headline_text.dart';
import '../../../../components/subtitle_text.dart';

//Section hero carousel
class KcarouselSlide2 extends StatelessWidget {
  const KcarouselSlide2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          HeadLineCL(
            text: "Nabung Bebas Biaya Admin :)",
          ),
          SubTitleCL(
            text:
                "\nMulai langkahmu, nabung dengan bunga 3% Bayar-\nbayar juga lebih gampang!",
          ),
          SizedBox(
            height: Get.height * 0.1125,
          ),
          Image.asset("assets/images/index1.png")
        ],
      ),
    );
  }
}

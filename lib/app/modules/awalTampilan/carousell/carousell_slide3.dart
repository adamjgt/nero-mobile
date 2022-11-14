import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/headline_text.dart';
import '../../../../components/subtitle_text.dart';

//Section hero carousel
class KcarouselSlide3 extends StatelessWidget {
  const KcarouselSlide3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          HeadLineCL(
            text: "Transaksi Lebih Mudah dengan\nPegadaian",
          ),
          SubTitleCL(
            text:
                "\nBikin hiudp simple dan praktis, mulai dari belanja\nonline sampai bayar tagihan",
          ),
          SizedBox(
            height: Get.height * 0.1125,
          ),
          Image.asset("assets/images/index2.png")
        ],
      ),
    );
  }
}

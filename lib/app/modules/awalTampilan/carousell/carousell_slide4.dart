import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/headline_text.dart';
import '../../../../components/subtitle_text.dart';

//Section hero carousel
class KcarouselSlide4 extends StatelessWidget {
  const KcarouselSlide4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          HeadLineCL(
            text: "Layanan Jasa",
          ),
          SubTitleCL(
            text:
                "\nNero Menyediakan Layanan Jasa seperti Tabungan\nEmas, Jasa Pembayaran Online, Jasa Kirim dan Terima\nUang dan lain-lain",
          ),
          SizedBox(
            height: Get.height * 0.1125,
          ),
          Image.asset("assets/images/index3.png")
        ],
      ),
    );
  }
}

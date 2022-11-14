import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../constant.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        minWidth: 0,
        onPressed: () {
          Get.back();
        },
        color: kButtonGreyColor,
        textColor: kFontBlackColor,
        height: 44,
        shape: CircleBorder(),
        child: SvgPicture.asset("assets/images/Icon.svg"));
  }
}

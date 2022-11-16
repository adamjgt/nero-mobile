import 'package:get/get.dart';

import 'package:nero/app/modules/awalTampilan/bindings/awal_tampilan_binding.dart';
import 'package:nero/app/modules/awalTampilan/views/awal_tampilan_view.dart';
import 'package:nero/app/modules/data/bindings/data_binding.dart';
import 'package:nero/app/modules/data/views/data_view.dart';
import 'package:nero/app/modules/email/bindings/email_binding.dart';
import 'package:nero/app/modules/email/views/email_view.dart';
import 'package:nero/app/modules/home/bindings/home_binding.dart';
import 'package:nero/app/modules/home/views/home_view.dart';
import 'package:nero/app/modules/otp/bindings/otp_binding.dart';
import 'package:nero/app/modules/otp/views/otp_view.dart';
import 'package:nero/app/modules/passwrd/bindings/passwrd_binding.dart';
import 'package:nero/app/modules/passwrd/views/passwrd_view.dart';
import 'package:nero/app/modules/phone/bindings/phone_binding.dart';
import 'package:nero/app/modules/phone/views/phone_view.dart';
import 'package:nero/app/modules/requirment/bindings/requirment_binding.dart';
import 'package:nero/app/modules/requirment/views/requirment_view.dart';
import 'package:nero/app/modules/splash/bindings/splash_binding.dart';
import 'package:nero/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.AWAL_TAMPILAN;
  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.AWAL_TAMPILAN,
      page: () => AwalTampilanView(),
      binding: AwalTampilanBinding(),
    ),
    GetPage(
      name: _Paths.PHONE,
      page: () => PhoneView(),
      binding: PhoneBinding(),
    ),
    GetPage(
      name: _Paths.REQUIRMENT,
      page: () => RequirmentView(),
      binding: RequirmentBinding(),
    ),
    GetPage(
      name: _Paths.OTP,
      page: () => OtpView(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: _Paths.EMAIL,
      page: () => EmailView(),
      binding: EmailBinding(),
    ),
    GetPage(
      name: _Paths.PASSWRD,
      page: () => PasswrdView(),
      binding: PasswrdBinding(),
    ),
    GetPage(
      name: _Paths.DATA,
      page: () => DataView(),
      binding: DataBinding(),
    ),
  ];
}

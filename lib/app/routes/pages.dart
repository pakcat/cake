import 'package:cake/app/routes/routes.dart';
import 'package:cake/app/ui/pages/home_page/home_page.dart';
import 'package:cake/app/ui/pages/login_page/login_page.dart';
import 'package:cake/app/ui/pages/lorem_page/lorem_page.dart';
import 'package:cake/app/ui/pages/register_page/register_page.dart';

import 'package:get/get.dart';

import '../ui/pages/onboarding_page/onboarding_page.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.initial,
      page: () => const OnboardingPage(),
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: Routes.register,
      page: () => const RegisterPage(),
    ),
    GetPage(
      name: Routes.home,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.lorem,
      page: () => LoremPage(),
    )
  ];
}

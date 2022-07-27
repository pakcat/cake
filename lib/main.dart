import 'package:cake/app/bindings/onboarding_binding.dart';
import 'package:cake/app/routes/pages.dart';
import 'package:cake/app/ui/pages/onboarding_page/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/routes.dart';
import 'app/ui/theme/apptheme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.initial,
    theme: appThemeData,
    defaultTransition: Transition.fade,
    initialBinding: OnboardingBinding(),
    getPages: AppPages.pages,
    home: const OnboardingPage(),
  ));
}

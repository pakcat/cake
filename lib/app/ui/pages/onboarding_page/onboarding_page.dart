// ignore_for_file: prefer_const_constructors

import 'package:cake/app/ui/theme/color.dart';
import 'package:cake/app/ui/utils/responsive_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../controllers/onboarding_controller.dart';
import '../../../routes/routes.dart';
import '../../global_widgets/button.dart';
import 'pageonboarding.dart';

class OnboardingPage extends GetView<OnboardingController> {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController pagecontroller = PageController();
    var h = ResponsiveUtil(context).byHeight;
    var w = ResponsiveUtil(context).byWidth;
    OnboardingController controller = Get.find();

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pagecontroller,
            onPageChanged: (index) {
              controller.onchanged(index);
            },
            children: const [
              Page1(assetimage: "assets/images/onboarding1.png"),
              Page1(assetimage: "assets/images/onboarding2.png"),
              Page1(assetimage: "assets/images/onboarding3.png"),
            ],
          ),
          Obx(() => Column(
                children: [
                  SizedBox(
                    height: h * 630,
                  ),
                  SmoothPageIndicator(
                    controller: pagecontroller,
                    count: 3,
                    effect: JumpingDotEffect(
                        dotHeight: 10,
                        dotWidth: 10,
                        dotColor: secondary,
                        activeDotColor: primary),
                  ),
                  SizedBox(
                    height: h * 50,
                  ),
                  (controller.currentPage.value != 2)
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  pagecontroller.jumpToPage(2);
                                },
                                child: Text(
                                  "Skip",
                                  style:
                                      TextStyle(color: primary, fontSize: 15),
                                )),
                            GestureDetector(
                                onTap: () {
                                  pagecontroller.nextPage(
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.easeIn,
                                  );
                                },
                                child: Button(text: "Next")),
                          ],
                        )
                      : GestureDetector(
                          onTap: () {
                            Get.offAllNamed(Routes.login);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Buttonexpand(text: "Let’s Get Started"),
                          ))
                ],
              ))
        ],
      ),
    );
  }
}

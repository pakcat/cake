import 'package:cake/app/ui/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../controllers/home_controller.dart';
import '../../../routes/routes.dart';
import '../../utils/responsive_util.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = ResponsiveUtil(context).byHeight;
    var w = ResponsiveUtil(context).byWidth;
    return Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: primary,
                  height: h * 100,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: h * 20,
                    ),
                    Container(
                      color: primary,
                      child: Container(
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Find cake or places",
                                hintStyle: TextStyle(color: greytext),
                                prefixIconColor: greytext,
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: ImageIcon(
                                      AssetImage("assets/images/search.png")),
                                ))),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: h * 40),
                child: Column(
                  children: [
                    SizedBox(
                      height: h * 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: HexColor("#FFB1C1"),
                                ),
                                child: Image(
                                    image:
                                        AssetImage("assets/images/icon1.png")),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Buttercake",
                                maxLines: 1,
                                style: TextStyle(
                                    fontSize: w * 11, color: greytext),
                              )
                            ],
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: HexColor("#FFB1C1"),
                                ),
                                child: Image(
                                    image:
                                        AssetImage("assets/images/icon2.png")),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Chiffon",
                                maxLines: 1,
                                style: TextStyle(
                                    fontSize: w * 11, color: greytext),
                              ),
                            ],
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: HexColor("#FFB1C1"),
                                ),
                                child: Image(
                                    image:
                                        AssetImage("assets/images/icon3.png")),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Sponge",
                                maxLines: 1,
                                style: TextStyle(
                                    fontSize: w * 11, color: greytext),
                              )
                            ],
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: HexColor("#FFB1C1"),
                                ),
                                child: Image(
                                    image:
                                        AssetImage("assets/images/icon4.png")),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Poundcake",
                                maxLines: 1,
                                style: TextStyle(
                                    fontSize: w * 10, color: greytext),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 30,
                    ),
                    Row(
                      children: [
                        Text(
                          "Lorem",
                          style: lorem(),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ImageIcon(
                          AssetImage("assets/images/arrow.png"),
                          size: 15,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                            onTap: () {
                              Get.toNamed(Routes.lorem);
                            },
                            child: Image(
                                image: AssetImage("assets/images/lorem1.png"))),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet",
                          style: TextStyle(
                              color: greytext, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                    SizedBox(
                      height: h * 30,
                    ),
                    Row(
                      children: [
                        Text(
                          "Lorem",
                          style: lorem(),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ImageIcon(
                          AssetImage("assets/images/arrow.png"),
                          size: 15,
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(image: AssetImage("assets/images/lorem2.png")),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet",
                          style: TextStyle(
                              color: greytext, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 50,
          items: <BottomNavigationBarItem>[
            BotNavItem("assets/images/bm1.png", "Home"),
            BotNavItem("assets/images/bm2.png", "Activities"),
            BotNavItem("assets/images/bm3.png", "Messages"),
            BotNavItem("assets/images/bm4.png", "Profile"),
          ],
          currentIndex: 0,
          selectedItemColor: primary,
          unselectedItemColor: greytext,
          type: BottomNavigationBarType.fixed,
          iconSize: w * 20,
        ));
  }

  TextStyle lorem() {
    return TextStyle(
        color: greytext, fontWeight: FontWeight.w700, fontSize: 22);
  }
}

BottomNavigationBarItem BotNavItem(String image, String Label) {
  return BottomNavigationBarItem(
    icon: ImageIcon(AssetImage(image)),
    label: Label,
  );
}

// ignore_for_file: prefer_const_constructors

import 'package:cake/app/ui/pages/home_page/home_page.dart';
import 'package:cake/app/ui/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/login_controller.dart';
import '../../../routes/routes.dart';
import '../../global_widgets/button.dart';
import '../../utils/responsive_util.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = ResponsiveUtil(context).byHeight;
    var w = ResponsiveUtil(context).byWidth;

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: h * 80,
          ),
          Text(
            "Welcome Back",
            style: TextStyle(color: primary, fontSize: 30),
          ),
          SizedBox(
            height: h * 10,
          ),
          SizedBox(
            width: w * 300,
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
              style: TextStyle(color: greytext, fontSize: 12),
            ),
          ),
          SizedBox(
            height: h * 20,
          ),
          Text(
            "Email",
            style: TextStyle(color: greytext),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                color: onprimarycontainer,
                borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: greytext),
                    hintText: "Email Address",
                    border: InputBorder.none),
              ),
            ),
          ),
          SizedBox(
            height: h * 20,
          ),
          Text(
            "Password",
            style: TextStyle(color: greytext),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                color: onprimarycontainer,
                borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: greytext),
                    hintText: "Password",
                    suffixIcon: Icon(Icons.remove_red_eye),
                    suffixIconColor: Colors.black,
                    border: InputBorder.none),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Forgot password?",
                style: TextStyle(color: primary),
              ),
            ],
          ),
          SizedBox(
            height: h * 30,
          ),
          InkWell(
              onTap: () {
                Get.toNamed(Routes.home);
              },
              child: Buttonexpand(text: "Login")),
          Padding(
            padding: EdgeInsets.symmetric(vertical: h * 10),
            child: Center(child: Text("Or")),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
                border: Border.all(color: primary),
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                  height: h * 20,
                  child: Image(image: AssetImage("assets/images/Google.png"))),
              SizedBox(
                width: 10,
              ),
              Text(
                "Login With Google",
                style: TextStyle(color: primary, fontSize: 15),
              )
            ]),
          ),
          SizedBox(
            height: h * 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don’t have an account?"),
              SizedBox(
                width: 5,
              ),
              InkWell(
                  onTap: () {
                    Get.toNamed(Routes.register);
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(color: primary),
                  ))
            ],
          )
        ],
      ),
    ));
  }
}

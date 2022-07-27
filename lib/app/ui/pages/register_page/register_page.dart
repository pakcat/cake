import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/register_controller.dart';
import '../../../routes/routes.dart';
import '../../global_widgets/button.dart';
import '../../theme/color.dart';
import '../../utils/responsive_util.dart';

class RegisterPage extends GetView<RegisterController> {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = ResponsiveUtil(context).byHeight;
    var w = ResponsiveUtil(context).byWidth;

    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: h * 80,
            ),
            Text(
              "Sign up",
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
              "Name",
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
                      hintText: "Your name",
                      border: InputBorder.none),
                ),
              ),
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
            Center(
              child: SizedBox(
                width: w * 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "I agree to the ,",
                          style: TextStyle(color: greytext),
                        ),
                        Text(
                          "Terms of Service",
                          style: TextStyle(color: primary),
                        ),
                        Text(
                          " and ",
                          style: TextStyle(color: greytext),
                        ),
                      ],
                    ),
                    Text(
                      "Privacy Policy ",
                      style: TextStyle(color: primary),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: h * 30,
            ),
            const Buttonexpand(text: "Create Account"),
            SizedBox(
              height: h * 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? "),
                InkWell(
                    onTap: () {
                      Get.offNamed(Routes.login);
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: primary),
                    ))
              ],
            )
          ],
        ),
      ),
    ));
  }
}

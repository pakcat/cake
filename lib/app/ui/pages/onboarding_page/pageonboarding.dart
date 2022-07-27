// ignore_for_file: prefer_const_constructors

import 'package:cake/app/ui/theme/color.dart';
import 'package:cake/app/ui/utils/responsive_util.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key, required this.assetimage}) : super(key: key);
  final String assetimage;
  @override
  Widget build(BuildContext context) {
    var h = ResponsiveUtil(context).byHeight;
    var w = ResponsiveUtil(context).byWidth;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: h * 150,
            ),
            Image(image: AssetImage(assetimage)),
            SizedBox(
              height: h * 20,
            ),
            Text(
              "Lorem",
              style: TextStyle(
                  color: primary, fontWeight: FontWeight.w900, fontSize: 20),
            ),
            SizedBox(
              height: h * 10,
            ),
            SizedBox(
              width: w * 200,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Imperdiet elit massa arcu mauris facilisis mattis.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 14, color: greytext),
              ),
            ),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}

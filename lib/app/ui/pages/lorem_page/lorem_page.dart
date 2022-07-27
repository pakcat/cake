import 'package:cake/app/ui/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/lorem_controller.dart';
import '../../utils/responsive_util.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'images.dart';

class LoremPage extends GetView<LoremController> {
  @override
  Widget build(BuildContext context) {
    var h = ResponsiveUtil(context).byHeight;
    var w = ResponsiveUtil(context).byWidth;
    final List<String> product_item = [
      "assets/images/1.png",
      "assets/images/2.png",
      "assets/images/3.png",
      "assets/images/4.png",
      "assets/images/5.png",
      "assets/images/6.png",
      "assets/images/7.png",
      "assets/images/8.png",
      "assets/images/9.png",
      "assets/images/10.png",
      "assets/images/11.png",
      "assets/images/12.png",
      "assets/images/13.png",
      "assets/images/14.png",
      "assets/images/15.png",
      "assets/images/16.png",
      "assets/images/17.png",
      "assets/images/18.png",
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primary,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: h * 55,
                color: primary,
              ),
              Column(
                children: [
                  SizedBox(
                    height: h * 0,
                  ),
                  Container(
                    child: Container(
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: primary),
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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 35),
              child: AlignedGridView.count(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                crossAxisCount: 3,
                mainAxisSpacing: 6,
                crossAxisSpacing: 6,
                itemCount: product_item.length,
                itemBuilder: (BuildContext context, int index) {
                  return ProductItem(image: product_item[index]);
                },
              ),
            ),
          ))
        ],
      ),
    );
  }
}

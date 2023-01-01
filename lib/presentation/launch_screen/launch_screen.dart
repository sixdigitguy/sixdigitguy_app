import 'controller/launch_controller.dart';
import 'package:flutter/material.dart';
import 'package:sixdigitguy_app/core/app_export.dart';

class LaunchScreen extends GetWidget<LaunchController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray900,
            body: GestureDetector(
                onTap: () {
                  onTapLaunchScreen();
                },
                child: Container(
                    width: size.width,
                    padding: getPadding(left: 54, right: 54),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgLogo1,
                              height: getVerticalSize(252.00),
                              width: getHorizontalSize(251.00))
                        ])))));
  }

  onTapLaunchScreen() {
    Get.toNamed(AppRoutes.signOptionScreen);
  }
}

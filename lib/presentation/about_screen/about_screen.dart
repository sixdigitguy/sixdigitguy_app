import 'controller/about_controller.dart';
import 'package:flutter/material.dart';
import 'package:sixdigitguy_app/core/app_export.dart';

class AboutScreen extends GetWidget<AboutController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 20,
            top: 19,
            right: 20,
            bottom: 19,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_about".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterBold15WhiteA700,
              ),
              CustomImageView(
                svgPath: ImageConstant.imgBackbtn,
                height: getVerticalSize(
                  1.00,
                ),
                width: getHorizontalSize(
                  21.00,
                ),
                margin: getMargin(
                  left: 3,
                  top: 34,
                  bottom: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

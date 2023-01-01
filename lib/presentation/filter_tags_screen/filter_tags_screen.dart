import 'controller/filter_tags_controller.dart';
import 'package:flutter/material.dart';
import 'package:sixdigitguy_app/core/app_export.dart';

class FilterTagsScreen extends GetWidget<FilterTagsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: Container(
          width: size.width,
          padding: getPadding(
            all: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_tag_filter".tr,
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
                  top: 33,
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

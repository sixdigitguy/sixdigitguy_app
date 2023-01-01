import 'controller/more_controller.dart';
import 'package:flutter/material.dart';
import 'package:sixdigitguy_app/core/app_export.dart';
import 'package:sixdigitguy_app/widgets/custom_switch.dart';

class MoreScreen extends GetWidget<MoreController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 46,
            right: 46,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 17,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 2,
                      ),
                      child: Text(
                        "msg_download_over_wifi".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterMedium15,
                      ),
                    ),
                    Obx(
                      () => CustomSwitch(
                        value: controller.isSelectedSwitch.value,
                        onChanged: (value) {
                          controller.isSelectedSwitch.value = value;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 28,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 2,
                      ),
                      child: Text(
                        "msg_auto_download_updates".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterMedium15,
                      ),
                    ),
                    Obx(
                      () => CustomSwitch(
                        value: controller.isSelectedSwitch1.value,
                        onChanged: (value) {
                          controller.isSelectedSwitch1.value = value;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 28,
                  right: 1,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(
                        bottom: 1,
                      ),
                      child: Text(
                        "msg_show_notifications".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterMedium15,
                      ),
                    ),
                    Obx(
                      () => CustomSwitch(
                        value: controller.isSelectedSwitch2.value,
                        onChanged: (value) {
                          controller.isSelectedSwitch2.value = value;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 29,
                  right: 1,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 2,
                      ),
                      child: Text(
                        "lbl_incognito_mode".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterMedium15,
                      ),
                    ),
                    Obx(
                      () => CustomSwitch(
                        value: controller.isSelectedSwitch3.value,
                        onChanged: (value) {
                          controller.isSelectedSwitch3.value = value;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 79,
                ),
                child: Text(
                  "lbl_app_language".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium15,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 26,
                ),
                child: Text(
                  "lbl_themes".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium15,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 29,
                ),
                child: Text(
                  "lbl_security".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium15,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 81,
                ),
                child: Text(
                  "lbl_download_queue".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium15,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 26,
                ),
                child: Text(
                  "lbl_about".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium15,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 29,
                ),
                child: Text(
                  "lbl_help".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium15,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: getPadding(
                  left: 10,
                  top: 6,
                  right: 10,
                  bottom: 6,
                ),
                decoration: AppDecoration.fillBluegray900,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUsericonfill1,
                      height: getVerticalSize(
                        21.00,
                      ),
                      width: getHorizontalSize(
                        20.00,
                      ),
                      alignment: Alignment.center,
                      margin: getMargin(
                        top: 5,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 7,
                      ),
                      child: Text(
                        "lbl_profile".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular15WhiteA700,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: getPadding(
                  left: 14,
                  top: 5,
                  right: 14,
                  bottom: 5,
                ),
                decoration: AppDecoration.fillBluegray900,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUsericonfill121x20,
                      height: getVerticalSize(
                        21.00,
                      ),
                      width: getHorizontalSize(
                        20.00,
                      ),
                      alignment: Alignment.center,
                      margin: getMargin(
                        top: 6,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 8,
                      ),
                      child: Text(
                        "lbl_home".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular15WhiteA700,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: getPadding(
                  left: 10,
                  top: 4,
                  right: 10,
                  bottom: 4,
                ),
                decoration: AppDecoration.fillBluegray900,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUsericonfill11,
                      height: getVerticalSize(
                        21.00,
                      ),
                      width: getHorizontalSize(
                        20.00,
                      ),
                      margin: getMargin(
                        top: 7,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 9,
                      ),
                      child: Text(
                        "lbl_library".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular15WhiteA700,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: getPadding(
                  left: 5,
                  top: 4,
                  right: 5,
                  bottom: 4,
                ),
                decoration: AppDecoration.fillBluegray900,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUsericonfill12,
                      height: getVerticalSize(
                        21.00,
                      ),
                      width: getHorizontalSize(
                        20.00,
                      ),
                      margin: getMargin(
                        top: 7,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 9,
                      ),
                      child: Text(
                        "lbl_updates".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular15WhiteA700,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: getPadding(
                  left: 16,
                  top: 5,
                  right: 16,
                  bottom: 5,
                ),
                decoration: AppDecoration.fillBlueA400,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUsericonfill13,
                      height: getVerticalSize(
                        21.00,
                      ),
                      width: getHorizontalSize(
                        20.00,
                      ),
                      margin: getMargin(
                        top: 6,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: getPadding(
                          top: 8,
                        ),
                        child: Text(
                          "lbl_more".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular15WhiteA700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

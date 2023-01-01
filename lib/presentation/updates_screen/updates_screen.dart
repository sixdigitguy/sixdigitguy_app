import 'controller/updates_controller.dart';
import 'package:flutter/material.dart';
import 'package:sixdigitguy_app/core/app_export.dart';

class UpdatesScreen extends GetWidget<UpdatesController> {
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
                "lbl_updates".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterBold15WhiteA700,
              ),
              Padding(
                padding: getPadding(
                  top: 13,
                ),
                child: Text(
                  "msg_last_updated_2".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular15WhiteA7001,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 31,
                ),
                child: Text(
                  "lbl_today".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold15WhiteA700,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 20,
                  bottom: 5,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPowerchainsaw80x65,
                      height: getVerticalSize(
                        80.00,
                      ),
                      width: getHorizontalSize(
                        65.00,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          5.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 27,
                        bottom: 21,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_nsanesticks".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium24,
                          ),
                          Padding(
                            padding: getPadding(
                              left: 6,
                              top: 9,
                            ),
                            child: Text(
                              "lbl_vol_1_ch_5".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
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
                decoration: AppDecoration.fillBlueA400,
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
                decoration: AppDecoration.fillBluegray900,
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

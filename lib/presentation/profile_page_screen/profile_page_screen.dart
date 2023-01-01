import 'controller/profile_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:sixdigitguy_app/core/app_export.dart';
import 'package:sixdigitguy_app/widgets/custom_button.dart';
import 'package:sixdigitguy_app/widgets/custom_switch.dart';

class ProfilePageScreen extends GetWidget<ProfilePageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Container(
                width: size.width,
                padding: getPadding(left: 31, top: 13, right: 31, bottom: 13),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: getMargin(top: 30),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: ColorConstant.blue900,
                                  width: getHorizontalSize(2.00)),
                              borderRadius: BorderRadiusStyle.circleBorder67),
                          child: Container(
                              height: getSize(134.00),
                              width: getSize(134.00),
                              padding: getPadding(all: 9),
                              decoration: AppDecoration.outlineBlue900.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder67),
                              child: Stack(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse2,
                                    height: getSize(116.00),
                                    width: getSize(116.00),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(58.00)),
                                    alignment: Alignment.center)
                              ]))),
                      Padding(
                          padding: getPadding(top: 12),
                          child: Text("lbl_john_doe".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterExtraBold32)),
                      Padding(
                          padding: getPadding(left: 17, top: 75, right: 14),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("msg_show_nsfw_content".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium15)),
                                Obx(() => CustomSwitch(
                                    value: controller.isSelectedSwitch.value,
                                    onChanged: (value) {
                                      controller.isSelectedSwitch.value = value;
                                    }))
                              ])),
                      Padding(
                          padding: getPadding(left: 17, top: 21, right: 14),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text(
                                        "msg_recieve_nsfw_notifications".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium15)),
                                Obx(() => CustomSwitch(
                                    value: controller.isSelectedSwitch1.value,
                                    onChanged: (value) {
                                      controller.isSelectedSwitch1.value =
                                          value;
                                    }))
                              ])),
                      Container(
                          width: getHorizontalSize(298.00),
                          margin: getMargin(top: 51),
                          child: Text("msg_filter_content_only".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium15)),
                      CustomButton(
                          height: 39,
                          width: 85,
                          text: "lbl_filter".tr,
                          margin: getMargin(top: 13),
                          variant: ButtonVariant.FillBlueA400,
                          shape: ButtonShape.RoundedBorder17,
                          padding: ButtonPadding.PaddingAll8,
                          fontStyle: ButtonFontStyle.InterMedium15),
                      CustomButton(
                          height: 48,
                          width: 151,
                          text: "msg_become_a_patreon".tr,
                          margin: getMargin(top: 107),
                          shape: ButtonShape.RoundedBorder17,
                          fontStyle: ButtonFontStyle.InterMedium15),
                      Padding(
                          padding: getPadding(top: 32),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("lbl_not_you".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular15),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtSignout();
                                    },
                                    child: Text("lbl_sign_out".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold15))
                              ]))
                    ])),
            bottomNavigationBar: Container(
                width: size.width,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                      padding:
                          getPadding(left: 10, top: 6, right: 10, bottom: 6),
                      decoration: AppDecoration.fillBlueA400,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgUsericonfill1,
                                height: getVerticalSize(21.00),
                                width: getHorizontalSize(20.00),
                                alignment: Alignment.center,
                                margin: getMargin(top: 5)),
                            Padding(
                                padding: getPadding(top: 7),
                                child: Text("lbl_profile".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular15WhiteA700))
                          ])),
                  Container(
                      padding:
                          getPadding(left: 14, top: 5, right: 14, bottom: 5),
                      decoration: AppDecoration.fillBluegray900,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgUsericonfill121x20,
                                height: getVerticalSize(21.00),
                                width: getHorizontalSize(20.00),
                                alignment: Alignment.center,
                                margin: getMargin(top: 6)),
                            Padding(
                                padding: getPadding(top: 8),
                                child: Text("lbl_home".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular15WhiteA700))
                          ])),
                  Container(
                      padding:
                          getPadding(left: 10, top: 4, right: 10, bottom: 4),
                      decoration: AppDecoration.fillBluegray900,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgUsericonfill11,
                                height: getVerticalSize(21.00),
                                width: getHorizontalSize(20.00),
                                margin: getMargin(top: 7)),
                            Padding(
                                padding: getPadding(top: 9),
                                child: Text("lbl_library".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular15WhiteA700))
                          ])),
                  Container(
                      padding: getPadding(left: 5, top: 4, right: 5, bottom: 4),
                      decoration: AppDecoration.fillBluegray900,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgUsericonfill12,
                                height: getVerticalSize(21.00),
                                width: getHorizontalSize(20.00),
                                margin: getMargin(top: 7)),
                            Padding(
                                padding: getPadding(top: 9),
                                child: Text("lbl_updates".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular15WhiteA700))
                          ])),
                  Container(
                      padding:
                          getPadding(left: 16, top: 5, right: 16, bottom: 5),
                      decoration: AppDecoration.fillBluegray900,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgUsericonfill13,
                                height: getVerticalSize(21.00),
                                width: getHorizontalSize(20.00),
                                margin: getMargin(top: 6)),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: getPadding(top: 8),
                                    child: Text("lbl_more".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular15WhiteA700)))
                          ]))
                ]))));
  }

  onTapTxtSignout() {
    Get.toNamed(AppRoutes.signinScreen);
  }
}

import 'controller/sign_option_controller.dart';
import 'package:flutter/material.dart';
import 'package:sixdigitguy_app/core/app_export.dart';
import 'package:sixdigitguy_app/widgets/custom_button.dart';

class SignOptionScreen extends GetWidget<SignOptionController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray900,
            body: Container(
                height: size.height,
                width: size.width,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgPoweranimedesign2776x360,
                      height: getVerticalSize(776.00),
                      width: getHorizontalSize(360.00),
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          width: size.width,
                          padding: getPadding(
                              left: 65, top: 70, right: 65, bottom: 70),
                          decoration: AppDecoration.fillGray900.copyWith(
                              borderRadius:
                                  BorderRadiusStyle.customBorderTL190),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomButton(
                                    height: 67,
                                    width: 230,
                                    text: "lbl_sign_in".tr,
                                    margin: getMargin(top: 495),
                                    fontStyle:
                                        ButtonFontStyle.RobotoRomanRegular32,
                                    onTap: onTapSignin),
                                CustomButton(
                                    height: 67,
                                    width: 230,
                                    text: "lbl_sign_up".tr,
                                    margin: getMargin(top: 31),
                                    onTap: onTapSignup)
                              ])))
                ]))));
  }

  onTapSignin() {
    Get.toNamed(AppRoutes.signinScreen);
  }

  onTapSignup() {
    Get.toNamed(AppRoutes.signupScreen);
  }
}

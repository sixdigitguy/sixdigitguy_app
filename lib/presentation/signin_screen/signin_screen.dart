import 'controller/signin_controller.dart';
import 'package:flutter/material.dart';
import 'package:sixdigitguy_app/core/app_export.dart';
import 'package:sixdigitguy_app/core/utils/validation_functions.dart';
import 'package:sixdigitguy_app/widgets/custom_button.dart';
import 'package:sixdigitguy_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SigninScreen extends GetWidget<SigninController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray900,
            body: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Container(
                    height: size.height,
                    width: size.width,
                    child: Stack(children: [
                      Align(
                          alignment: Alignment.center,
                          child: SingleChildScrollView(
                              child: Container(
                                  height: size.height,
                                  width: size.width,
                                  margin: getMargin(bottom: 5),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: getVerticalSize(776.00),
                                                width: size.width,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgPoweranimedesign2,
                                                          height:
                                                              getVerticalSize(
                                                                  776.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  360.00),
                                                          alignment:
                                                              Alignment.center),
                                                      Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10),
                                                              child: Text(
                                                                  "lbl".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterRegular32)))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                width: size.width,
                                                padding: getPadding(
                                                    left: 29,
                                                    top: 67,
                                                    right: 29,
                                                    bottom: 67),
                                                decoration: AppDecoration
                                                    .fillGray900
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL190),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 42),
                                                          child: Text(
                                                              "msg_username_or_email"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterRegular15)),
                                                      CustomTextFormField(
                                                          width: 301,
                                                          focusNode:
                                                              FocusNode(),
                                                          controller: controller
                                                              .groupNineController,
                                                          hintText:
                                                              "lbl_sixdigitguy"
                                                                  .tr,
                                                          margin:
                                                              getMargin(top: 4),
                                                          padding:
                                                              TextFormFieldPadding
                                                                  .PaddingT15_1),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 17),
                                                          child: Text(
                                                              "lbl_password".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterRegular15)),
                                                      CustomTextFormField(
                                                          width: 301,
                                                          focusNode:
                                                              FocusNode(),
                                                          controller: controller
                                                              .passwordOneController,
                                                          hintText: "lbl2".tr,
                                                          margin:
                                                              getMargin(top: 3),
                                                          padding:
                                                              TextFormFieldPadding
                                                                  .PaddingT15_1,
                                                          textInputAction:
                                                              TextInputAction
                                                                  .done,
                                                          validator: (value) {
                                                            if (value == null ||
                                                                (!isValidPassword(
                                                                    value,
                                                                    isRequired:
                                                                        true))) {
                                                              return "Please enter valid password";
                                                            }
                                                            return null;
                                                          },
                                                          isObscureText: true),
                                                      CustomButton(
                                                          height: 67,
                                                          width: 230,
                                                          text:
                                                              "lbl_sign_in".tr,
                                                          margin: getMargin(
                                                              top: 32),
                                                          onTap: onTapSignin,
                                                          alignment:
                                                              Alignment.center),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 68),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            bottom:
                                                                                1),
                                                                        child: Text(
                                                                            "msg_dont_have_an_account"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtInterRegular15)),
                                                                    GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          onTapTxtSignup();
                                                                        },
                                                                        child: Padding(
                                                                            padding:
                                                                                getPadding(left: 3, top: 1),
                                                                            child: Text("lbl_sign_up".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterBold15)))
                                                                  ])))
                                                    ])))
                                      ]))))
                    ])))));
  }

  onTapSignin() {
    Get.toNamed(AppRoutes.profilePageScreen);
  }

  onTapTxtSignup() {
    Get.toNamed(AppRoutes.signupScreen);
  }
}

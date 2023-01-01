import 'controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:sixdigitguy_app/core/app_export.dart';
import 'package:sixdigitguy_app/core/utils/validation_functions.dart';
import 'package:sixdigitguy_app/widgets/custom_button.dart';
import 'package:sixdigitguy_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends GetWidget<SignupController> {
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
                                  margin: getMargin(bottom: 2),
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
                                                    top: 54,
                                                    right: 29,
                                                    bottom: 54),
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
                                                              top: 72),
                                                          child: Text(
                                                              "lbl_email".tr,
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
                                                              .emailOneController,
                                                          hintText:
                                                              "msg_elduradiessien98_gmail_com"
                                                                  .tr,
                                                          margin:
                                                              getMargin(top: 4),
                                                          validator: (value) {
                                                            if (value == null ||
                                                                (!isValidEmail(
                                                                    value,
                                                                    isRequired:
                                                                        true))) {
                                                              return "Please enter valid email";
                                                            }
                                                            return null;
                                                          }),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 16),
                                                          child: Text(
                                                              "lbl_username".tr,
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
                                                              .groupFourController,
                                                          hintText:
                                                              "lbl_sixdigitguy"
                                                                  .tr,
                                                          margin: getMargin(
                                                              top: 3)),
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
                                                              "lbl_sign_up".tr,
                                                          margin: getMargin(
                                                              top: 36),
                                                          onTap: onTapSignup,
                                                          alignment:
                                                              Alignment.center),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 73),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                        "msg_already_have_an"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtInterRegular15),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                4),
                                                                        child: Text(
                                                                            "lbl_sign_in"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtInterBold15))
                                                                  ])))
                                                    ])))
                                      ]))))
                    ])))));
  }

  onTapSignup() {
    Get.toNamed(AppRoutes.profilePageScreen);
  }
}

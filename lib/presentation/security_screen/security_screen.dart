import 'controller/security_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sixdigitguy_app/core/app_export.dart';
import 'package:sixdigitguy_app/widgets/custom_switch.dart';

class SecurityScreen extends GetWidget<SecurityController> {
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_language".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold15WhiteA700,
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgBackbtn,
                height: getVerticalSize(
                  1.00,
                ),
                width: getHorizontalSize(
                  21.00,
                ),
                alignment: Alignment.centerLeft,
                margin: getMargin(
                  left: 3,
                  top: 33,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 27,
                  top: 110,
                  right: 26,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 2,
                      ),
                      child: Text(
                        "msg_lock_app_on_exit".tr,
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
              Container(
                width: getHorizontalSize(
                  254.00,
                ),
                margin: getMargin(
                  top: 143,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_set_app_pin".tr,
                        style: TextStyle(
                          color: ColorConstant.whiteA700,
                          fontSize: getFontSize(
                            15,
                          ),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: "msg_enable_internet".tr,
                        style: TextStyle(
                          color: ColorConstant.whiteA700,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 31,
                  bottom: 5,
                ),
                child: Container(
                  width: getHorizontalSize(
                    230.00,
                  ),
                  height: getVerticalSize(
                    50.00,
                  ),
                  child: Obx(
                    () => PinCodeTextField(
                      appContext: context,
                      controller: controller.otpController.value,
                      length: 4,
                      obscureText: false,
                      obscuringCharacter: '*',
                      keyboardType: TextInputType.number,
                      autoDismissKeyboard: true,
                      enableActiveFill: true,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      onChanged: (value) {},
                      pinTheme: PinTheme(
                        fieldHeight: getHorizontalSize(
                          50.00,
                        ),
                        fieldWidth: getHorizontalSize(
                          50.00,
                        ),
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            5.00,
                          ),
                        ),
                        selectedFillColor: ColorConstant.fromHex("#1212121D"),
                        activeFillColor: ColorConstant.fromHex("#1212121D"),
                        inactiveFillColor: ColorConstant.fromHex("#1212121D"),
                        inactiveColor: ColorConstant.whiteA700,
                        selectedColor: ColorConstant.whiteA700,
                        activeColor: ColorConstant.whiteA700,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

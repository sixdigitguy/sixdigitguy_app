import 'controller/themes_controller.dart';
import 'package:flutter/material.dart';
import 'package:sixdigitguy_app/core/app_export.dart';
import 'package:sixdigitguy_app/widgets/custom_radio_button.dart';

class ThemesScreen extends GetWidget<ThemesController> {
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
                "lbl_language".tr,
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
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 37,
                  top: 90,
                  bottom: 5,
                ),
                child: Obx(
                  () => Column(
                    children: [
                      CustomRadioButton(
                        text: "lbl_english".tr,
                        value: controller.themesModelObj.value.radioList[0],
                        groupValue: controller.radioGroup.value,
                        margin: getMargin(
                          right: 18,
                        ),
                        onChange: (value) {
                          controller.radioGroup.value = value;
                        },
                      ),
                      CustomRadioButton(
                        text: "lbl_french".tr,
                        value: controller.themesModelObj.value.radioList[1],
                        groupValue: controller.radioGroup.value,
                        margin: getMargin(
                          top: 20,
                          right: 20,
                        ),
                        onChange: (value) {
                          controller.radioGroup.value = value;
                        },
                      ),
                      CustomRadioButton(
                        text: "lbl_spanish".tr,
                        value: controller.themesModelObj.value.radioList[2],
                        groupValue: controller.radioGroup.value,
                        margin: getMargin(
                          top: 23,
                          right: 12,
                        ),
                        onChange: (value) {
                          controller.radioGroup.value = value;
                        },
                      ),
                      CustomRadioButton(
                        text: "lbl_japanese".tr,
                        value: controller.themesModelObj.value.radioList[3],
                        groupValue: controller.radioGroup.value,
                        margin: getMargin(
                          top: 22,
                        ),
                        onChange: (value) {
                          controller.radioGroup.value = value;
                        },
                      ),
                    ],
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

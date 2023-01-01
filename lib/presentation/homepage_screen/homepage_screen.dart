import '../homepage_screen/widgets/homepage_item_widget.dart';
import 'controller/homepage_controller.dart';
import 'models/homepage_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sixdigitguy_app/core/app_export.dart';
import 'package:sixdigitguy_app/widgets/custom_button.dart';

class HomepageScreen extends GetWidget<HomepageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: Container(
          width: size.width,
          padding: getPadding(
            top: 20,
            bottom: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 20,
                  ),
                  child: Text(
                    "lbl_homepage".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterBold15WhiteA700,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle7,
                height: getVerticalSize(
                  200.00,
                ),
                width: getHorizontalSize(
                  360.00,
                ),
                margin: getMargin(
                  top: 7,
                ),
              ),
              CustomButton(
                height: 38,
                width: 328,
                text: "lbl_search_library".tr,
                margin: getMargin(
                  top: 37,
                ),
                variant: ButtonVariant.FillBluegray900,
                shape: ButtonShape.RoundedBorder17,
                padding: ButtonPadding.PaddingAll8,
                fontStyle: ButtonFontStyle.InterRegular15,
              ),
              Padding(
                padding: getPadding(
                  left: 18,
                  top: 37,
                  right: 30,
                ),
                child: Obx(
                  () => ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller
                        .homepageModelObj.value.homepageItemList.length,
                    itemBuilder: (context, index) {
                      HomepageItemModel model = controller
                          .homepageModelObj.value.homepageItemList[index];
                      return HomepageItemWidget(
                        model,
                      );
                    },
                  ),
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
                decoration: AppDecoration.fillBlueA400,
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

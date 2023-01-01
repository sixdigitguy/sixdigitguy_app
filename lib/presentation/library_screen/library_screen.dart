import '../library_screen/widgets/library_item_widget.dart';
import 'controller/library_controller.dart';
import 'models/library_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sixdigitguy_app/core/app_export.dart';
import 'package:sixdigitguy_app/widgets/custom_button.dart';

class LibraryScreen extends GetWidget<LibraryController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 16,
            top: 20,
            right: 16,
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 4,
                ),
                child: Text(
                  "lbl_library".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold15WhiteA700,
                ),
              ),
              CustomButton(
                height: 38,
                width: 328,
                text: "lbl_search_library".tr,
                margin: getMargin(
                  top: 57,
                ),
                variant: ButtonVariant.FillBluegray900,
                shape: ButtonShape.RoundedBorder17,
                padding: ButtonPadding.PaddingAll8,
                fontStyle: ButtonFontStyle.InterRegular15,
              ),
              Padding(
                padding: getPadding(
                  left: 4,
                  top: 22,
                ),
                child: Obx(
                  () => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: getVerticalSize(
                        251.00,
                      ),
                      crossAxisCount: 2,
                      mainAxisSpacing: getHorizontalSize(
                        24.00,
                      ),
                      crossAxisSpacing: getHorizontalSize(
                        24.00,
                      ),
                    ),
                    physics: BouncingScrollPhysics(),
                    itemCount:
                        controller.libraryModelObj.value.libraryItemList.length,
                    itemBuilder: (context, index) {
                      LibraryItemModel model = controller
                          .libraryModelObj.value.libraryItemList[index];
                      return LibraryItemWidget(
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
                decoration: AppDecoration.fillBlueA400,
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

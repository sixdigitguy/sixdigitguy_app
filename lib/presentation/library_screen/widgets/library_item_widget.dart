import '../controller/library_controller.dart';
import '../models/library_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sixdigitguy_app/core/app_export.dart';

// ignore: must_be_immutable
class LibraryItemWidget extends StatelessWidget {
  LibraryItemWidget(this.libraryItemModelObj);

  LibraryItemModel libraryItemModelObj;

  var controller = Get.find<LibraryController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        250.00,
      ),
      width: getHorizontalSize(
        150.00,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPowerchainsaw,
            height: getVerticalSize(
              250.00,
            ),
            width: getHorizontalSize(
              150.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                5.00,
              ),
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: getPadding(
                bottom: 5,
              ),
              child: Text(
                "lbl_nsanesticks".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterMedium15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

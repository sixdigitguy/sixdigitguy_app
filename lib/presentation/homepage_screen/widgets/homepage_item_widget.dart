import '../controller/homepage_controller.dart';
import '../models/homepage_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sixdigitguy_app/core/app_export.dart';

// ignore: must_be_immutable
class HomepageItemWidget extends StatelessWidget {
  HomepageItemWidget(this.homepageItemModelObj);

  HomepageItemModel homepageItemModelObj;

  var controller = Get.find<HomepageController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 18.5,
        bottom: 18.5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPowerchainsaw,
            height: getSize(
              120.00,
            ),
            width: getSize(
              120.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                5.00,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 7,
              bottom: 41,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "msg_looking_for_recruits".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold15WhiteA700,
                ),
                Container(
                  width: getHorizontalSize(
                    173.00,
                  ),
                  margin: getMargin(
                    top: 4,
                  ),
                  child: Text(
                    "msg_hey_six_digitguy".tr,
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtInterMedium12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

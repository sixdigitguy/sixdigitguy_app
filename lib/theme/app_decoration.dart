import 'package:flutter/material.dart';
import 'package:sixdigitguy_app/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillGray900 => BoxDecoration(
        color: ColorConstant.gray900,
      );
  static BoxDecoration get outlineBlue900 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.blue900,
          width: getHorizontalSize(
            2.00,
          ),
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillBluegray900 => BoxDecoration(
        color: ColorConstant.blueGray900,
      );
  static BoxDecoration get fillBlueA400 => BoxDecoration(
        color: ColorConstant.blueA400,
      );
}

class BorderRadiusStyle {
  static BorderRadius circleBorder67 = BorderRadius.circular(
    getHorizontalSize(
      67.00,
    ),
  );

  static BorderRadius customBorderTL190 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        190.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        190.00,
      ),
    ),
  );

  static BorderRadius circleBorder58 = BorderRadius.circular(
    getHorizontalSize(
      58.00,
    ),
  );

  static BorderRadius roundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5.00,
    ),
  );
}

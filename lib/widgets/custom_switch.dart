import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:sixdigitguy_app/core/app_export.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({this.alignment, this.margin, this.value, this.onChanged});

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  bool? value;

  Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: value ?? false,
        height: getHorizontalSize(21),
        width: getHorizontalSize(42),
        toggleSize: 21,
        borderRadius: getHorizontalSize(
          10.00,
        ),
        switchBorder: Border.all(
          color: ColorConstant.blueGray100,
          width: getHorizontalSize(
            1.00,
          ),
        ),
        activeColor: ColorConstant.blueGray900,
        activeToggleColor: ColorConstant.blueA400,
        inactiveColor: ColorConstant.blueGray900,
        inactiveToggleColor: ColorConstant.blueGray100,
        onToggle: (value) {
          onChanged!(value);
        },
      ),
    );
  }
}

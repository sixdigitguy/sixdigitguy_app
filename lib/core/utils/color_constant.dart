import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color blue900 = fromHex('#1651ab');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color black900 = fromHex('#000000');

  static Color teal700 = fromHex('#198754');

  static Color blueA400 = fromHex('#0d6efd');

  static Color bluegray400 = fromHex('#888888');

  static Color gray900 = fromHex('#232122');

  static Color blueGray900 = fromHex('#352d31');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

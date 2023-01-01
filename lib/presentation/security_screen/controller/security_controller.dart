import 'package:sixdigitguy_app/core/app_export.dart';
import 'package:sixdigitguy_app/presentation/security_screen/models/security_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

class SecurityController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<SecurityModel> securityModelObj = SecurityModel().obs;

  RxBool isSelectedSwitch = false.obs;

  @override
  void codeUpdated() {
    otpController.value.text = code!;
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

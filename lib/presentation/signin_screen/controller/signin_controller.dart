import 'package:sixdigitguy_app/core/app_export.dart';
import 'package:sixdigitguy_app/presentation/signin_screen/models/signin_model.dart';
import 'package:flutter/material.dart';

class SigninController extends GetxController {
  TextEditingController groupNineController = TextEditingController();

  TextEditingController passwordOneController = TextEditingController();

  Rx<SigninModel> signinModelObj = SigninModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupNineController.dispose();
    passwordOneController.dispose();
  }
}

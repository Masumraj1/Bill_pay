import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mobile_bill/app/global/helper/local_db/local_db.dart';
import 'package:mobile_bill/app/utils/constants.dart';

class AuthController extends GetxController{
  ///==================================✅✅Remember✅✅=======================

  RxBool isRemember = false.obs;

  toggleRemember() {
    isRemember.value = !isRemember.value;
    debugPrint("Remember me==============>>>>>>>>>$isRemember");
    refresh();
    SharePrefsHelper.setBool(AppConstants.isRememberMe, isRemember.value);
  }
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
}
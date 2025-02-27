import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobile_bill/app/controllers/auth_controller.dart';
import 'package:mobile_bill/app/utils/app_colors.dart';
import 'package:mobile_bill/app/utils/app_strings.dart';
import 'package:mobile_bill/app/view/components/custom_button.dart';
import 'package:mobile_bill/app/view/components/custom_text.dart';
import 'package:mobile_bill/app/view/components/custom_text_field.dart';

class SingInScreen extends StatelessWidget {
   SingInScreen({super.key});

  final AuthController authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(
        children: [

          ///=============================Email=====================
          CustomTextField(
            hintText: AppStrings.enterYourUserName,
            textEditingController: authController.emailController,
            validator: (value) {
              if (value!.isEmpty) {
                return AppStrings.enterValidEmail;
              } else if (!AppStrings.emailRegexp
                  .hasMatch(authController.emailController.text)) {
                return AppStrings.enterValidEmail;
              } else {
                return null;
              }
            },
          ),
          SizedBox(
            height: 10.h,
          ),

          ///===========================Enter Password======================
          CustomTextField(
            hintText: AppStrings.enterYourPassword,
            isPassword: true,
            textEditingController: authController.passwordController,
            validator: (value) {
              if (value!.isEmpty) {
                return AppStrings.passwordMustHaveEightWith;
              } else if (value.length < 8 ||
                  !AppStrings.passRegexp.hasMatch(value)) {
                return AppStrings.passwordLengthAndContain;
              } else {
                return null;
              }
            },
          ),

          ///============================Forgot Password================
          Row(
            children: [
              Checkbox(
                value: authController.isRemember.value,
                checkColor: AppColors.buttonColor,
                activeColor: AppColors.black,
                onChanged: (value) {
                  authController.isRemember.value = value ?? false;
                  debugPrint("Checkbox clicked, Remember value: ${authController.isRemember.value}");
                },
              ),



              GestureDetector(
                onTap: () {
                },
                child: const CustomText(
                  decoration: TextDecoration.underline,
                  textAlign: TextAlign.right,
                  top: 24,
                  text: AppStrings.forgetPassword,
                  fontSize: 14,
                  color: AppColors.forgetTextColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 24.h,
          ),

          ///============================Sign In Button=============

         CustomButton(
            onTap: () {
              // if (formKey.currentState!.validate()) {
              //   authController.signIn();
              // }
            },
            fillColor: AppColors.buttonColor,
            title: AppStrings.login,
          ),
          SizedBox(
            height: 48.h,
          ),

        ],
      ),
    );
  }
}

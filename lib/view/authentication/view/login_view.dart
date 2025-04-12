import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:music_app/core/constants/padding_constants.dart';
import 'package:music_app/core/utils/extensions.dart';
import 'package:music_app/view/authentication/view/forgot_password_view.dart';
import 'package:music_app/view/authentication/view/signup_view.dart';

import '../../../core/constants/assets_constants.dart';
import '../../../core/constants/color_constants.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/entry_field.dart';

import '../../../core/widgets/text_widgets.dart';
import '../../../core/widgets/widgets.dart';
import '../controller/authentication_controller.dart';

class LoginView extends StatelessWidget {
  AuthenticationController authenticationController =
      Get.put(AuthenticationController());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.hideKeyboard(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstants.whiteColor,
        body: Padding(
          padding: PaddingConstants.screenPaddingHalf,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Widgets.heightSpaceH4,
              Image.asset(
                Assets.logoWithNoTxt,
                width: .40.sw,
              ),
              Widgets.heightSpaceH2,
              formSection(),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Texts.textNormal("Don\'t have an account?  ",
                      color: Colors.black45, size: 12),
                  GestureDetector(
                    onTap: () {
                      Get.to(SignUpView());
                    },
                    child: Texts.textBlock("Signup",
                        color: ColorConstants.blackColor,
                        size: 13,
                        fontFamily: "PoppinsRegular",
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Widgets.heightSpaceH2,
            ],
          ),
        ),
      ),
    );
  }

  formSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Texts.textBold("Welcome Again!",
            color: ColorConstants.blackColor, size: 20),
        Widgets.heightSpaceH3,
        EntryField(
          color: ColorConstants.whiteColor,
          controller: emailController,
          prefixIcon: Assets.emailIcon,
          hint: "Type your email",

        ),
        Obx(
          () => EntryField(
            controller: passwordController,
            prefixIcon: Assets.lockIcon,
            hint: "Type your password",
            obscureText: authenticationController.obscured.value,
            suffixIcon: authenticationController.obscured.value == false
                ? CupertinoIcons.eye_slash
                : Icons.remove_red_eye_outlined,
            onTrailingTap: () {
              authenticationController.toggleObscured();
            },
          ),
        ),
        Widgets.heightSpaceH1,
        GestureDetector(
          onTap: () {
           Get.to(ForgotPasswordView());
          },
          child: Align(
            alignment: Alignment.topRight,
            child: Texts.textNormal(
              "Forgot Password?",
              color: Colors.black54,
              size: 12,
            ),
          ),
        ),
        Widgets.heightSpaceH3,
        CustomButton(
          label: "Login",
          textColor: ColorConstants.whiteColor,
          backgroundColor: ColorConstants.primaryColor,
          radius: 10,
          onTap: () {
            if (!GetUtils.isEmail(emailController.text)) {
              Widgets.showSnackBar(
                  "Incomplete Form", "Please enter valid email");
            } else if (passwordController.text.length < 6) {
              Widgets.showSnackBar("Incomplete Form",
                  "Please enter password min length 6 characters");
            } else {
              authenticationController.loginUser(
                  emailController.text.toString(),
                  passwordController.text.toString());
            }
          },
        ),
        Widgets.heightSpaceH2,
        Row(
          children: [
            const Expanded(
                child: Divider(
              color: Colors.black26,
              thickness: .5,
            )),
            Padding(
              padding: PaddingConstants.contentPadding,
              child: Container(
                child: Texts.textNormal("OR", color: ColorConstants.blackColor, size: 12),
              ),
            ),
            const Expanded(
                child: Divider(
              color: Colors.black26,
              thickness: .5,
            )),
          ],
        ),
        Widgets.heightSpaceH2,
        CustomButton(
          icon: Image.asset(
            Assets.gooogleIcon,
            height: 16,
            width: 16,
          ),
          label: "Login With Google",
          textColor: ColorConstants.greyTextColor,
          backgroundColor: ColorConstants.grayFillColor,
          radius: 10,
          borderColor: ColorConstants.grayBorderColor,
          onTap: () {},
        ),
      ],
    );
  }
}

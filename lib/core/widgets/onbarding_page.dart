import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:music_app/core/widgets/text_widgets.dart';
import '../../controller/onboarding_controller.dart';
import '../../model/onboardingmodel.dart';
import '../constants/padding_constants.dart';
import 'widgets.dart';

class OnBoardingPage extends StatelessWidget {
  OnboardingController onbardingController = Get.put(OnboardingController());
  final SliderObject _sliderObject;
  OnBoardingPage(this._sliderObject, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: PaddingConstants.screenPaddingHalf,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Widgets.heightSpaceH4,
            Center(
              child: Image.asset(
                _sliderObject.image!,
              ),
            ),
            Widgets.heightSpaceH4,
            Texts.textBold(_sliderObject.title!,
                size: 19,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.start,


            ),
            Widgets.heightSpaceH1,
            Texts.textNormal(_sliderObject.subTitle!,
                size: 14, textAlign: TextAlign.start),
            Widgets.heightSpaceH5,
            Widgets.heightSpaceH5,
            Widgets.heightSpaceH5,
            Widgets.heightSpaceH5,
          ],
        ),
      ),
    );
  }
}

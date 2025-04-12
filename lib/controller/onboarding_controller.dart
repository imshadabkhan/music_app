import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/core/constants/color_constants.dart';
import 'package:music_app/core/widgets/circular_index_widget.dart';


import '../core/constants/assets_constants.dart';
import '../model/onboardingmodel.dart';

class OnboardingController extends GetxController {
  Rx<int> currentPage = 1.obs;

  final List<SliderObject> sliderData = [

    SliderObject(
      subTitle:"Contary to poplar belief lorem Ipsum is not simply random text.",

      title: "Find Best Musicians all around your city" ,
      image: Assets.onboarding1,
    ),

    SliderObject(
      title:"Find Best Musicians all around your city",
      subTitle:"Contary to poplar belief lorem Ipsum is not simply random text.",
      image: Assets.onboarding2,
    ),

    SliderObject(
      title:  "Find Best Musicians all around your city",
      subTitle: "Contary to poplar belief lorem Ipsum is not simply random text.",
      image: Assets.onboarding3,
    ),


  ];

  Widget properCircleIndexWidget(int index) {
    return index == currentPage.value
        ? CircularIndexWidget(color: ColorConstants.redColor,)
        : CircularIndexWidget(color:ColorConstants.greyTextColor ,);
  }

  onPageChanged(int index) {
    currentPage.value = index + 1;
  }
}


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/core/constants/color_constants.dart';
import 'package:music_app/core/widgets/text_widgets.dart';
import 'package:music_app/core/widgets/widgets.dart';


import '../constants/assets_constants.dart';

class ChatHeader extends StatelessWidget {
  const ChatHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: Row(children: [
        GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
            )),
        Widgets.widthSpaceW2,
        CircleAvatar(
          backgroundImage: AssetImage(Assets.profileImg1),
        ),
        Widgets.widthSpaceW2,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Texts.textBold("Felix Murphy",
                size: 16, fontWeight: FontWeight.w700),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 4,
                  backgroundColor: ColorConstants.greyTextColor,
                ),
                Widgets.widthSpaceW1,
                Texts.textNormal("Active Now",
                    size: 12, color: ColorConstants.greyTextColor),
              ],
            ),
          ],
        )
      ]),
    );
  }
}
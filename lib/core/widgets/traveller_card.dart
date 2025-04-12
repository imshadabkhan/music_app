// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:music_app/core/constants/padding_constants.dart';
// import 'package:music_app/core/widgets/text_widgets.dart';
// import 'package:music_app/core/widgets/widgets.dart';
//
// import '../constants/assets_constants.dart';
// import '../constants/color_constants.dart';
// import 'bookingscreen_card.dart';
// import 'custom_button.dart';
//
// Widget buildTravellerSection(String trackerName) {
//   return Container(
//     padding: PaddingConstants.screenPaddingHalf,
//     decoration: Widgets.blockDecoration,
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           children: [
//             Image.asset(Assets.profileImg1,height: 60,width: 60,),
//             Widgets.widthSpaceW3,
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Texts.textNormal('Traveller',
//                     color: ColorConstants.greyTextColor, size: 13),
//                SizedBox(height: 3),
//                 Texts.textBold(trackerName,
//                     fontWeight: FontWeight.w600, size: 15),
//
//               ],
//             ),
//           ],
//         ),
//
//
//
//         Widgets.heightSpaceH2, Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//            Expanded(
//               child: buildTextGroup(
//                   title: "Countries",
//                   value: "Spain, Italy",
//                   icon:  Assets.locationIcon)) , Widgets.widthSpaceW3,Expanded(
//           child: buildTextGroup(
//               title: "Budget Range",
//               value: "100€- 2000€",
//               icon: Assets.dollarIcon),
//
//         ),
//           ],
//         ), Widgets.heightSpaceH2,
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//
//             Expanded(
//               child: buildTextGroup(
//                   title: "Start Date",
//                   value: "03-04-2025",
//                   icon: Assets.calendarIcon),
//             ) , Widgets.widthSpaceW3,Expanded(
//               child: buildTextGroup(
//                   title: "End Date",
//                   value: "14-14-2025",
//                   icon:  Assets.calendarIcon),
//             ),
//           ],
//         ),
//
//
//         Widgets.heightSpaceH2,
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Expanded(
//                 child: CustomButton(
//                   onTap: () {
//                     Get.toNamed(AppRoutes.detailView);
//
//                   },
//                   label: "View Details",
//                   fontSize: 12,
//                   textColor: Colors.black,
//                   borderColor: ColorConstants.blackColor,
//                 radius: 50,
//                 )),
//             Widgets.widthSpaceW3,
//             Expanded(
//                 child: CustomButton(
//                   onTap: () {
//
//                     Get.toNamed(AppRoutes.chatScreen);
//
//                   },
//                   label: "Chat",
// fontSize: 12,
//                   backgroundColor: ColorConstants.primaryColor,
//                   radius: 50,
//                   textColor: ColorConstants.blackColor,
//
//                 )),
//           ],
//         ),
//
//
//       ],
//     ),
//   );
// }
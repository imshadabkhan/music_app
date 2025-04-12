// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:music_app/core/widgets/widgets.dart';
//
// import '../constants/color_constants.dart';
// import '../constants/padding_constants.dart';
//
// import 'custom_button.dart';
//
// Widget buildBookingCard({
//   required String title,
//   required String startDate,
//   required String endDate,
//   required String location,
//   required String agent,
//   required String deposit,
//   required String status,
//   required Color statusColor,
// }) {
//   return Container(
//     padding: PaddingConstants.screenPaddingHalf,
//     decoration: Widgets.blockDecoration,
//     margin: const EdgeInsets.only(bottom: 12),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Widgets.heightSpaceH1,
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Expanded(
//               child: buildTextGroup(
//                   title: "Title",
//                   value: "Bali Adventure",
//                   icon: Assets.titleIcon),
//             ),
//             Widgets.widthSpaceW4,
//             Expanded(
//               child: buildTextGroup(
//                   title: "Status", value: "Upcoming", icon: Assets.statusIcon),
//             ),
//           ],
//         ),
//         Widgets.heightSpaceH2,
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Expanded(
//               child: buildTextGroup(
//                   title: "Start Date",
//                   value: startDate,
//                   icon: Assets.calendarIcon),
//             ),
//             Widgets.widthSpaceW4,
//             Expanded(
//               child: buildTextGroup(
//                   title: "End Date", value: endDate, icon: Assets.calendarIcon),
//             ),
//           ],
//         ),
//         Widgets.heightSpaceH2,
//         buildTextGroup(
//             title: "Location", value: location, icon: Assets.locationIcon),
//         Divider(
//           thickness: .5,
//           color: ColorConstants.greyColor,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Expanded(
//               child: buildTextGroup(
//                   title: "Host Name", value: agent, icon: Assets.profileIcon),
//             ),
//             Widgets.widthSpaceW4,
//             Expanded(
//               child: buildTextGroup(
//                   title: "Deposit Paid",
//                   value: deposit,
//                   icon: Assets.dollarIcon),
//             ),
//           ],
//         ),
//         Widgets.heightSpaceH3,
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Expanded(
//                 child: CustomButton(
//               onTap: () {
//                 Get.to(() => TravellerBookingDetailsView(
//                 ));
//
//               },
//               label: "Details",fontSize: 12,
//               textColor: ColorConstants.blackColor,
//               borderColor: ColorConstants.blackColor,
//               radius: 50,
//             )),
//             Widgets.widthSpaceW4,
//             Expanded(
//                 child: CustomButton(
//               onTap: () {
//                 Get.toNamed(AppRoutes.chatScreen);
//               },
//               label: "Chat ",
//               textColor: ColorConstants.blackColor,
//               radius: 50,fontSize: 12,
//               backgroundColor: ColorConstants.primaryColor,
//             )),
//             // Widgets.widthSpaceW1,
//             // Expanded(
//             //     child: CustomButton(
//             //         label: "Cancel",
//             //         textColor: ColorConstants.blackColor,
//             //         radius: 50,
//             //         backgroundColor: ColorConstants.redColor)),
//           ],
//         ),
//         Widgets.heightSpaceH1,
//       ],
//     ),
//   );
// }Widget buildHostBookingCard({
//   required String title,
//   required String startDate,
//   required String endDate,
//   required String location,
//   required String agent,
//   required String deposit,
//   required String status,
//   required Color statusColor,
// }) {
//   return Container(
//     padding: PaddingConstants.screenPaddingHalf,
//     decoration: Widgets.blockDecoration,
//     margin: const EdgeInsets.only(bottom: 12),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Widgets.heightSpaceH1,
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Expanded(
//               child: buildTextGroup(
//                   title: "Title",
//                   value: "Bali Adventure",
//                   icon: Assets.titleIcon),
//             ),
//             Widgets.widthSpaceW4,
//             Expanded(
//               child: buildTextGroup(
//                   title: "Status", value: "Upcoming", icon: Assets.statusIcon),
//             ),
//           ],
//         ),
//         Widgets.heightSpaceH2,
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Expanded(
//               child: buildTextGroup(
//                   title: "Start Date",
//                   value: startDate,
//                   icon: Assets.calendarIcon),
//             ),
//             Widgets.widthSpaceW4,
//             Expanded(
//               child: buildTextGroup(
//                   title: "End Date", value: endDate, icon: Assets.calendarIcon),
//             ),
//           ],
//         ),
//         Widgets.heightSpaceH2,
//         buildTextGroup(
//             title: "Location", value: location, icon: Assets.locationIcon),
//         Divider(
//           thickness: .5,
//           color: ColorConstants.greyColor,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Expanded(
//               child: buildTextGroup(
//                   title: "Traveler Name", value: agent, icon: Assets.profileIcon),
//             ),
//             Widgets.widthSpaceW4,
//             Expanded(
//               child: buildTextGroup(
//                   title: "Deposit Paid",
//                   value: deposit,
//                   icon: Assets.dollarIcon),
//             ),
//           ],
//         ),
//         Widgets.heightSpaceH3,
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Expanded(
//                 child: CustomButton(
//                   onTap: () {
//                     Get.to(() => BookingDetailsView(
//                     ));
//
//                   },
//                   label: "Details",fontSize: 12,
//                   textColor: ColorConstants.blackColor,
//                   borderColor: ColorConstants.blackColor,
//                   radius: 50,
//                 )),
//             Widgets.widthSpaceW2,
//             Expanded(
//                 child: CustomButton(
//                   onTap: () {
//                     Get.toNamed(AppRoutes.chatScreen);
//                   },
//                   label: "Chat ",
//                   textColor: ColorConstants.blackColor,
//                   radius: 50,fontSize: 12,
//                   backgroundColor: ColorConstants.primaryColor,
//                 )),
//             Widgets.widthSpaceW2,
//             Expanded(
//                 child: CustomButton(
//                     label: "Cancel",
//                     textColor: ColorConstants.whiteColor,
//                     radius: 50,fontSize: 12,
//                     backgroundColor: ColorConstants.redColor)),
//           ],
//         ),
//         Widgets.heightSpaceH1,
//       ],
//     ),
//   );
// }
// Widget buildRequestCard({
//   required String title,
//   required String startDate,
//   required String endDate,
//   required String location,
//   required String agent,
//   required String deposit,
//   required String status,
//   required Color statusColor,
// }) {
//   return Container(
//     padding: PaddingConstants.screenPaddingHalf,
//     decoration: Widgets.blockDecoration,
//     margin: const EdgeInsets.only(bottom: 12),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Widgets.heightSpaceH1,
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Expanded(
//               child: buildTextGroup(
//                   title: "Country",
//                   value: "Japan",
//                   icon: Assets.locationIcon),
//             ),
//             Widgets.widthSpaceW4,
//             Expanded(
//               child: buildTextGroup(
//                   title: "Status", value: "Active", icon: Assets.statusIcon),
//             ),
//           ],
//         ), Widgets.heightSpaceH2,
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Expanded(
//               child: buildTextGroup(
//                   title: "Start City",
//                   value: "Tokyo",
//                   icon: Assets.cityIcon),
//             ),
//             Widgets.widthSpaceW4,
//             Expanded(
//               child: buildTextGroup(
//                   title: "End City", value: "Osaka", icon: Assets.cityIcon),
//             ),
//           ],
//         ),
//         Widgets.heightSpaceH2,
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Expanded(
//               child: buildTextGroup(
//                   title: "Start Date",
//                   value: startDate,
//                   icon: Assets.calendarIcon),
//             ),
//             Widgets.widthSpaceW4,
//             Expanded(
//               child: buildTextGroup(
//                   title: "End Date", value: endDate, icon: Assets.calendarIcon),
//             ),
//           ],
//         ),
//         Widgets.heightSpaceH2,
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Expanded(
//               child: buildTextGroup(
//                   title: "Budget Range",
//                   value: "300€ - 1200€",
//                   icon: Assets.dollarIcon),
//             ),
//             Widgets.widthSpaceW4,
//             Expanded(
//               child: buildTextGroup(
//                   title: "Interests", value: "Adventure", icon: Assets.interestIcon),
//             ),
//           ],
//         ),
//         Widgets.heightSpaceH2,
//         const Text(
//           "Additional Notes" ?? "",
//           style: TextStyle(
//               fontSize: 10,
//               color: Colors.black54,
//               fontFamily: "InstrumentSansRegular"),
//         ),
//         const SizedBox(height: 2),
//         Texts.textBlock("Looking for a local guide to explore hidden gems.",
//             size: 12,
//             color: ColorConstants.blackColor,maxline: 5,
//             fontWeight: FontWeight.w500),
//
//         Widgets.heightSpaceH3,
//         status=="Active"?CustomButton(
//                 label: "Deactivate Request",
//                 textColor: ColorConstants.whiteColor,
//                 radius: 50,
//                 backgroundColor: ColorConstants.redColor):CustomButton(
//             label: "Re-activate Request",
//             textColor: ColorConstants.blackColor,
//             radius: 50,
//             backgroundColor: ColorConstants.primaryColor),
//         Widgets.heightSpaceH1,
//       ],
//     ),
//   );
// }
// buildTextGroup({String? title, String? value, String? icon}) {
//   return Row(
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//       icon!=null?Row(
//         children: [
//           Image.asset(
//             icon ?? "",
//             width: 14,
//             height: 14,
//             color: Colors.black54,
//           ),
//           SizedBox(
//             width: 5,
//           ),
//         ],
//       ):SizedBox(),
//       Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title ?? "",
//             style: const TextStyle(
//                 fontSize: 10,
//                 color: Colors.black54,
//                 fontFamily: "InstrumentSansRegular"),
//           ),
//           const SizedBox(height: 2),
//           Texts.textBlock(value ?? "",
//               size: 12,
//               color: ColorConstants.blackColor,
//               fontWeight: FontWeight.w500),
//         ],
//       ),
//     ],
//   );
// }

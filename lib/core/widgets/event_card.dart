//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
// import 'package:indyguide/core/widgets/text_widgets.dart';
// import 'package:indyguide/core/widgets/widgets.dart';
//
//
// import '../constants/assets_constants.dart';
// import '../constants/color_constants.dart';
//
// class EventCard extends StatelessWidget {
//  Callback? onButtonTap;
//   Events? event;
//    EventCard({
//     super.key,this.event,this.onButtonTap
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(10),
//       margin: const EdgeInsets.only(left: 10),
//       width: .60.sw,
//
//       decoration: Widgets.cardBoxDecoration,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Stack(
//             children: [
//
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(15),
//                 child: Widgets.networkImage(event?.thumbnailImage??"",height: .18.sh,width: .60.sw,),),
//
//               // const Positioned(
//               //   right: 10,
//               //   top: 10,
//               //   child: CircleAvatar(
//               //     backgroundColor: Colors.black38,
//               //     radius: 15,
//               //     child: Icon(
//               //       CupertinoIcons.heart_fill,
//               //       color: Colors.white,
//               //       size: 18,
//               //     ),
//               //   ),
//               // )
//             ],
//           ),
//           Widgets.heightSpaceH1,
//           Texts.textBlock(event?.name??"",
//               size: 13,
//               fontWeight: FontWeight.w900,
//               color: Colors.black,
//               maxline: 1),
//           Widgets.heightSpaceH1,
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   const Icon(
//                     Icons.calendar_month,
//                     size: 10,
//                     color: Colors.black,
//                   ),SizedBox(width: 2,),
//                   SizedBox(
//                       width: .22.sw,
//                       child: Texts.textBlock(event?.date??"",
//                           size: 9,
//                           fontWeight: FontWeight.w400,
//                           color: Colors.black54,
//                           maxline: 1)),
//                 ],
//               ),
//               const SizedBox(
//                 width: 5,
//               ),
//               Row(
//                 children: [
//                   const Icon(
//                     Icons.location_on,
//                     size: 10,
//                     color: Colors.black,
//                   ),SizedBox(width: 2,),
//                   SizedBox(
//                       width: .22.sw,
//                       child: Texts.textBlock(event?.location??"",
//                           size: 9,
//                           fontWeight: FontWeight.w400,
//                           color: Colors.black54,
//                           maxline: 1)),
//                 ],
//               ),
//             ],
//           ),
//
//           Widgets.heightSpaceH1,
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//
//
//               Row(children: [  Texts.textBlock(
//                 event!.totalMembers.toString(),
//                 size: 12,
//                 fontWeight: FontWeight.w900,
//                 color: Colors.black54,
//                 maxline: 1),SizedBox( width: 5,),
//               Icon(Icons.people,size: 15,color: Colors.black54,),],),
//
//               event?.isMyEvent==true?SizedBox():InkWell(onTap: onButtonTap,
//                 child: Container(
//                   alignment: Alignment.center,
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                   decoration: BoxDecoration(
//                       color: event?.isJoined==true?Colors.red:ColorConstants.primaryColor,
//                       borderRadius: BorderRadius.circular(7)),
//                   child:
//                       Texts.textBlock(event?.isJoined==true?"LEAVE":"JOIN NOW", size: 9, color: Colors.white),
//                 ),
//               )
//             ],
//           )
//
//           // Row(
//           //   children: [
//           //     Expanded(
//           //       flex: 2,
//           //       child: AvatarStack(
//           //         settings: RestrictedPositions(
//           //           maxCoverage: 0.3,
//           //           minCoverage: 0.3,
//           //           align: StackAlign.left,
//           //           infoIndent: 10,
//           //         ),
//           //         height: 17,
//           //         avatars: [
//           //           for (var n = 0;
//           //           n < 5000;
//           //           n++)
//           //             NetworkImage(""),
//           //         ],
//           //       ),
//           //     ),  SizedBox(
//           //         width: .22.sw,
//           //         child: Texts.textBlock(" Members joined",
//           //             size: 9,
//           //             fontWeight: FontWeight.w400,
//           //             color: Colors.black54,
//           //             maxline: 1)),
//           //   ],
//           // ),
//         ],
//       ),
//     );
//   }
// }
//
// class GroupCard extends StatelessWidget {
//   Group? group;
//
//   bool? isJoined;
//   bool? isOwn;Callback? onButtonTap;Callback? onFavTap;
//   GroupCard({required this.group, required this.isOwn, this.onButtonTap,this.onFavTap,this.isJoined});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(10),
//       width: 1.sw,
//       decoration: Widgets.cardBoxDecoration,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Stack(
//             children: [
//               ClipRRect(
//                   borderRadius: BorderRadius.circular(15),
//                   child: Widgets.networkImage(group?.groupImage ?? "",
//                       height: .20.sh, width: 1.sw)),
//                Positioned(
//                 right: 10,
//                 top: 10,
//                 child: isOwn==true?SizedBox():InkWell(onTap:onFavTap,
//                   child: CircleAvatar(
//                     backgroundColor:  group?.isFav==true?Colors.white:Colors.black54  ,
//                     radius: 15,
//                     child: Icon(
//                      CupertinoIcons.heart_fill,
//                       color:  group?.isFav==true?Colors.black:Colors.white,
//                       size: 18,
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//           const SizedBox(
//             height: 12,
//           ),
//           Texts.textBlock(group?.name ?? "",
//               size: 15,
//               fontWeight: FontWeight.w900,
//               color: Colors.black,
//               maxline: 1), const SizedBox(
//             height: 4,
//           ),
//           Texts.textBlock(group?.interests ?? "",
//               size: 9,
//               fontWeight: FontWeight.w400,
//               color: Colors.black54,
//               maxline: 1),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//
//                   Row(
//                       children: [
//                         Texts.textBlock("${group?.totalMembers??0}  ",
//                             size: 11, color: Colors.black54),const Icon(Icons.people,color: Colors.black54,size:13 ,)
//
//                       ]),
//
//               isOwn == true
//                   ? InkWell(
//                       onTap: onButtonTap,
//                       child: Container(
//                         alignment: Alignment.center,
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 20, vertical: 10),
//                         decoration: BoxDecoration(
//                             color: ColorConstants.primaryColor,
//                             borderRadius: BorderRadius.circular(7)),
//                         child: Texts.textBlock("EDIT",
//                             size: 11, color: Colors.white),
//                       ),
//                     )
//                   : isJoined==true?InkWell(
//                 onTap: onButtonTap,
//                 child: Container(
//                   alignment: Alignment.center,
//                   padding: const EdgeInsets.symmetric(
//                       horizontal: 20, vertical: 10),
//                   decoration: BoxDecoration(
//                       color: Colors.red,
//                       borderRadius: BorderRadius.circular(7)),
//                   child: Texts.textBlock("LEAVE",
//                       size: 11, color: Colors.white),
//                 ),
//               ):InkWell(
//                       onTap: onButtonTap,
//                       child: Container(
//                         alignment: Alignment.center,
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 20, vertical: 10),
//                         decoration: BoxDecoration(
//                             color: ColorConstants.primaryColor,
//                             borderRadius: BorderRadius.circular(7)),
//                         child: Texts.textBlock("JOIN NOW",
//                             size: 11, color: Colors.white),
//                       ),
//                     )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

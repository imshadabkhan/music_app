//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
//
// import '../constants/assets_constants.dart';
// import '../constants/color_constants.dart';
//
// class EventVertCard extends StatelessWidget {
//   // Events? event;
//   Callback? onButtonTap;
//   EventVertCard({super.key, this.event, this.onButtonTap});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 0.0),
//       padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
//       decoration: Widgets.cardBoxDecoration,
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           ClipRRect(
//               borderRadius: BorderRadius.circular(15),
//               child: Widgets.networkImage(
//                 event?.thumbnailImage ?? "",
//                 width: 58,
//                 height: 58,
//               )),
//           const SizedBox(
//             width: 6,
//           ),
//           Expanded(
//               child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Texts.textBlock(event?.name ?? " ",
//                   size: 12,
//                   fontWeight: FontWeight.w900,
//                   color: Colors.black,
//                   maxline: 1),
//               const SizedBox(
//                 height: 4,
//               ),
//               Row(
//                 children: [
//                   const Icon(
//                     Icons.location_on_rounded,
//                     size: 9,
//                     color: Colors.black54,
//                   ),
//                   const SizedBox(
//                     width: 3,
//                   ),
//                   Flexible(
//                       child: Texts.textBlock(event?.location ?? "",
//                           size: 9,
//                           fontWeight: FontWeight.w400,
//                           color: Colors.black54,
//                           maxline: 1))
//                 ],
//               ),
//               const SizedBox(
//                 height: 3,
//               ),
//               Row(
//                 children: [
//                   Texts.textBlock(event!.totalMembers.toString(),
//                       size: 10,
//                       fontWeight: FontWeight.w900,
//                       color: Colors.black54,
//                       maxline: 1),
//                   SizedBox(
//                     width: 5,
//                   ),
//                   Icon(
//                     Icons.people,
//                     size: 13,
//                     color: Colors.black54,
//                   ),
//                 ],
//               ),
//             ],
//           )),
//           const SizedBox(
//             width: 3,
//           ),
//           Container(
//             padding: const EdgeInsets.only(left: 5), // Adjust padding as needed
//             decoration: const BoxDecoration(
//               border: Border(
//                 left: BorderSide(
//                   color: Colors.black12, // Set the border color
//                   width: 1.0, // Set the border width
//                 ),
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 Texts.textBlock(event?.date ?? "",
//                     size: 9,
//                     fontWeight: FontWeight.w400,
//                     color: Colors.black54,
//                     maxline: 1),
//                 Texts.textBlock(event?.startTime ?? "",
//                     size: 9,
//                     fontWeight: FontWeight.w500,
//                     color: Colors.black,
//                     maxline: 1),
//                 const SizedBox(
//                   height: 4,
//                 ),
//                 event?.isMyEvent == true
//                     ? InkWell(
//                         onTap: onButtonTap,
//                         child: Texts.textBlock("Edit",
//                             size: 11,
//                             fontWeight: FontWeight.w900,
//                             color: event?.isJoined == true
//                                 ? Colors.red
//                                 : Colors.black,
//                             maxline: 1))
//                     : InkWell(
//                         onTap: onButtonTap,
//                         child: Texts.textBlock(
//                             event?.isJoined == true ? "LEAVE" : "JOIN NOW",
//                             size: 11,
//                             fontWeight: FontWeight.w900,
//                             color: event?.isJoined == true
//                                 ? Colors.red
//                                 : Colors.black,
//                             maxline: 1))
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
//
// class EventVertCardLeader extends StatelessWidget {
//   Events? event;
//   Callback? onButtonTap;
//   EventVertCardLeader({super.key, this.event, this.onButtonTap});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 0.0),
//       padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
//       decoration: Widgets.cardBoxDecoration,
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           ClipRRect(
//               borderRadius: BorderRadius.circular(15),
//               child: Widgets.networkImage(
//                 event?.thumbnailImage ?? "",
//                 width: 58,
//                 height: 58,
//               )),
//           const SizedBox(
//             width: 6,
//           ),
//           Expanded(
//               child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Texts.textBlock(event?.name ?? " ",
//                   size: 12,
//                   fontWeight: FontWeight.w900,
//                   color: Colors.black,
//                   maxline: 1),
//               const SizedBox(
//                 height: 4,
//               ),
//               Row(
//                 children: [
//                   const Icon(
//                     Icons.location_on_rounded,
//                     size: 9,
//                     color: Colors.black54,
//                   ),
//                   const SizedBox(
//                     width: 3,
//                   ),
//                   Flexible(
//                       child: Texts.textBlock(event?.location ?? "",
//                           size: 9,
//                           fontWeight: FontWeight.w400,
//                           color: Colors.black54,
//                           maxline: 1))
//                 ],
//               ), const SizedBox(
//                 height: 2,
//               ),
//               Row(
//                 children: [
//                   Texts.textBlock(event!.totalMembers.toString(),
//                       size: 10,
//                       fontWeight: FontWeight.w900,
//                       color: Colors.black54,
//                       maxline: 1),
//                   SizedBox(
//                     width: 5,
//                   ),
//                   Icon(
//                     Icons.people,
//                     size: 13,
//                     color: Colors.black54,
//                   ),
//                 ],
//               ),
//             ],
//           )),
//           const SizedBox(
//             width: 3,
//           ),
//           Container(
//             padding: const EdgeInsets.all(8.0), // Adjust padding as needed
//             decoration: const BoxDecoration(
//               border: Border(
//                 left: BorderSide(
//                   color: Colors.black12, // Set the border color
//                   width: 1.0, // Set the border width
//                 ),
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 Texts.textBlock(event?.date ?? "",
//                     size: 9,
//                     fontWeight: FontWeight.w400,
//                     color: Colors.black54,
//                     maxline: 1),
//                 const SizedBox(
//                   height: 4,
//                 ),
//                 InkWell(
//                     onTap: onButtonTap,
//                     child: Texts.textBlock("Edit",
//                         size: 11,
//                         fontWeight: FontWeight.w900,
//                         color:
//                             event?.isJoined == true ? Colors.red : Colors.black,
//                         maxline: 1))
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
//
// class EventJoinedVertCard extends StatelessWidget {
//   Events? event;
//   Callback? onButtonTap;
//   EventJoinedVertCard({super.key, this.event, this.onButtonTap});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 0.0),
//       padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
//       decoration: Widgets.cardBoxDecoration,
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           ClipRRect(
//               borderRadius: BorderRadius.circular(15),
//               child: Widgets.networkImage(
//                 event?.thumbnailImage ?? "",
//                 width: 58,
//                 height: 58,
//               )),
//           const SizedBox(
//             width: 6,
//           ),
//           Expanded(
//               child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Texts.textBlock(event?.name ?? " ",
//                   size: 12,
//                   fontWeight: FontWeight.w900,
//                   color: Colors.black,
//                   maxline: 1),
//               const SizedBox(
//                 height: 4,
//               ),
//               Row(
//                 children: [
//                   const Icon(
//                     Icons.location_on_rounded,
//                     size: 9,
//                     color: Colors.black54,
//                   ),
//                   const SizedBox(
//                     width: 3,
//                   ),
//                   Flexible(
//                       child: Texts.textBlock(event?.location ?? "",
//                           size: 9,
//                           fontWeight: FontWeight.w400,
//                           color: Colors.black54,
//                           maxline: 1))
//                 ],
//               ),
//               const SizedBox(
//                 height: 3,
//               ),
//               Row(
//                 children: [
//                   Texts.textBlock(event!.totalMembers.toString(),
//                       size: 10,
//                       fontWeight: FontWeight.w900,
//                       color: Colors.black54,
//                       maxline: 1),
//                   SizedBox(
//                     width: 5,
//                   ),
//                   Icon(
//                     Icons.people,
//                     size: 13,
//                     color: Colors.black54,
//                   ),
//                 ],
//               ),
//             ],
//           )),
//           const SizedBox(
//             width: 3,
//           ),
//           Container(
//             padding: const EdgeInsets.all(8.0), // Adjust padding as needed
//             decoration: const BoxDecoration(
//               border: Border(
//                 left: BorderSide(
//                   color: Colors.black12, // Set the border color
//                   width: 1.0, // Set the border width
//                 ),
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 Texts.textBlock(event?.date ?? "",
//                     size: 9,
//                     fontWeight: FontWeight.w400,
//                     color: Colors.black54,
//                     maxline: 1),
//                 Texts.textBlock(event?.startTime ?? "",
//                     size: 9,
//                     fontWeight: FontWeight.w500,
//                     color: Colors.black,
//                     maxline: 1),
//                 const SizedBox(
//                   height: 4,
//                 ),
//
//                 InkWell(
//                     onTap: onButtonTap,
//                     child: Texts.textBlock("LEAVE",
//                         size: 11,
//                         fontWeight: FontWeight.w900,
//                         color: Colors.red,
//                         maxline: 1)),
//
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

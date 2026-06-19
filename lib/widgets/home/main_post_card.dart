import 'package:flutter/material.dart';
import 'post_actions.dart';
import 'post_description.dart';
import 'post_user_info.dart';
class PostCard extends StatelessWidget {
  final String image;
  final bool showOverlay;

  const PostCard({
    super.key,
    required this.image,
    this.showOverlay = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: showOverlay
          ? Stack(
              children: [
                Positioned(
                  left: 14,
                  right: 14,
                  bottom: 16,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Expanded(
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            PostUserInfo(),
                            SizedBox(height: 12),
                            PostDescription(),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      const PostActions(),
                    ],
                  ),
                ),
              ],
            )
          : null,
    );
  }
}



// class PostCard extends StatelessWidget {
//   final String image;

//   const PostCard({
//     super.key,
//     required this.image,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 330,
//       width: double.infinity,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(28),
//         image: DecorationImage(
//           image: AssetImage(image),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Stack(
//         children: [
//           Positioned(
//             left: 14,
//             right: 14,
//             bottom: 16,
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 const Expanded(
//                   child: Column(
//                     crossAxisAlignment:
//                         CrossAxisAlignment.start,
//                     children: [
//                       PostUserInfo(),
//                       SizedBox(height: 12),
//                       PostDescription(),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//                 const PostActions(),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }







// import 'package:flutter/material.dart';
// import 'post_image.dart';
// import 'post_user_info.dart';
// import 'post_actions.dart';
// import 'post_description.dart';
// class PostCard extends StatelessWidget {
//   final String image;
// const PostCard({
//     super.key,
//     required this.image,
//     });
// @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 500,
//       width: double.infinity,
//       child: Stack(
//         children: [
//           PostImage(image: image),
//    Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(35),
//               gradient: LinearGradient(
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//                 colors: [
//                   Colors.transparent,
//                   Colors.black.withOpacity(0.7),
//                 ],
//               ),
//             ),
//           ),
//    Padding(
//             padding: const EdgeInsets.all(24),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: const [
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           PostUserInfo(),
//                           SizedBox(height: 16),
//                           PostDescription(),
//                         ],
//                       ),
//                     ),
//                     SizedBox(width: 20),
//                     PostActions(),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
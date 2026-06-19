import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0xFFF7F7F7),
        borderRadius: BorderRadius.circular(18),
      ),
      child: const Row(
        children: [
          Icon(
            Icons.search,
            color: Color(0xFF9B9B9B),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              "Search",
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF9B9B9B),
              ),
            ),
          ),
          Icon(
            Icons.tune,
            color: Color(0xFF9B9B9B),
          ),
        ],
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// class SearchBarWidget extends StatelessWidget {
//   const SearchBarWidget({super.key});
// @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 50,
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       decoration: BoxDecoration(
//          color: Colors.white,
//         borderRadius: BorderRadius.circular(14),
//       ),
//       child:Row(
//         children: const [
//           Icon(Icons.search),
//           SizedBox(width: 10),
//           Text("Search"),
//           Spacer(),
//           Icon(Icons.tune),
        



// ],
//       ),
//     );
//   }
// }
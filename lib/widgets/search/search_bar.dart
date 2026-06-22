import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52, 
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5), 
        borderRadius: BorderRadius.circular(24), 
      ),
      child: TextField(
       
        textAlignVertical: TextAlignVertical.center,
        style: const TextStyle(
          fontSize: 16,
          color: Color(0xFF1A1A1A),
          height: 1.2, 
        ),
        decoration: InputDecoration(
          
          isDense: true, 
          
          contentPadding: const EdgeInsets.symmetric(vertical: 14), 
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          
          prefixIcon: const Padding(
            padding: EdgeInsets.only(left: 8, right: 4),
            child: Icon(
              Icons.search_rounded,
              color: Color(0xFF9E9E9E),
              size: 24,
            ),
          ),
          prefixIconConstraints: const BoxConstraints(
            minWidth: 44,
          ),
          
          hintText: "Search",
          hintStyle: const TextStyle(
            fontSize: 16,
            color: Color(0xFF9E9E9E),
            fontWeight: FontWeight.w400,
            height: 1.2, 
          ),
          
          suffixIcon: const Padding(
            padding: EdgeInsets.only(right: 8),
            child: Icon(
              Icons.tune_outlined,
              color: Color(0xFF9E9E9E),
              size: 22,
            ),
          ),
          suffixIconConstraints: const BoxConstraints(
            minWidth: 44,
          ),
        ),
      ),
    );
  }
}

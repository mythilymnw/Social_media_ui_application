
import 'package:flutter/material.dart';

class ProfileTabBar extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  ProfileTabBar(this.tabBar);

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Colors.white,
      child: Theme(
        data: ThemeData(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
        ),
        child: TabBar(
          controller: tabBar.controller,
          tabs: tabBar.tabs,
          
          isScrollable: false, 
          dividerColor: Colors.transparent,
          
          labelColor: Colors.black,
          unselectedLabelColor: const Color(0xFF8E8E93),
          labelStyle: const TextStyle(
            fontSize: 15, 
            fontWeight: FontWeight.w700, 
            letterSpacing: -0.2,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500, 
            letterSpacing: -0.2,
          ),
          
          // 1. Spans the indicator across the full width of the tab option
          indicatorSize: TabBarIndicatorSize.tab,
          
          // 2. INCREASE THE LENGTH HERE
          // Lowering this number makes the indicator pill LONGER.
          // Try 24.0 or 16.0 to stretch the pill to your exact desired length.
          indicatorPadding: const EdgeInsets.symmetric(horizontal: 03.0),
          
          indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(
              width: 3.5, 
              color: Colors.black,
            ),
            borderRadius: BorderRadius.all(Radius.circular(100)), 
            insets: EdgeInsets.zero, 
          ),
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant ProfileTabBar oldDelegate) {
    return oldDelegate.tabBar != tabBar;
  }
}

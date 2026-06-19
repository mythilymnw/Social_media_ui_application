import 'package:flutter/material.dart';
import '../widgets/common/custom_app_bar.dart';
import '../widgets/common/custom_bottom_navigation.dart';
import '../widgets/search/search_bar.dart';
import '../widgets/search/trending_stories_section.dart';
import '../widgets/search/trending_post_card.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      floatingActionButton: Container(
        height: 58,
        width: 58,
        decoration: const BoxDecoration(
          color: Color(0xFFFF6B3D),
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),

      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: const CustomBottomNavigation(
        currentIndex: 1,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(
                  profileImage: 'assets/images/girl.jpg',
                ),

                const SizedBox(height: 20),

                const SearchBarWidget(),

                const SizedBox(height: 18),

                const LiveStoriesSection(),

                const SizedBox(height: 24),

                const Text(
                  "Trending",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                const SizedBox(height: 16),

                const TrendingPostCard(),

                const SizedBox(height: 12),

                // Add more posts if needed
                const TrendingPostCard(),
                const SizedBox(height: 12),
                const TrendingPostCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





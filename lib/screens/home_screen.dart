import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_style.dart';
import '../widgets/common/custom_bottom_navigation.dart';
import '../widgets/home/main_post_card.dart';
import '../widgets/home/stories_section.dart';
import '../widgets/common/custom_app_bar.dart';
// import 'search_screen.dart';
// import 'message_screen.dart';
// import 'profile_screen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      floatingActionButton: Container(
        height: 58,
        width: 58,
        decoration: const BoxDecoration(
          color: AppColors.primary,
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 28,
        ),
      ),

      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: const CustomBottomNavigation(
        currentIndex: 0,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const CustomAppBar(
                  profileImage: 'assets/images/girl.jpg',
                ),

                const SizedBox(height: 28),

                /// Title
                const Text(
                  "Discover",
                  style: AppTextStyles.heading,
                ),

                const SizedBox(height: 20),

                /// Stories
                const StoriesSection(),

                const SizedBox(height: 20),

                /// First Post
                const PostCard(
                  image: "assets/images/profile1.jpeg",
                ),

                const SizedBox(height: 10),

                /// Second Post
                const PostCard(
                  image: "assets/images/profile1.jpeg",
                   showOverlay: false,
                ),

                const SizedBox(height: 120),
              ],
            ),
          ),
        ),
      ),
    );
  }
}






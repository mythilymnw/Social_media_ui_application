import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_style.dart';
import '../widgets/common/custom_bottom_navigation.dart';
import '../widgets/home/main_post_card.dart';
import '../widgets/home/stories_section.dart';
import '../widgets/common/custom_app_bar.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      
      //Keeps the body scrolling 
      extendBody: true, 

      // + button 
      bottomNavigationBar: const CustomBottomNavigation(
        currentIndex: 0,
      ),

      body: SafeArea(
        bottom: false, 
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

                const SizedBox(height: 10),

                /// Title
                const Text(
                  "Discover",
                  style: AppTextStyles.heading,
                ),

                const SizedBox(height: 8),

                /// Stories
                const StoriesSection(),

                const SizedBox(height: 20),

               
                const PostCard(
                  image: "assets/images/profile1.jpeg",
                ),

                const SizedBox(height: 5),

                
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


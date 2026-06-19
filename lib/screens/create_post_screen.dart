import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../widgets/post/post_option_card.dart';

class CreatePostScreen extends StatelessWidget {
  const CreatePostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            // Top Custom Navigation Header Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.black, size: 24),
                    onPressed: () => Navigator.of(context).pop(),
                    constraints: const BoxConstraints(),
                    padding: EdgeInsets.zero,
                  ),
                  const Text(
                    'Create Post',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF111111),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: null, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF5F5F7),
                      disabledBackgroundColor: const Color(0xFFF5F5F7),
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Post',
                      style: TextStyle(
                        color: AppColors.navInactive,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Main Text and  User Header Details
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    // User Detail Information row
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey,
                          // Background Image source fallback setup
                          backgroundImage: NetworkImage('assets/images/girl.jpg'), 
                        ),
                        const SizedBox(width: 12),
                        const Text(
                          'Martin Kenter',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF111111),
                          ),
                        ),
                        const SizedBox(width: 4),
                        const Icon(
                          Icons.verified,
                          color: Colors.blue,
                          size: 16,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // Post text
                    const Expanded(
                      child: TextField(
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          hintText: 'What do you want to talk about?',
                          hintStyle: TextStyle(
                            color: AppColors.textSecondary,
                            fontSize: 15,
                          ),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: AppColors.textPrimary,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Bottom Options 
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //  indicator bar
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 12),
                      width: 40,
                      height: 4,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text(
                      'Add to your post',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF111111),
                      ),
                    ),
                  ),
                  // Grid Option 
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
                    child: GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 2.3,
                      children: [
                        PostOptionCard(
                          icon: Icons.image,
                          iconColor: Colors.blue,
                          iconBgColor: Colors.blue.withAlpha(26),
                          title: 'Photo/Video',
                          onTap: () {},
                        ),
                        PostOptionCard(
                          icon: Icons.gif_box,
                          iconColor: Colors.cyan,
                          iconBgColor: Colors.cyan.withAlpha(26),
                          title: 'Gif',
                          onTap: () {},
                        ),
                        PostOptionCard(
                          icon: Icons.poll,
                          iconColor: Colors.teal,
                          iconBgColor: Colors.teal.withAlpha(26),
                          title: 'Poll',
                          onTap: () {},
                        ),
                        PostOptionCard(
                          icon: Icons.pets,
                          iconColor: Colors.pink,
                          iconBgColor: Colors.pink.withAlpha(26),
                          title: 'Adoption',
                          onTap: () {},
                        ),
                        PostOptionCard(
                          icon: Icons.warning,
                          iconColor: Colors.orange,
                          iconBgColor: Colors.orange.withAlpha(26),
                          title: 'Lost Notice',
                          onTap: () {},
                        ),
                        PostOptionCard(
                          icon: Icons.event,
                          iconColor: Colors.purple,
                          iconBgColor: Colors.purple.withAlpha(26),
                          title: 'Event',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

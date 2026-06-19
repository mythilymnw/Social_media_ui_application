import 'package:flutter/material.dart';

import '../../screens/home_screen.dart';
import '../../screens/search_screen.dart';
import '../../screens/message_screen.dart';
import '../../screens/profile_screen.dart';
import 'bottom_navigation_item.dart';

class CustomBottomNavigation extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNavigation({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 12,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(35),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 20,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: BottomAppBar(
        color: Colors.white,
        elevation: 0,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 85, // Increased height
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavItem(
                icon: Icons.home_rounded,
                label: "Home",
                isSelected: currentIndex == 0,
                onTap: () {
                  if (currentIndex != 0) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const Homescreen(),
                      ),
                    );
                  }
                },
              ),

              NavItem(
                icon: Icons.search,
                label: "Search",
                isSelected: currentIndex == 1,
                onTap: () {
                  if (currentIndex != 1) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const SearchScreen(),
                      ),
                    );
                  }
                },
              ),

              const SizedBox(width: 55),

              NavItem(
                icon: Icons.chat_bubble_outline,
                label: "Message",
                isSelected: currentIndex == 2,
                onTap: () {
                  if (currentIndex != 2) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const MessageScreen(),
                      ),
                    );
                  }
                },
              ),

              NavItem(
                icon: Icons.person_outline,
                label: "Profile",
                isSelected: currentIndex == 3,
                onTap: () {
                  if (currentIndex != 3) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ProfileScreen(),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
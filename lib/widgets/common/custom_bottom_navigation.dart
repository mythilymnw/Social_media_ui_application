import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../screens/home_screen.dart';
import '../../screens/search_screen.dart';
import '../../screens/message_screen.dart';
import '../../screens/profile_screen.dart';
import '../../screens/create_post_screen.dart'; 
import 'bottom_navigation_item.dart';

class CustomBottomNavigation extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNavigation({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        CustomPaint(
          size: Size(MediaQuery.of(context).size.width, 95),
          painter: BottomNavPainter(),
          child: SizedBox(
            height: 95,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12), 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  NavItem(
                    icon: Icons.home_filled, 
                    label: "Home",
                    isSelected: currentIndex == 0,
                    onTap: () => _navigateTo(context, const Homescreen(), 0),
                  ),
                  NavItem(
                    icon: Icons.search_rounded,
                    label: "Search",
                    isSelected: currentIndex == 1,
                    onTap: () => _navigateTo(context, const SearchScreen(), 1),
                  ),
                  
                  const SizedBox(width: 50),
                  
                  NavItem(
                    icon: Icons.chat_bubble_outline_rounded,
                    label: "Message",
                    isSelected: currentIndex == 2,
                    onTap: () => _navigateTo(context, const MessagesScreen(), 2),
                  ),
                  NavItem(
                    icon: Icons.person_outline_rounded,
                    label: "Profile",
                    isSelected: currentIndex == 3,
                    onTap: () => _navigateTo(context, const ProfileScreen(), 3),
                  ),
                ],
              ),
            ),
          ),
        ),

        Positioned(
          bottom: 42, 
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const CreatePostScreen(), 
                ),
              );
            },
            child: Container(
              width: 54,
              height: 54,
              decoration: const BoxDecoration(
                color: AppColors.primary, 
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 28,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _navigateTo(BuildContext context, Widget targetScreen, int targetIndex) {
    if (currentIndex != targetIndex) {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => targetScreen,
          transitionDuration: Duration.zero, 
          reverseTransitionDuration: Duration.zero,
        ),
      );
    }
  }
}

class BottomNavPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = AppColors.background 
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 30); 

    path.lineTo(size.width * 0.35, 30);

    path.cubicTo(
      size.width * 0.41, 30, 
      size.width * 0.40, 62, 
      size.width * 0.50, 62, 
    );
    path.cubicTo(
      size.width * 0.60, 62, 
      size.width * 0.59, 30, 
      size.width * 0.65, 30,
    );

    path.lineTo(size.width, 30);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawShadow(path, Colors.black.withOpacity(0.04), 12, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

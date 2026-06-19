import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});
@override
  Widget build(BuildContext context) {
    // Detect top system cutout padding (Dynamic Island / Notch spacing)
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return SliverAppBar(
      expandedHeight: 200, 
      pinned: true,
      backgroundColor: Colors.white,
      elevation: 0,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false, 
      
  
      leading: Padding(
        padding: EdgeInsets.only(
          left: 16.0, 
          top: statusBarHeight > 0 ? 4.0 : 8.0, // Accounts gracefully for physical screen notches
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 42,
            height: 42,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(
                Icons.arrow_back_ios_new, 
                color: Colors.black, 
                size: 15,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
      
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          clipBehavior: Clip.none,
          children: [
            // Top background scenery wallpaper
            Positioned.fill(
              child: Image.network(
                'assets/images/background_image.webp', 
                fit: BoxFit.cover,
              ),
            ),
            
            // Profile picture avatar with circular border and shadow effect
            Positioned(
              bottom: -40, //offset to overlap the bottom of the app bar
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  width: 96,
                  height: 96,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    
                    border: Border.all(
                      color: const Color(0xFFE47E3A), 
                      width: 3.5, // Matches the prominent profile ring style
                    ),
                    // Generates separation between the frame and the white bottom sheet layout
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.06),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                    image: const DecorationImage(
                      image: NetworkImage('assets/images/girl.jpg'), 
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

     

    
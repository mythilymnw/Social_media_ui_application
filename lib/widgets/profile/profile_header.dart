import 'package:flutter/material.dart';
class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});
@override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 220,
      pinned: true,
      backgroundColor: Colors.white,
      elevation: 0,
      scrolledUnderElevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 8.0),
        child: CircleAvatar(
          radius: 22,
          backgroundColor: Colors.white,
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 16),
              onPressed: () {},
            ),
          ),
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned.fill(
              child: Image.network(
                'https://unsplash.com', // Matching background flower vibe
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: -40,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  width: 96,
                  height: 96,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: const Color(0xFFE47E3A), width: 3), // Exact amber hue border
                    image: const DecorationImage(
                      image: NetworkImage('https://unsplash.com'), 
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








import 'package:flutter/material.dart';
import 'profile_stats.dart';

class ProfileInfoSection extends StatelessWidget {
  const ProfileInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 0,
        left: 24,
        right: 24,
        bottom: 12,
      ),
      child: Column(
        children: [
          // Profile Name
          const Text(
            'Rachel Flowear',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600, 
              color: Colors.black,
              letterSpacing: -0.3,
            ),
          ),
          const SizedBox(height: 2),

          // Name
          const Text(
            '@rachelflow',
            style: TextStyle(
              fontSize: 12,
              color: Colors.black45, 
              fontWeight: FontWeight.w400,
            ),
          ),

          const SizedBox(height: 18),

          // Stats Counter Row
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ProfileStats(
                  label: 'Posts',
                  count: '240',
                ),
              ),
              StatDivider(),
              Expanded(
                child: ProfileStats(
                  label: 'Followers',
                  count: '47.3K',
                ),
              ),
              StatDivider(),
              Expanded(
                child: ProfileStats(
                  label: 'Following',
                  count: '32K',
                ),
              ),
            ],
          ),

          const SizedBox(height: 18),

          // Action Buttons Row
          Center(
            child: SizedBox(
              width: 280, 
              child: Row(
                children: [
                  // Follow Button
                  Expanded(
                    child: SizedBox(
                      height: 40, 
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFA4A1E), 
                          foregroundColor: Colors.white,
                          elevation: 0,
                          padding: EdgeInsets.zero, 
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23), 
                          ),
                        ),
                        child: const Text(
                          'Follow',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 12), 

                  // Message Button
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFF2F2F2), 
                          foregroundColor: Colors.black,
                          elevation: 0,
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23), 
                          ),
                        ),
                        child: const Text(
                          'Message',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ), 
        ], 
      ), 
    ); 
  }
}

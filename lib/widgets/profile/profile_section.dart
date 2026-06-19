import 'package:flutter/material.dart';
import 'profile_stats.dart';
class ProfileInfoSection extends StatelessWidget {
  const ProfileInfoSection({super.key});
@override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 55, left: 32, right: 32, bottom: 8),
      child: Column(
        children: [
          const Text(
            'Rachelll  Flowear',
            style: TextStyle(
              fontSize: 22, 
              fontWeight: FontWeight.w700, 
              color: Colors.black,
              letterSpacing: -0.2,
            ),
          ),
          const SizedBox(height: 2),
          const Text(
            '@rachelflow',
            style: TextStyle(
              fontSize: 13, 
              color: Color(0xFF9E9E9E),
            ),
          ),
          const SizedBox(height: 24),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: ProfileStats(label: 'Posts', count: '240')),
              StatDivider(),
              Expanded(child: ProfileStats(label: 'Followers', count: '47,3K')),
              StatDivider(),
              Expanded(child: ProfileStats(label: 'Following', count: '32K')),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF34E1E), 
                    foregroundColor: Colors.white,
                    // height: 46,
                    elevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                  ),
                  child: const Text('Follow', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color(0xFFF5F5F5), 
                    foregroundColor: Colors.black,
                    side: BorderSide.none,
                    // height: 46,
                    elevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                  ),
                  child: const Text('Message', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

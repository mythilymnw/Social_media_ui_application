import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_style.dart'; 
import '../widgets/message/message_item.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> chatData = [
      {
        'name': 'Julian Dasilva',
        'message': 'Hi Julian! See you after work?',
        'time': 'Now',
        'isOnline': true,
        'hasUnread': false,
        'isSelected': false,
        'imageUrl': 'assets/images/profile1.jpeg',
      },
      {
        'name': 'Mike Lyne',
        'message': 'I must tell you my interview this...',
        'time': '3 min ago',
        'isOnline': false,
        'hasUnread': true,
        'isSelected': true,
        'imageUrl': 'assets/images/women.jpg',
      },
      {
        'name': 'Claire Kumas',
        'message': 'Yes i can do this to you in the week...',
        'time': '1 hour ago',
        'isOnline': false,
        'hasUnread': false,
        'isSelected': false,
        'imageUrl': 'assets/images/girl.jpg',
      },
      {
        'name': 'Blair Dota',
        'message': 'By the way, did not you see my dog...',
        'time': '1 day ago',
        'isOnline': false,
        'hasUnread': false,
        'isSelected': false,
        'imageUrl': 'assets/images/background_image.webp',
      },
      {
        'name': 'Molly Clark',
        'message': 'Yes i am so happy!',
        'time': '3 hours ago',
        'isOnline': true,
        'hasUnread': false,
        'isSelected': false,
        'imageUrl': 'assets/images/women.jpg',
      },
      {
        'name': 'Ashley Williams',
        'message': "I'll be there this weekend with my...",
        'time': '2 days ago',
        'isOnline': false,
        'hasUnread': false,
        'isSelected': false,
        'imageUrl': 'assets/images/story_image1.jpeg',
      },
    ];

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
       
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // --- HEADER SECTION ---
                Padding(
                  padding: const EdgeInsets.fromLTRB(28, 48, 28, 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Messages',
                            style: AppTextStyles.heading.copyWith(
                              fontSize: 25,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 0.2,
                              color: AppColors.textPrimary,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'You have 2 new messages',
                            style: AppTextStyles.storyName.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF9E9E9E),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.search_rounded, 
                            size: 25, 
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                
               
                Expanded(
                  child: ListView.separated(
                    itemCount: chatData.length,
                    
                    padding: const EdgeInsets.only(bottom: 80),
                    separatorBuilder: (context, index) => const SizedBox(height: 10),
                    itemBuilder: (context, index) {
                      final item = chatData[index];
                      return MessageItem(
                        name: item['name'],
                        message: item['message'],
                        time: item['time'],
                        isOnline: item['isOnline'],
                        hasUnread: item['hasUnread'],
                        isSelected: item['isSelected'],
                        imageUrl: item['imageUrl'],
                      );
                    },
                  ),
                ),
              ],
            ),
            
           
            Positioned(
              right: 24,
              bottom: 24, 
              child: FloatingActionButton(
                backgroundColor: AppColors.primary,
                shape: const CircleBorder(),
                elevation: 4,
                onPressed: () {},
                child: const Icon(Icons.add, color: Colors.white, size: 28),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

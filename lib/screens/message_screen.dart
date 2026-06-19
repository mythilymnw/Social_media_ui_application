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
        'imageUrl':('./assets/images/profile1.jpeg'),

      },
      {
        'name': 'Mike Lyne',
        'message': 'I must tell you my interview this...',
        'time': '3 min ago',
        'isOnline': false,
        'hasUnread': true,
        'isSelected': true,
        'imageUrl': './assets/images/women.jpg',
      },
      {
        'name': 'Claire Kumas',
        'message': 'Yes i can do this to you in the week...',
        'time': '1 hour ago',
        'isOnline': false,
        'hasUnread': false,
        'isSelected': false,
        'imageUrl': './assets/images/girl.jpg',
      },
      {
        'name': 'Blair Dota',
        'message': 'By the way, did not you see my dog...',
        'time': '1 day ago',
        'isOnline': false,
        'hasUnread': false,
        'isSelected': false,
        'imageUrl': './assets/images/background_image.webp',
      },
      {
        'name': 'Molly Clark',
        'message': 'Yes i am so happy!',
        'time': '3 hours ago',
        'isOnline': true,
        'hasUnread': false,
        'isSelected': false,
        'imageUrl': './assets/images/women.jpg',
      },
      {
        'name': 'Ashley Williams',
        'message': "I'll be there this weekend with my...",
        'time': '2 days ago',
        'isOnline': false,
        'hasUnread': false,
        'isSelected': false,
        'imageUrl': './assets/images/story_image1.jpeg',
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 20, 24, 16),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Messages',
                            style: AppTextStyles.heading,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'You have 2 new messages',
                            style: AppTextStyles.storyName.copyWith(
                              color: AppColors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(Icons.search, size: 28, color: AppColors.textPrimary),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView.separated(
                    itemCount: chatData.length,
                    separatorBuilder: (context, index) => const SizedBox(height: 12),
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
                const SizedBox(height: 80), 
              ],
            ),
            Positioned(
              right: 24,
              bottom: 100,
              child: FloatingActionButton(
                backgroundColor: AppColors.primary,
                shape: const CircleBorder(),
                elevation: 4,
                onPressed: () {},
                child: const Icon(Icons.add, color: Colors.white, size: 28),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 80,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 252, 254, 255),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.phone_outlined, size: 26),
                      color: const Color.fromARGB(255, 255, 107, 61),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.camera_alt_outlined, size: 26),
                      color: const Color.fromARGB(255, 255, 107, 61),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.chat_bubble_outline, size: 26),
                      color: const Color.fromARGB(255, 189, 189, 189), 
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.people_outline, size: 26),
                      color: const Color.fromARGB(255, 255, 107, 61),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

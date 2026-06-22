import 'package:flutter/material.dart';
import '../widgets/profile/profile_header.dart';
import '../widgets/profile/profile_section.dart';
import '../widgets/profile/profile_grid_item.dart';
import '../widgets/profile/profile_tab_bar.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
@override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DefaultTabController(
        length: 3,
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            ProfileHeader(),
            SliverToBoxAdapter(child: ProfileInfoSection()),
            _ExactStaggeredProfileGrid(),
          ],
        ),
      ),
    );
  }
}
class _ExactStaggeredProfileGrid extends StatelessWidget {
  const _ExactStaggeredProfileGrid();
@override
  Widget build(BuildContext context) {
    return SliverMainAxisGroup(
      slivers: [
        SliverPersistentHeader(
          pinned: true,
          delegate: ProfileTabBar(
            const TabBar(
              indicatorColor: Colors.black,
              labelColor: Colors.black,
              unselectedLabelColor: Color(0xFF9E9E9E),
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 2,
              padding: EdgeInsets.symmetric(horizontal: 16),
              dividerColor: Colors.transparent,
              labelStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, fontFamily: 'Sans-Serif'),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, fontFamily: 'Sans-Serif'),
              tabs: [
                Tab(text: 'Videos'),
                Tab(text: 'Collections'),
                Tab(text: 'Saved'),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 24),
          sliver: SliverToBoxAdapter(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left Column Card Stack
                Expanded(
                  child: Column(
                    children: const [
                      ProfileGridItem(
                        imageUrl: 'https://plus.unsplash.com/premium_photo-1670282393309-70fd7f8eb1ef?q=80&w=687&auto=format&fit=crop',
                        views: '2.2K',
                        height: 230,
                      ),
                      SizedBox(height: 12),
                      ProfileGridItem(
                        imageUrl: 'https://plus.unsplash.com/premium_photo-1670282393309-70fd7f8eb1ef?q=80&w=687&auto=format&fit=crop', 
                        views: '',
                        height: 230,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                // Right Column Card Stack 
                Expanded(
                  child: Column(
                    children: const [
                      ProfileGridItem(
                        imageUrl: 'https://plus.unsplash.com/premium_photo-1670282393309-70fd7f8eb1ef?q=80&w=687&auto=format&fit=crop', 
                        views: '2.28K',
                        height: 230,
                      ),
                      SizedBox(height: 12),
                      ProfileGridItem(
                        imageUrl: 'https://plus.unsplash.com/premium_photo-1670282393309-70fd7f8eb1ef?q=80&w=687&auto=format&fit=crop', 
                        views: '',
                        height: 230,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


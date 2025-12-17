import 'package:flutter/material.dart';
import 'package:popcollect2/screens/home_content.dart';
import 'package:popcollect2/screens/profile_page.dart';
import 'package:popcollect2/screens/wishlist_page.dart';
import 'collection_page.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomePage extends StatefulWidget {
  HomePage({super.key});

  static const String routeName = '/homePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<Widget> pages = [
    const HomeContent(),
    const CollectionPage(),
    const WishlistPage(),
    const ProfilePage(),
  ];

  int currentPage = 0;

  NavigationDestination _navItem({
    required String label,
    required String iconPath,
  }) {
    return NavigationDestination(
      label: label,
      icon: SvgPicture.asset(
        iconPath,
        width: 28,
        colorFilter: const ColorFilter.mode(
          Colors.black,
          BlendMode.srcIn,
        ),
      ),
      selectedIcon: SvgPicture.asset(
        iconPath,
        width: 28,
        colorFilter: const ColorFilter.mode(
          Color(0xFFF8BD00),
          BlendMode.srcIn,
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopCollect'),
      ),
      body: pages[currentPage],
      // BOTTOM NAVIGATION BAR
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        indicatorColor: Colors.transparent,
        labelTextStyle: WidgetStateProperty.resolveWith(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return const TextStyle(
                color: Color(0xFFF8BD00),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              );
            }
            return const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            );
          },
        ),
        height: 70,
        destinations: [
          _navItem(
            label: 'Home',
            iconPath: 'assets/icons/home-icon.svg',
          ),
          _navItem(
            label: 'Collection',
            iconPath: 'assets/icons/collections-icon.svg',
          ),
          _navItem(
            label: 'Wishlist',
            iconPath: 'assets/icons/wishlist-icon.svg',
          ),
          _navItem(
            label: 'Profile',
            iconPath: 'assets/icons/profile-icon.svg',
          ),
        ],
        onDestinationSelected: (int value){
          setState(() {
            currentPage = value;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}

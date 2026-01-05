import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home_content.dart';
import 'profile_page.dart';
import 'wishlist_page.dart';
import 'collection/collection_page.dart';

import '../constants/sizes.dart';
import '../constants/fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String routeName = '/homePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPage = 0;

  final List<Widget> _pages = const [
    HomeContent(),
    CollectionPage(),
    WishlistPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    const Color kSelectedColor = Color(0xFFF8BD00);
    const Color kUnselectedColor = Colors.black;

    return Scaffold(
      body: _pages[_currentPage],
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        elevation: 10,
        indicatorColor: Colors.transparent,
        height: kBottomNavHeight,
        selectedIndex: _currentPage,
        onDestinationSelected: (index) => setState(() => _currentPage = index),
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          return states.contains(WidgetState.selected)
              ? kNavLabelSelected
              : kNavLabelUnselected;
        }),
        destinations: [
          _navItem(
            label: 'Home',
            icon: 'assets/icons/home-icon.svg',
            selectedColor: kSelectedColor,
            unselectedColor: kUnselectedColor,
            isSelected: _currentPage == 0,
          ),
          _navItem(
            label: 'Collection',
            icon: 'assets/icons/collections-icon.svg',
            selectedColor: kSelectedColor,
            unselectedColor: kUnselectedColor,
            isSelected: _currentPage == 1,
          ),
          _navItem(
            label: 'Wishlist',
            icon: 'assets/icons/wishlist-icon.svg',
            selectedColor: kSelectedColor,
            unselectedColor: kUnselectedColor,
            isSelected: _currentPage == 2,
          ),
          _navItem(
            label: 'Profile',
            icon: 'assets/icons/profile-icon.svg',
            selectedColor: kSelectedColor,
            unselectedColor: kUnselectedColor,
            isSelected: _currentPage == 3,
          ),
        ],
      ),
    );
  }

  NavigationDestination _navItem({
    required String label,
    required String icon,
    required Color selectedColor,
    required Color unselectedColor,
    required bool isSelected,
  }) {
    return NavigationDestination(
      label: label,
      icon: SvgPicture.asset(
        icon,
        width: kNavIconSize,
        colorFilter: ColorFilter.mode(
          isSelected ? selectedColor : unselectedColor,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
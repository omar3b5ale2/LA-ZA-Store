import 'package:flutter/material.dart';
import 'package:mindsetfinalprojectecommerce/core/resources/fonts_manager.dart';

import '../screens/home_screen.dart';

class CustomBottomNavbar extends StatefulWidget {
  const CustomBottomNavbar({super.key});

  @override
  State<CustomBottomNavbar> createState() => _CustomBottomNavbarState();
}

class _CustomBottomNavbarState extends State<CustomBottomNavbar> {
  int _selectedIndex = 0;
  void _onItemTapped(int? index) {
    setState(() {
      _selectedIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xff9775FA),
        unselectedItemColor: Colors.grey,
        unselectedFontSize: FontSize.s8,
        selectedFontSize: FontSize.s11,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        // Add icons to the bottom navigation bar
        items: [
          BottomNavigationBarItem(
            icon: Icon(listOfIcons[0]),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(listOfIcons[1]),
            label: 'WishList',
          ),
          BottomNavigationBarItem(
            icon: Icon(listOfIcons[2]),
            label: 'MyCards',
          ),
          BottomNavigationBarItem(
            icon: Icon(listOfIcons[3]),
            label: ' My Orders',
          ),
        ]);
  }
}


import 'package:assessment/pages/favorite_screen.dart';
import 'package:assessment/pages/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../widgets/Oranos_widget.dart';
import 'home_page.dart';


class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _selectedIndex = 0;
  List pages = [
    const HomePage(),
    FavoriteScreen(),
    FavoriteScreen(),
    const UserScreen(),
  ];

  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const OranosWidget(),
        leadingWidth: 40,
        leading: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage('assets/images/person1.jpg'),
                fit: BoxFit.fill
            ),
          ),
        ),
        actions: const [
          Icon(IconlyLight.search, color: Colors.black,)
        ],
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black38,
        selectedItemColor: Colors.black87,
        onTap: _selectedPage,
        currentIndex: _selectedIndex,
        items: bottomNavigationBarItems(),
      ),
    );
  }

  List<BottomNavigationBarItem> bottomNavigationBarItems() => [
    BottomNavigationBarItem(
        icon:
        Icon(_selectedIndex == 0 ? IconlyBold.home : IconlyLight.home),
        label: 'Home'),
    BottomNavigationBarItem(
        icon: Icon(_selectedIndex == 1
            ? IconlyBold.star
            : IconlyLight.star),
        label: 'Favorite'),
    BottomNavigationBarItem(
        icon: Icon(
                _selectedIndex == 2 ? IconlyBold.bag : IconlyLight.bag),
        label: ''),
    BottomNavigationBarItem(
        icon: Icon(
            _selectedIndex == 3 ? IconlyBold.profile : IconlyLight.profile),
        label: 'User'),
  ];
}

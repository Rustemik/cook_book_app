import 'dart:developer';

import 'package:cook_book_app/Domain/service_locator.dart';
import 'package:cook_book_app/Ui/screens/home_screen.dart';
import 'package:cook_book_app/Ui/screens/search_screen.dart';
import 'package:flutter/material.dart';

class NavigationBottom extends StatelessWidget {
  int selectedIndex;

  NavigationBottom({super.key, required this.selectedIndex});

  void chageScreen(int index, BuildContext context) {
    var locator = ServiceLocator.getInstance();

    switch (index) {
      case 0:
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => HomeScreen(service: locator.service!)));
        log('home');
        break;
      case 1:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SearchScreen()));
        log('explore');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) => chageScreen(value, context),
        items: [
          // BottomNavigationBarItem(
          //     icon: SvgPicture.asset(AppIcons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
        ]);
  }
}

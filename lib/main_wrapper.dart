import 'package:cook_book_app/Domain/interfaces/i_recipe_service.dart';
import 'package:cook_book_app/Ui/pages/favourite_page.dart';
import 'package:cook_book_app/Ui/pages/home_page.dart';
import 'package:cook_book_app/Ui/pages/search_page.dart';
import 'package:cook_book_app/Ui/pages/settings_page.dart';
import 'package:flutter/material.dart';

class MainWrapper extends StatefulWidget {
  IRecipeService service;

  MainWrapper({super.key, required this.service});

  @override
  State<MainWrapper> createState() => _MainWrapperState(
        pages: [
          HomePage(service: service),
          SearchPage(),
          FavouritePage(),
          SettingsPage(),
        ],
      );
}

class _MainWrapperState extends State<MainWrapper> {
  PageController _pageViewController = PageController();
  int _currentIndex = 0;
  List<Widget> pages;

  void chagePage(int index) {
    setState(() {
      _currentIndex = index;
      _pageViewController.animateToPage(
        index,
        duration: Duration(milliseconds: 200),
        curve: Curves.linear,
      );
    });
  }

  _MainWrapperState({required this.pages});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: pages,
        controller: _pageViewController,
        onPageChanged: (value) => setState(() {
          _currentIndex = value;
        }),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) => chagePage(value),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
        ],
      ),
    );
  }
}

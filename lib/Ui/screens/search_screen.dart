import 'package:cook_book_app/Ui/components/navigation_bottom.dart';
import 'package:cook_book_app/Ui/styles/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('SEARCH'),
      ),
      bottomNavigationBar: NavigationBottom(selectedIndex: 1),
    );
  }
}

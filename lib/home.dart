import 'package:cook_book_app/components/name_title.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: AppBar(
          //toolbarHeight: 70,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(right: 25.0, left: 25.0, top: 100),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const NameTitle('Rustem'),
                    Text(
                      'What you want to cook today?',
                      style: theme.textTheme.bodyMedium!
                          .copyWith(fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                Container(
                  height: 47,
                  width: 47,
                  color: theme.primaryColor,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Montserrat',
              style: TextStyle(fontFamily: 'Montserrat'),
            ),
            Text(
              'Roboto',
              style: TextStyle(fontFamily: 'Roboto'),
            ),
            Text(
              'Regular',
              style: TextStyle(),
            ),
          ],
        ),
      ),
    );
  }
}

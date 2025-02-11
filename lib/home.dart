import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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

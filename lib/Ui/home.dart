import 'package:cook_book_app/Domain/interfaces/i_recipe_service.dart';
import 'package:cook_book_app/Domain/services/fake_recipe_service.dart';
import 'package:cook_book_app/Ui/components/name_title.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  IRecipeService service;
  Home({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    var cards = service.getAll();

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
      body: ListView.builder(
        itemCount: cards.length,
        itemBuilder: (context, index) {
          var item = cards[index];

          return Row(
            children: [
              Text(
                item.name,
              ),
              SizedBox(width: 10),
              Text(
                item.ccal.toString(),
              ),
            ],
          );
        },
      ),
    );
  }
}

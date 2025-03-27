import 'package:cook_book_app/Domain/interfaces/i_recipe_service.dart';
import 'package:cook_book_app/Ui/components/name_title.dart';
import 'package:cook_book_app/Ui/components/recipe_card_vertical.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  IRecipeService service;
  HomePage({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    var loc = AppLocalizations.of(context)!;

    var cards = service.getAll();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const NameTitle('Rustem'),
                      Text(
                        loc.titleQuestion,
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
            SizedBox(height: 25),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 15,
                  childAspectRatio: 168 / 206,
                ),
                itemCount: cards.length,
                itemBuilder: (context, index) {
                  var item = cards[index];

                  return RecipeCardVertical();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:cook_book_app/Domain/interfaces/i_recipe_service.dart';
import 'package:cook_book_app/Ui/components/all_recipes.dart';
import 'package:cook_book_app/Ui/components/main_app_bar.dart';
import 'package:cook_book_app/Ui/components/recipe_card_vertical.dart';
import 'package:cook_book_app/Ui/components/top_recipes.dart';
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
        padding: const EdgeInsets.all(25.0),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              collapsedHeight: 70,
              flexibleSpace: MainAppBar(loc: loc, theme: theme),
            ),
            SliverAppBar(
              pinned: true,
              collapsedHeight: 70,
              flexibleSpace: Container(
                height: 100,
                width: double.infinity,
                color: Colors.green,
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  TopRecipes(cards: cards),
                  SizedBox(height: 25),
                  Text('Все рецепты'),
                  SizedBox(height: 25),
                ],
              ),
            ),
            AllRecipes(cards: cards),
          ],
        ),
      ),
    );
  }
}

// Text('Popular Recipes'),
// SizedBox(height: 25),
// SizedBox(
//   height: 168,
//   child: ListView.separated(
//       separatorBuilder: (context, index) => SizedBox(
//             width: 30,
//           ),
//       scrollDirection: Axis.horizontal,
//       itemCount: cards.length,
//       itemBuilder: (context, i) {
//         var item = cards[i];

//         return AspectRatio(
//           aspectRatio: 256 / 167,
//           child: RecipeCardVertical(item),
//         );
//       }),
// ),
// SizedBox(height: 25),

// child: Column(
//   crossAxisAlignment: CrossAxisAlignment.start,
//   children: [
//     MainAppBar(loc: loc, theme: theme),
//     const SizedBox(height: 25),
//     TopRecipes(cards: cards),
//     const SizedBox(height: 25),
//     Expanded(child: AllRecipes(cards: cards)),
//   ],

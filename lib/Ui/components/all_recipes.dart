import 'package:cook_book_app/Domain/models/recipe.dart';
import 'package:cook_book_app/Ui/components/recipe_card_vertical.dart';
import 'package:flutter/material.dart';

class AllRecipes extends StatelessWidget {
  const AllRecipes({
    super.key,
    required this.cards,
  });

  final List<Recipe> cards;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Все рецепты'),
        const SizedBox(height: 25),
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

              return RecipeCardVertical(item);
            },
          ),
        ),
      ],
    );
  }
}

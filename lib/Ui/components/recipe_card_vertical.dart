import 'package:cook_book_app/Domain/models/recipe.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RecipeCardVertical extends StatelessWidget {
  Recipe model;

  RecipeCardVertical(this.model, {super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Stack(
      children: [
        _chefBreak(),
        //_imageLoader(),
        //_imageLoader2(),
        Container(
          foregroundDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(blurRadius: 5, color: Colors.black.withOpacity(0.6)),
            ],
            image: DecorationImage(
              image: NetworkImage(
                model.photoUrl != null && model.photoUrl!.isNotEmpty
                    ? model.photoUrl!
                    : 'https://sc02.alicdn.com/kf/HTB1fdc.AfuSBuNkHFqDq6xfhVXaj/200204831/HTB1fdc.AfuSBuNkHFqDq6xfhVXaj.jpg',
              ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.4), BlendMode.darken),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star_border,
                    color: theme.primaryColor,
                  ),
                  SizedBox(width: 2),
                  Text(
                    model.rating.toString(),
                    style: theme.textTheme.labelMedium,
                  ),
                  Expanded(child: Container()),
                  Icon(
                    Icons.heart_broken_outlined,
                    color: Colors.white,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.name,
                    style: theme.textTheme.labelMedium!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.lock_clock,
                              color: theme.primaryColor,
                            ),
                            Text(
                              '${model.cookingTimeMinutes} min',
                              style: theme.textTheme.labelSmall,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.energy_savings_leaf,
                              color: theme.primaryColor,
                            ),
                            Text(
                              '${model.calories} kkal',
                              style: theme.textTheme.labelSmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget _imageLoader() {
  return Stack(
    children: [
      Center(
        child: Lottie.asset(
          'assets/animations/lojka_vilka.json',
          width: 120,
          height: 120,
        ),
      ),
    ],
  );
}

Widget _imageLoader2() {
  return Stack(
    children: [
      Center(
        child: Lottie.asset(
          'assets/animations/lojka_vilka_2.json',
          width: 500,
          height: 500,
        ),
      ),
    ],
  );
}

Widget _chefBreak() {
  return Stack(
    children: [
      Center(
        child: Lottie.asset(
          'assets/animations/chef_break.json',
          width: 120,
          height: 120,
        ),
      ),
    ],
  );
}

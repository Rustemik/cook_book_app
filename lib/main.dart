import 'package:cook_book_app/DataAccess/interfaces/i_recipe_repository.dart';
import 'package:cook_book_app/DataAccess/repos/recipe_repository.dart';
import 'package:cook_book_app/Domain/interfaces/i_recipe_service.dart';
import 'package:cook_book_app/Domain/services/recipe_service.dart';
import 'package:cook_book_app/Ui/home.dart';
import 'package:cook_book_app/Ui/styles/app_themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    IRecipeRepository repo = RecipeRepository();
    IRecipeService service = RecipeService(repo);

    return MaterialApp(
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      themeMode: ThemeMode.system,
      home: Home(
        service: service,
      ),
    );
  }
}

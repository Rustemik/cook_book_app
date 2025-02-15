import 'package:cook_book_app/Domain/models/recipe.dart';

abstract class IRecipeService {
  List<Recipe> getAll();
}

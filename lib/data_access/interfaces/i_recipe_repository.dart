import 'package:cook_book_app/domain/models/recipe.dart';

abstract class IRecipeRepository {
  List<Recipe> getAll();
}

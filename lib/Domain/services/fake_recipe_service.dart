import 'package:cook_book_app/DataAccess/repos/recipe_repository.dart';
import 'package:cook_book_app/Domain/interfaces/i_recipe_service.dart';
import 'package:cook_book_app/Domain/models/recipe.dart';

class FakeRecipeService implements IRecipeService {
  RecipeRepository repo = RecipeRepository();

  List<Recipe> getAll() {
    return repo.getAll() + repo.getAll();
  }
}

import 'package:cook_book_app/DataAccess/interfaces/i_recipe_repository.dart';
import 'package:cook_book_app/Domain/interfaces/i_recipe_service.dart';
import 'package:cook_book_app/Domain/models/recipe.dart';

class RecipeService implements IRecipeService {
  IRecipeRepository repo;

  RecipeService(this.repo);

  @override
  List<Recipe> getAll() {
    var items = repo.getAll();

    return items.where((c) => !c.stopList).toList();
  }
}

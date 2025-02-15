import 'package:cook_book_app/DataAccess/interfaces/i_recipe_repository.dart';
import 'package:cook_book_app/Domain/models/recipe.dart';

class RecipeRepository implements IRecipeRepository {
  @override
  List<Recipe> getAll() {
    //очень сложный метод доступа к базе данных
    return _db;
  }
}

List<Recipe> _db = [
  Recipe('Пельмени', 110),
  Recipe('Салат', 11),
  Recipe('Суп', 82, stopList: true),
  Recipe('Шоколад', 444),
];

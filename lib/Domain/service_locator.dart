import 'package:cook_book_app/Domain/interfaces/i_recipe_service.dart';

class ServiceLocator {
  IRecipeService? service;

  static ServiceLocator? _instance;

  static ServiceLocator getInstance() {
    if (_instance == null) {
      _instance = ServiceLocator();
    }
    return _instance!;
  }
}

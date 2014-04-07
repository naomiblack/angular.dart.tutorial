library recipe_book;

import 'package:angular/angular.dart';
import 'package:angular/angular_dynamic.dart';

import 'package:angular_dart_demo/rating/rating_component.dart';
import 'package:angular_dart_demo/recipe_book.dart';

// Temporary, please follow https://github.com/angular/angular.dart/issues/476
// @MirrorsUsed(targets: const ['recipe_book_controller'], override: '*')
// import 'dart:mirrors';

class MyAppModule extends Module {
  MyAppModule() {
    type(RecipeBookController);
    type(RatingComponent);
  }
}

void main() {
  dynamicApplication()
  .addModule(new MyAppModule()..type(RecipeBookController))
  .addModule(new MyAppModule()..type(RatingComponent))
  .run();
}

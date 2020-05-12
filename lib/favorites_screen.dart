import 'package:flutter/material.dart';

import 'meal_item.dart';
import 'models/meal_data.dart';

class Favorites extends StatelessWidget {
  static const String routeName = '/favorites';
  final List<Meal> _favoriteMeals;
  Favorites(this._favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (_favoriteMeals.isEmpty) {
      return Scaffold(
        body: Center(
          child: Text('Go on add some meals!'),
        ),
      );
    } else {
      return ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(
              id: _favoriteMeals[index].id,
              name: _favoriteMeals[index].name,
              imageUrl: _favoriteMeals[index].imageUrl,
              complexity: _favoriteMeals[index].complexity,
              cookingTime: _favoriteMeals[index].cookingTime,
              priceRange: _favoriteMeals[index].priceRange,
            );
          },
          itemCount: _favoriteMeals.length);
    }
  }
}

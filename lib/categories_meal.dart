import 'package:cookbook_app/meal_item.dart';
import 'package:flutter/material.dart';
import 'models/meal_data.dart';

class CategoryMealScreen extends StatelessWidget {
  static const String routeName = '/category-meals';
  final List<Meal> availableMeals;

  const CategoryMealScreen(this.availableMeals);
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final String categoryId = routeArgs['id'];
    final String categoryTitle = routeArgs['title'];
    final categoryMeals = availableMeals.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      //drawer: MainDrawer(),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(
              id: categoryMeals[index].id,
              name: categoryMeals[index].name,
              imageUrl: categoryMeals[index].imageUrl,
              complexity: categoryMeals[index].complexity,
              cookingTime: categoryMeals[index].cookingTime,
              priceRange: categoryMeals[index].priceRange,
            );
          },
          itemCount: categoryMeals.length),
    );
  }
}

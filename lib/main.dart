import 'package:cookbook_app/categories_meal.dart';
import 'package:cookbook_app/favorites_screen.dart';
import 'package:cookbook_app/meal_screen.dart';
import 'package:cookbook_app/screen_selector.dart';
import 'package:cookbook_app/settings.dart';
import 'package:flutter/material.dart';
import 'models/meal_data.dart';
import 'models/settings_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  SettingsData settingsdata = SettingsData(
      gluten: false, lactose: false, vegan: false, vegetarian: false);

  List<Meal> _availableMeals = DataMeal;

  void _setSettings(SettingsData _settings) {
    setState(() {
      settingsdata = _settings;
      _availableMeals = DataMeal.where((meal) {
        if (settingsdata.gluten && !meal.isGlutenFree) {
          return false;
        }
        if (settingsdata.vegan && !meal.isVegan) {
          return false;
        }
        if (settingsdata.vegetarian && !meal.isVegetarian) {
          return false;
        }
        if (settingsdata.lactose && !meal.isLactoseFree) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cookbook',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: TextStyle(
                fontSize: 24,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenNavigation(),
        CategoryMealScreen.routeName: (context) =>
            CategoryMealScreen(_availableMeals),
        MealScreen.routeName: (context) => MealScreen(),
        Favorites.routeName: (context) => Favorites(),
        Settings.routeName: (context) => Settings(_setSettings,settingsdata),
      },
    );
  }
}

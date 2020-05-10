import 'package:flutter/cupertino.dart';

enum Complexity {
  Simple,
  Normal,
  Hard,
}

enum Price {
  Cheap,
  Normal,
  Expensive,
}

class Meal {
  final String id;
  final List<String> categories;
  final String name;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int cookingTime;
  final Complexity complexity;
  final Price priceRange;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  const Meal({
    @required this.id,
    @required this.categories,
    @required this.complexity,
    @required this.cookingTime,
    @required this.imageUrl,
    @required this.ingredients,
    @required this.isVegetarian,
    @required this.isGlutenFree,
    @required this.priceRange,
    @required this.isLactoseFree,
    @required this.isVegan,
    @required this.name,
    @required this.steps,
  });
}

const DataMeal = const [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c4',
      'c6',
    ],
    name: 'Spaghetti with Tomato Sauce',
    priceRange: Price.Cheap,
    complexity: Complexity.Simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    cookingTime: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c7',
    ],
    name: 'Toast Hawaii',
    priceRange: Price.Cheap,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    cookingTime: 10,
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c3',
      'c4',
      'c5',
      'c9',
    ],
    name: 'Classic Hamburger',
    priceRange: Price.Normal,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    cookingTime: 45,
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c6',
    ],
    name: 'Wiener Schnitzel',
    priceRange: Price.Expensive,
    complexity: Complexity.Hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    cookingTime: 60,
    ingredients: [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c8',
      'c10',
    ],
    name: 'Salad with Smoked Salmon',
    priceRange: Price.Expensive,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    cookingTime: 15,
    ingredients: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c5',
      'c10',
    ],
    name: 'Delicious Orange Mousse',
    priceRange: Price.Cheap,
    complexity: Complexity.Hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    cookingTime: 240,
    ingredients: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
      'c4',
    ],
    name: 'Pancakes',
    priceRange: Price.Cheap,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    cookingTime: 20,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
      'c6',
    ],
    name: 'Creamy Indian Chicken Curry',
    priceRange: Price.Normal,
    complexity: Complexity.Hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    cookingTime: 35,
    ingredients: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c5',
    ],
    name: 'Chocolate Souffle',
    priceRange: Price.Cheap,
    complexity: Complexity.Hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    cookingTime: 45,
    ingredients: [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c1',
      'c4',
      'c6',
    ],
    name: 'Asparagus Salad with Cherry Tomatoes',
    priceRange: Price.Expensive,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    cookingTime: 30,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm11',
    categories: [
      'c2',
      'c6',
    ],
    name: 'Pierogi with cheese',
    priceRange: Price.Normal,
    complexity: Complexity.Normal,
    imageUrl: 'https://tinyurl.com/ybcmmmlz',
    cookingTime: 90,
    ingredients: [
      '1 lb farmer\'s cheese',
      '2 large eggs, plus 1 large egg yolk',
      'Salt, Pepper',
      '2.5 cups flour',
      '0.5 cup sout cream',
      '0.25 cup unsalted butter, melted',
    ],
    steps: [
      'Make the filling: Combine the cheese, egg, and egg yolk and mix well. Season to taste with salt and pepper. Fold in the chives.',
      'Make the dough: Sift the flour and salt together onto a clean work surface. Form the flour mixture into a mound and use your hands or a spoon to make a well in the center. Crack the egg into the well and add the sour cream and butter. Use a fork to whisk the egg mixture, gradually incorporating flour into the dough. Knead together until the dough is smooth and elastic, adding a little water if the dough is too crumbly and adding flour to the work surface if it gets sticky. Roll dough into a ball and let rest on a floured surface in a warm place, covered with an overturned bowl, 1 hour.',
      'Assemble pierogi: Remove about a third of the dough, leaving the rest covered, and roll out to 1/8-inch thick. Use an overturned glass to cut dough into circles. Top each dough circle with a tablespoonful of filling, slightly off center. Fold the dough circle in half over the filling and press together, crimping to seal. Set shaped pierogi on a baking sheet lightly dusted with cornstarch. (If you want to freeze your pierogi, do so now.)',
      'Cook pierogi: Bring a large pot of salted water to a boil over high heat. Working in small batches, drop 6 or so pierogi in boiling water, being careful not to crowd them. Allow the water to come back to a boil, then reduce heat to a simmer and cook until the pierogi are tender and rise to the surface, about 5 minutes.',
      'Pan-fry cooked pierogi: Heat 1 tablespoon of butter in a large skillet over medium heat until the butter just begins to brown. Remove the pierogi from the simmering water with a slotted spoon, drain the excess water, and add to the hot pan in a single layer. Fry until the pierogi are golden brown on both sides, about 3 minutes, transfer to a plate, and drizzle with leftover brown butter. Repeat with the remaining pierogi, adding 1 tablespoon of butter after each batch.',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm12',
    categories: [
      'c2',
      'c6',
    ],
    name: 'Polish Bigos',
    priceRange: Price.Normal,
    complexity: Complexity.Hard,
    imageUrl:
        'https://s3.przepisy.pl/przepisy3ii/img/variants/767x0/bigos-video.jpg',
    cookingTime: 130,
    ingredients: [
      '0.5 medium cabbage',
      '946 ml of sauerkraut',
      '1 can tomato paste',
      '0.23 kg bacon sliced',
      '0.45 kg pork diced',
      '0.45 kg Kielbasa sausage sliced',
      '1 large onion diced',
      '2 cloves garlic minced',
      '1 bay leaf',
      'Optional salt and pepper to taste'
    ],
    steps: [
      'Cut your washed cabbage in thin slices and boil until tender in a pot.',
      'Boil the sauerkraut in another pot in about 2 cups of water. Strain and keep the sour water aside.',
      'Sauté your diced pork in a pan with some cooking oil (lard, coconut oil or butter are good), then set aside.',
      'Sauté the bacon and sausage with the onion and garlic.',
      'In a large pot, combine the cooked cabbage, sauerkraut, sour water, tomato paste, spices and your cooked meats, onion and garlic.',
      'Let simmer for about 1 hour.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm13',
    categories: [
      'c1',
      'c5',
      'c9',
    ],
    name: 'Pizza',
    priceRange: Price.Cheap,
    complexity: Complexity.Simple,
    imageUrl: 'https://tinyurl.com/ybcrgba9',
    cookingTime: 60,
    ingredients: [
      '1 package (1/4 ounce) active dry yeast',
      '1 teaspoon sugar',
      '1-1/4 cups warm water (110° to 115°)',
      '1/4 cup canola oil',
      '1 teaspoon salt',
      '3-1/2 to 4 cups all-purpose flour',
      '1/2 pound ground beef',
      '1 small onion, chopped',
      '1 can (15 ounces) tomato sauce',
      '3 teaspoons dried oregano',
      '1 teaspoon dried basil',
      '1 medium green pepper, diced',
      '2 cups shredded part-skim mozzarella cheese'
    ],
    steps: [
      'In large bowl, dissolve yeast and sugar in water; let stand for 5 minutes. Add oil and salt. Stir in flour, a cup at a time, until a soft dough forms.',
      'Turn onto floured surface; knead until smooth and elastic, about 2-3 minutes. Place in a greased bowl, turning once to grease the top. Cover and let rise in a warm place until doubled, about 45 minutes. Meanwhile, cook beef and onion over medium heat until no longer pink; drain.',
      'Punch down dough; divide in half. Press each into a greased 12-in. pizza pan. Combine the tomato sauce, oregano and basil; spread over each crust. Top with beef mixture, green pepper and cheese.',
      'Bake at 400° for 25-30 minutes or until crust is lightly browned.'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];

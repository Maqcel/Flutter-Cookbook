import 'package:flutter/material.dart';
import 'models/meal_data.dart';

class MealScreen extends StatelessWidget {
  static const String routeName = '/meal-screen';

  Widget buildText(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Text(text, style: Theme.of(context).textTheme.title),
    );
  }

  Widget buildContainer(BuildContext context, Widget child, Size screenSize) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        height: screenSize.height * 0.20,
        width: screenSize.width * 0.8,
        child: child);
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final routeArgs = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DataMeal.firstWhere((meal) => meal.id == routeArgs);
    return Scaffold(
        appBar: AppBar(
          title: Text(selectedMeal.name),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: Image.network(
                  selectedMeal.imageUrl,
                  fit: BoxFit.cover,
                ),
                width: double.infinity,
                height: screenSize.height * 0.4,
              ),
              buildText(context, 'Ingredients'),
              buildContainer(
                context,
                ListView.builder(
                  itemBuilder: (context, index) => Card(
                    color: Theme.of(context).accentColor,
                    child: Center(
                        child: Text(
                      selectedMeal.ingredients[index],
                    )),
                  ),
                  itemCount: selectedMeal.ingredients.length,
                ),
                screenSize,
              ), //Ingredients build
              buildText(context, 'Steps'),
              buildContainer(
                context,
                ListView.builder(
                  itemBuilder: (context, index) => Column(
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          child: Text('# ${(index + 1)}'),
                        ),
                        title: Text(selectedMeal.steps[index]),
                      ),
                      Divider(),
                    ],
                  ),
                  itemCount: selectedMeal.steps.length,
                ),
                screenSize,
              ), //Steps build
            ],
          ),
        ));
  }
}

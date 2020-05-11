import 'package:cookbook_app/meal_screen.dart';
import 'package:cookbook_app/models/meal_data.dart';
import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String name;
  final String imageUrl;
  final int cookingTime;
  final Complexity complexity;
  final Price priceRange;

  const MealItem({
    @required this.id,
    @required this.name,
    @required this.imageUrl,
    @required this.cookingTime,
    @required this.complexity,
    @required this.priceRange,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Normal:
        return 'Normal';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      default:
        return 'Unknown';
    }
  }

  String get priceText {
    switch (priceRange) {
      case Price.Cheap:
        return 'Cheap';
        break;
      case Price.Normal:
        return 'Normal';
        break;
      case Price.Expensive:
        return 'Expensive';
        break;
      default:
        return 'Unknown';
    }
  }

  void selectMeal(BuildContext context) {
    Navigator.of(context).pushNamed(
      MealScreen.routeName,
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: screenSize.height * 0.3,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (BuildContext context, Object exception,
                        StackTrace stackTrace) {
                      return SizedBox(
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.signal_wifi_off),
                              Text('There is no internet'),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center
                          ),
                        ),
                        height: screenSize.height * 0.3,
                      );
                    }, //errorBuilder
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 0,
                  child: Container(
                    width: screenSize.width*0.8,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: screenSize.width*0.059,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.schedule,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('$cookingTime min'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.whatshot,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(complexityText),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.attach_money,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(priceText),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

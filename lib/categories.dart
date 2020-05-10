import 'package:flutter/material.dart';

import 'categories_item.dart';
import 'models/categories_data.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cookbook"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(15),
        children: DataCategory.map(
          (listdata) => CategoryItem(
            listdata.id,
            listdata.title,
            listdata.color,
          ),
        ).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 1.5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}

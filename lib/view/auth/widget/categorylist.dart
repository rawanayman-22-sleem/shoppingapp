import 'package:flutter/material.dart';

import '../../../core/constant.dart';
import '../../../core/functions/categories.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: blue,
                        foregroundColor: Colors.white,
                        child: Icon(categories[index].icon , size: 40,),
                      ),
                      const SizedBox(height: 8),
                      Text(categories[index].text),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

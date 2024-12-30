import 'package:flutter/material.dart';

import '../../../core/support_font.dart';
import '../../auth/widget/productcard.dart';


class Favoriteview extends StatelessWidget {
  const Favoriteview({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 55),
            child: Text(
              'Your Favorite products',
              style: AppWidget.LightTextFeildStyleF(),
            ),
          ),

          SizedBox(height: 15),

          ProductCard()
        ],
      ),
    );
  }
}

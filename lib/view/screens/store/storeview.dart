import 'package:flutter/material.dart';
import '../../../core/support_font.dart';
import '../../../core/textField.dart';
import '../../auth/widget/productcard.dart';

class Storeview extends StatelessWidget {
  const Storeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 55),
            child: Text(
              'Welcome to our Market',
              style: AppWidget.LightTextFeildStyleF(),
            ),
          ),
          SizedBox(height: 20),

          const TextSearchfield(
            text: 'Search in Market....',
          ),

          SizedBox(height: 15),

          ProductCard()
        ],
      ),
    );
  }
}

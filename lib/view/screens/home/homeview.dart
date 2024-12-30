import 'package:flutter/material.dart';
import '../../../core/constant.dart';
import '../../../core/support_font.dart';
import '../../../core/textField.dart';
import '../../auth/widget/categorylist.dart';
import '../../auth/widget/productcard.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          children: [
            const TextSearchfield(
              text: 'Search in Market....',
            ),
             SizedBox(height: 20),
      
            Image.asset(imagehome),
      
             SizedBox(height: 20),
      
            Text(
              'Popular Categories',
              style: AppWidget.LightTextFeildStyleF(),
            ),
      
             SizedBox(height: 14),
      
            CategoryList(),
      
            Text('Recently Products',
              style: AppWidget.LightTextFeildStyleF(),),
      
            ProductCard(),
            ProductCard(),

          ],
        ),
    );
  }
}


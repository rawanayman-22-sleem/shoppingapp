import 'package:flutter/material.dart';
import 'package:shoppingapp/core/support_font.dart';
import 'customarrowbutton.dart';

class CustomrowwithArrow extends StatelessWidget {
  const CustomrowwithArrow({
    super.key, required this.text, this.onTap,
  });
  final String text;
  final  void  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
          style: AppWidget.lightblueF(),
        ),
        CustomArrowbutton(
          onTap: onTap,
        )
      ],
    );
  }
}


import 'package:flutter/material.dart';

import 'constant.dart';

class CustomArrowbutton extends StatelessWidget {
  const CustomArrowbutton({
    super.key, this.onTap,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: blue,
            foregroundColor: Colors.white
        ),
        onPressed: onTap,
        child: Icon(Icons.arrow_forward));
  }
}


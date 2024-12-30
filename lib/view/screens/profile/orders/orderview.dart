import 'package:flutter/material.dart';

import '../../../auth/widget/productlist.dart';

class Orderview extends StatelessWidget {
  const Orderview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Productlist(
        shrinkWrap: false,
        physics: BouncingScrollPhysics(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'productcard.dart';

class Productlist extends StatelessWidget {
  const Productlist({
    super.key,
    required this.shrinkWrap,
    this.physics});

  final bool shrinkWrap;
  final ScrollPhysics? physics;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: shrinkWrap ?? true,
      physics: physics ?? NeverScrollableScrollPhysics(),
      itemCount: 2,
      itemBuilder: (context, index) {
        return ProductCard();
      },
    );
  }
}

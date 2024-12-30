import 'package:flutter/material.dart';

import '../../../../core/functions/appBarbulid.dart';
import 'productview.dart';


class Productbody extends StatelessWidget {
  const Productbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "Product Name"),
      body: Productview(),
    );
  }
}

import 'package:flutter/material.dart';
import '../../../../core/functions/appBarbulid.dart';
import 'orderview.dart';

class Orderbody extends StatelessWidget {
  const Orderbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'My Orders'),
      body: Orderview(),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<dynamic> navigatorTo(BuildContext context, Widget view) {
  return Navigator.push(context, CupertinoPageRoute(builder: (context) => view),);
}
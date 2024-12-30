import 'package:flutter/material.dart';

import '../constant.dart';

AppBar buildAppBar(BuildContext context , String title) {
  return AppBar(
    centerTitle: true,
    title: Text(title,style: TextStyle(
        color: Colors.white,
        fontSize: 22
    ),),
    backgroundColor: blue,
    leading: IconButton(
        onPressed: ()=> Navigator.pop(context),
        icon: Icon(Icons.arrow_back , size: 31 , color: Colors.white,)) ,
  );
}


import 'package:flutter/material.dart';

List<Category> categories = [
  Category( icon: Icons.sports,       text: 'Sports'),
  Category( icon: Icons.tv,           text: 'Electronics'),
  Category( icon: Icons.collections,  text: 'Collections'),
  Category( icon: Icons.book,         text: 'Books'),
  Category( icon: Icons.games,        text: 'Games'),
];


class Category {
  final IconData icon;
  final String text ;
  Category({required this.icon , required this.text});
}

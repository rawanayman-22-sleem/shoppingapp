import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Toy Shope",
    image: "assets/images/image2.png",
    desc: "Explore top Toys in World",
  ),
  OnboardingContents(
    title: "Delivery on the way",
    image: "assets/images/image1.png",
    desc:
    "Get your order by speed delivery",
  ),
  OnboardingContents(
    title: "Delivery Arrived",
    image: "assets/images/image.png",
    desc:
    "Order is arrived at your place",
  ),
];

// عند الرجوع الي الخلف يتم غلق التطبيق
void navigatorendfinish (context, widget, ) =>
    Navigator.pushAndRemoveUntil(
    context, MaterialPageRoute(builder: (context) => widget, ),
   ( route) => false,
    );
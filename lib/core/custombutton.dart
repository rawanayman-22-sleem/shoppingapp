import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shoppingapp/core/support_font.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key, this.onTap, required this.text,
  });
final void Function()? onTap;
final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(text,
        style: AppWidget.lightblueF(),
      ),
    );
  }
}


class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color colorT;


  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
    required this.colorT,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 13),
        child: Text(
          text,
          style: TextStyle(
            color: colorT,
          ),
        ),
      ),
    );
  }
}














///////////////////////////
// class Custombutton extends StatelessWidget {
//    Custombutton({super.key, this.colorT,this.color,this.onTap,required this.text});
// VoidCallback? onTap;
// String text;
// Color? color ;
// Color? colorT;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         decoration: BoxDecoration(
//             color: color,
//             borderRadius: BorderRadius.circular(6)
//         ),
//         width: double.infinity,
//         height: 50,
//         child: Center(
//           child: Text(
//               text,
//             style: TextStyle(
//               fontWeight: FontWeight.w500,
//               fontSize: 20,
//               color: colorT
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

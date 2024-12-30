import 'package:flutter/material.dart';



class CustomButtonProfile extends StatelessWidget {
  final VoidCallback onTap;
  final Color color;
  final String text;
  final IconData icon;

  const CustomButtonProfile({
    required this.onTap,
    required this.color,
    required this.text,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon, color: Colors.white),
                const SizedBox(width: 10),
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
          ],
        ),
      ),
    );
  }
}
// class Custombuttonprofile extends StatelessWidget {
//   const Custombuttonprofile({
//     super.key,
//     required this.color,
//     required this.text,
//     required this.icon,
//     required this.iconrow, this.onTap
//   });
//
//   final Color color;
//   final String text;
//   final IconData icon;
//   final IconData iconrow;
//   final void Function()? onTap;
//
//   @override
//   Widget build(BuildContext context) {
//     return  Card(
//         color: color,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(8),),
//         ),
//
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                  Icon(iconrow, size: 30, color: Colors.white,),
//                 Text(text,
//                   style: AppWidget.LightTextFeildStyleF(),),
//             InkWell(
//               onTap: onTap,
//               child:
//                 Icon(icon , color: Colors.white,))
//               ],
//             ),
//           ),
//     );
//   }
// }

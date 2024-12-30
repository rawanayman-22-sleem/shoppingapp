import 'package:flutter/material.dart';

import 'constant.dart';

class CustomTextFromField extends StatelessWidget {
  const CustomTextFromField({
    super.key,
    required this.labltext,
    this.sufficon,
    required this.isSecure,
    this.controller,
  });

  final String labltext;
  final Widget? sufficon;
  final bool  isSecure;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isSecure,
      obscuringCharacter: '*',
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field is required';
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: labltext,
        suffixIcon: sufficon, // استخدم suffixIcon بدلاً من suffix
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: backgroundcolorw,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: backgroundcolorw,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16), // لضمان تناسق الحقل
      ),
    );
  }
}

// class CustomTextFromField extends StatelessWidget {
//   const CustomTextFromField({
//     super.key, required this.labltext, this.sufficon, required this.isSecure,
//   });
//
//   final String labltext;
//   final Widget? sufficon;
//   final bool isSecure;
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       obscureText: isSecure,
//       obscuringCharacter: '*',
//       validator: (value) {
//         if (value == null || value.isEmpty) {
//           return 'This field is requried';
//         }
//         return null;
//       },
//       keyboardType: TextInputType.emailAddress,
//       decoration: InputDecoration(
//         labelText: labltext,
//         suffix: sufficon,
//         border: OutlineInputBorder(
//             borderSide:  BorderSide(
//               color: backgroundColorw,
//               width: 2
//             ),
//             borderRadius: BorderRadius.circular(8)
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderSide: const BorderSide(
//             color: backgroundColorw , width: 2
//           ),
//           borderRadius: BorderRadius.circular(8)
//         )
//       ),
//
//     );
//   }
// }


// class Customformtextfield extends StatelessWidget {
//   Customformtextfield({super.key,
//     this.hinttext,
//     this.labeltext,
//     this.onChanged,
//     this.obscureText = false,
//     required this .prefixicon,
//      this .suffix,
//
//   });
//
//   Function(String)? onChanged;
//   String? hinttext;
//   String? labeltext;
//   bool? obscureText;
//   Icon prefixicon ;
//   final Widget? suffix;
//
//   @override
//   Widget build(BuildContext context) {
//     return  TextFormField(
//       onChanged: onChanged,
//       obscureText: obscureText!,
//
//       // controller: _emailController,
//       decoration: InputDecoration(
//         hintText: hinttext,
//         labelText: labeltext,
//         prefixIcon: prefixicon,
//         suffix: suffix,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(15),
//         ),
//         filled: true,
//         fillColor: Colors.white,
//       ),
//
//       validator: (value) //firebase
//       {
//         if(value!.isEmpty) {
//           return 'Field is reduired';
//         }
//       }, //firebase
//
//     );
//   }
// }
////////////////////////////////////////////////////

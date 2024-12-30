import 'package:flutter/material.dart';

import 'constant.dart';

class TextSearchfield extends StatelessWidget {
  const TextSearchfield({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: text,
        suffixIcon: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                )
            ),
            onPressed: (){},
            child: Icon(Icons.search)
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16), // لضمان تناسق الحقل
      ),
    );
  }
}

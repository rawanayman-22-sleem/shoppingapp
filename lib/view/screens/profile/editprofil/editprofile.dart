import 'package:flutter/material.dart';
import '../../../../core/constant.dart';
import '../../../../core/custombutton.dart';
import '../../../../core/customtextformfield.dart';
import '../../../../core/functions/appBarbulid.dart';


class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'Edit Name'),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            const CustomTextFromField(
              labltext: 'Enter your name',
              isSecure: false,
            ),
            const SizedBox(height: 18,),
            CustomButton(
                text: 'Update',
                onPressed: () {},
                color: blue,
                colorT: Colors.white)
          ],

        ),
      ),
    );
  }
}

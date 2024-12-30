import 'package:flutter/material.dart';

import '../../../core/constant.dart';
import '../../../core/custombutton.dart';
import '../../../core/customrowwithArrow.dart';
import '../../../core/customtextformfield.dart';
import '../../../core/support_font.dart';

class Forgetview extends StatelessWidget {
  const Forgetview({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.only(right: 20,left: 20),
                child: Text('Enter your email to reset '
                    '\n        password',
                    style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                    )),
              ),
              SizedBox(height: 50,),
              //  Spacer(),
              Center(
                child: Card(
                  color: bluelight,
                  margin: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(50)
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        CustomTextFromField(
                          labltext: 'Email',
                          isSecure: false,
                        ),
                        SizedBox(height: 15,),
                        ElevatedButton(
                            onPressed: (){},
                            child: Padding(padding: EdgeInsets.symmetric(horizontal: 12, vertical: 13),
                            child: Text('Send',style: AppWidget.lightblueF(),),))

                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

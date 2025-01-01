import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/constant.dart';
import '../../../core/custombutton.dart';
import '../../../core/customrowwithArrow.dart';
import '../../../core/customtextformfield.dart';
import '../../../core/functions/buildShowSnackBar.dart';
import '../../../core/functions/navigator_to.dart';
import '../../../core/support_font.dart';
import '../../auth/forget/forgetbody.dart';
import '../../auth/widget/nav_bar/main_home_view.dart';
import '../../logic/authentication_cubit.dart';
import '../signup/signupbody.dart';



class Loginview extends StatefulWidget {
  const Loginview({super.key});

  @override
  State<Loginview> createState() => _LoginviewState();
}

class _LoginviewState extends State<Loginview> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var isPasswordvisible = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
         if (state is LoginSuccess || state is GoogleSignInSuccess) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => MainHomeView()),
            );
          } else if (state is LoginError) {
            buildShowSnackBar(context, state.message);
          }
      },
      builder: (context, state) {
        AuthenticationCubit cubit = context.read<AuthenticationCubit>();
        return   SafeArea(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(height: 100,),
                    Text('Welcome back',
                        style: AppWidget.boldTextFeildStyleF()),
                    SizedBox(height: 50,),

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
                                controller: emailcontroller,
                                labltext: 'Email',
                                isSecure: false,
                              ),
                              SizedBox(height: 15,),
                              CustomTextFromField(
                                controller: passwordcontroller,
                                sufficon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        isPasswordvisible = !isPasswordvisible;
                                      });
                                    },
                                    icon: Icon(isPasswordvisible? Icons.visibility : Icons.visibility_off)),
                                labltext: 'Password',
                                isSecure: !isPasswordvisible,
                
                              ),
                              SizedBox(height: 15,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomTextButton(
                                    onTap: () {
                                      navigatorTo(context, Forgetbody());
                                    },
                                    text: 'Forget password ?',
                                  )
                                ],
                              ),
                              SizedBox(height: 15,),
                              CustomrowwithArrow(
                                text: 'Login',
                                onTap: () {
                                  if (_formKey.currentState!.validate()){
                                    cubit.login(
                                        email: emailcontroller.text,
                                        password: passwordcontroller.text);
                                  }
                                },
                              ),
                              SizedBox(height: 15,),
                              CustomrowwithArrow(
                                text: 'Login with Google',
                                onTap: () => cubit.googleSignIn,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Do\'t an account?',
                                    style: AppWidget.LightTextFeildStyleF(),
                                  ),
                                  SizedBox(width: 6),
                                  CustomTextButton(
                                    text: 'Sign up',
                                    onTap: () {
                                      navigatorTo(context, SignUpbody());
                                    },
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
      },
    );
  }


  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

}


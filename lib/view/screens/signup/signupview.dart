import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/constant.dart';
import '../../../core/custombutton.dart';
import '../../../core/customrowwithArrow.dart';
import '../../../core/customtextformfield.dart';
import '../../../core/functions/buildShowSnackBar.dart';
import '../../../core/support_font.dart';
import '../../auth/widget/nav_bar/main_home_view.dart';
import '../../logic/authentication_cubit.dart';

class SignUpview extends StatefulWidget {
  const SignUpview({super.key});

  @override
  State<SignUpview> createState() => _SignUpviewState();
}

class _SignUpviewState extends State<SignUpview> {

  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        if (state is SignupLoading || state is GoogleSignInSuccess) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => MainHomeView()),
          );
        } else if (state is SignupError) {
          buildShowSnackBar(context, state.message);
        }
      },
      builder: (context, state) {
        return SafeArea(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(height: 100,),
                    Text('Sign up to \n'
                        '      connect US',
                        style: AppWidget.semiboldFeildStyleF()),
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
                              SizedBox(height: 15,),
                              CustomTextFromField(
                                labltext: 'Name',
                                isSecure: false,
                              ),

                              SizedBox(height: 15,),
                              CustomTextFromField(
                                labltext: 'Email',
                                isSecure: false,
                              ),

                              SizedBox(height: 15,),
                              CustomTextFromField(
                                sufficon: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.visibility_off)),
                                labltext: 'Password',
                                isSecure: true,
                              ),
                              SizedBox(height: 15,),
                              CustomrowwithArrow(
                                text: 'Sign Up',
                                onTap: () {
                                  if (_formKey.currentState!.validate()) {
                                    context.read<AuthenticationCubit>()
                                        .signup(name: _name.text
                                        , email: _emailcontroller.text,
                                        password: _passwordcontroller.text);
                                  }
                                },
                              ),
                              SizedBox(height: 15,),
                              CustomrowwithArrow(
                                text: 'Sign up with Google',
                                onTap: () {
                                  context.read<AuthenticationCubit>().googleSignIn();
                                },
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Already have account?',
                                    style: AppWidget.LightTextFeildStyleF(),),
                                  SizedBox(width: 6,),
                                  CustomTextButton(
                                    text: 'Login',
                                    onTap: () {
                                      Navigator.pop(context);
                                      // navigatorTo(context,  Loginbody() );

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
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    _name.dispose();
    super.dispose();
  }
}

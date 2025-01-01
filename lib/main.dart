import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppingapp/core/constant.dart';
import 'package:shoppingapp/core/functions/my_observer.dart';
import 'package:shoppingapp/view/logic/authentication_cubit.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'view/auth/widget/nav_bar/main_home_view.dart';
import 'view/screens/login/loginbody.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: Url,
    anonKey: AnonKey,
  );
  Bloc.observer = MyObserver();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SupabaseClient client = Supabase.instance.client;

    return BlocProvider(
      create: (context) => AuthenticationCubit(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
         // home: MainHomeView(),
          home: client.auth.currentUser != null ? MainHomeView() : Loginbody(),
    ),);
  }
}


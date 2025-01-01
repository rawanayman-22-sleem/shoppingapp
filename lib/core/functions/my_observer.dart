import 'dart:developer';

import 'package:bloc/bloc.dart';

class MyObserver implements BlocObserver{
  @override
  void onChange(BlocBase bloc, Change change) {
    // TODO: implement onChange
    log(change.toString());
  }

  @override
  void onClose(BlocBase bloc) {
    // TODO: implement onClose
    log('$bloc closed');

  }

  @override
  void onCreate(BlocBase bloc) {
    // TODO: implement onCreate
    log('$bloc created');

  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
  }

}
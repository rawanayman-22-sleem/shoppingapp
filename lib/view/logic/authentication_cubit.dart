import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());

    SupabaseClient client = Supabase.instance.client;

    Future<void> login ({required String email , required String password}) async{
      emit(LoginLoading());
      try{
        await client.auth.signInWithPassword(password: password , email:  email);
        emit(LoginSuccess());
      } on AuthException catch (e) {
        log(e.toString());
        emit(LoginError(e.message));
        
      } catch (e) {
        emit(LoginError(e.toString()));
      }
    }

  Future<void> signup ({required String name ,required String email , required String password}) async{
    emit(SignupLoading());
    try{
      await client.auth.signUp(password: password , email:  email);
      emit(SignupSuccess());
    } on AuthException catch (e) {
      log(e.toString());
      emit(SignupError(e.message));

    } catch (e) {
      emit(SignupError(e.toString()));
    }
  }

}

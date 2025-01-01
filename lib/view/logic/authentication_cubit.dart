import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
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

GoogleSignInAccount? googleUser;
  Future<AuthResponse> googleSignIn() async {
    emit(GoogleSignInLoading());

    const webClientId = '601584364046-ps33c5qee1rhlj39dftbr9a87su52vbt.apps.googleusercontent.com';

    //      ios iphone
    // /// TODO: update the iOS client ID with your own.
    // ///
    // /// iOS Client ID that you registered with Google Cloud.
    // const iosClientId = 'my-ios.apps.googleusercontent.com';
    //
    // // Google sign in on Android will work without providing the Android
    // // Client ID registered on Google Cloud.

    final GoogleSignIn googleSignIn = GoogleSignIn(
     // clientId: iosClientId,
      serverClientId: webClientId,
    );

     googleUser = await googleSignIn.signIn();

     if (googleUser == null) {
       return AuthResponse();
     }
    final googleAuth = await googleUser!.authentication;
    final accessToken = googleAuth.accessToken;
    final idToken = googleAuth.idToken;

    if (accessToken == null || idToken == null) {
      emit(GoogleSignInError());
      return AuthResponse();
    }

    AuthResponse response = await client.auth.signInWithIdToken(
      provider: OAuthProvider.google,
      idToken: idToken,
      accessToken: accessToken,
    );
    emit(SignupSuccess());
    return response;
  }


}

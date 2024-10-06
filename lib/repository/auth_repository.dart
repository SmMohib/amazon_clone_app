import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';



class AuthRepository {
  final GoogleSignIn _googleSignIn;
  AuthRepository({
    required GoogleSignIn google_sign_in,
  }):_googleSignIn = google_sign_in;

  void signInWithGoogle()async{
    try{
final user =await _googleSignIn.signIn();
if(user !=null){
  print(user.email);

}
    }catch(e){
      print(e);
    }
  }
}

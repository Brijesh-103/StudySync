import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSigninApi{
  static final _googlesignin = GoogleSignIn();
  static Future<GoogleSignInAccount?> login() => _googlesignin.signIn();

}
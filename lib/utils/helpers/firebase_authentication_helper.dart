import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthenticationHelper {
  static final FirebaseAuthenticationHelper _ =
      new FirebaseAuthenticationHelper._internal();

  factory FirebaseAuthenticationHelper() => _;

  FirebaseAuthenticationHelper._internal();

  FirebaseAuth _instance = FirebaseAuth.instance;

  FirebaseAuth get instance => _instance;
}

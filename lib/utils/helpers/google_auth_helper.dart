import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pagalo_wallet/utils/helpers/firebase_authentication_helper.dart';

class GoogleAuthHelper {
  final FirebaseAuthenticationHelper _firebaseAuthenticationHelper =
      FirebaseAuthenticationHelper();

  static final GoogleAuthHelper _ = new GoogleAuthHelper._internal();

  factory GoogleAuthHelper() => _;

  GoogleAuthHelper._internal();

  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  GoogleSignInAccount _account;

  GoogleSignInAuthentication _authentication;

  AuthCredential _authCredential;

  UserCredential _userCredential;

  User _user;

  User _currentUser;

  String _accessToken;

  User get user => _user;

  User get currentUser => _currentUser;

  String get accessToken => _accessToken;

  Future<void> handleSignIn() async {
    try {
      _account = await _googleSignIn.signIn();

      _authentication = await _account.authentication;

      _accessToken = _authentication.accessToken;

      _authCredential = GoogleAuthProvider.credential(
        idToken: _authentication.idToken,
        accessToken: _authentication.accessToken,
      );

      _userCredential = await _firebaseAuthenticationHelper.instance
          .signInWithCredential(_authCredential);

      _user = _userCredential.user;

      assert(_user.displayName != null);
      assert(_user.email != null);

      _currentUser = _firebaseAuthenticationHelper.instance.currentUser;

      assert(_currentUser.uid != _user.uid);

      return 'Ops... login with Google has problems now.';
    } catch (error) {
      print(error);
    }
  }
}

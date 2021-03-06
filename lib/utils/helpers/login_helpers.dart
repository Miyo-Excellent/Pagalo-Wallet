import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginHelpers {
  static const String TOKEN_EXPIRED = 'TOKEN_EXPIRED';
  static const String USER_DISABLED = 'USER_DISABLED';
  static const String USER_NOT_FOUND = 'USER_NOT_FOUND';
  static const String INVALID_REFRESH_TOKEN = 'INVALID_REFRESH_TOKEN';
  static const String INVALID_GRANT_TYPE = 'INVALID_GRANT_TYPE';
  static const String MISSING_REFRESH_TOKEN = 'MISSING_REFRESH_TOKEN';
  static const String MISSING_ID_TOKEN = 'MISSING_ID_TOKEN';
  static const String INVALID_PASSWORD = 'INVALID_PASSWORD';
  static const String EMAIL_EXISTS = 'EMAIL_EXISTS';

  static onError(String type) {
    switch (type) {
      case MISSING_ID_TOKEN:
        return 'There is no user with this email address.';

      case INVALID_PASSWORD:
        return 'The password is not valid, verify the equality between the passwords.';

      default:
        return 'An error occurred.';
    }
  }

  static Future<GoogleSignIn> googleSignConfigSetup({
    @required Function(GoogleSignInAccount account) onCurrentUserChanged,
  }) async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: <String>[
        'email',
        'https://www.googleapis.com/auth/contacts.readonly',
      ],
    );

    _googleSignIn.onCurrentUserChanged.listen(onCurrentUserChanged);

    _googleSignIn.signInSilently();

    return _googleSignIn;
  }

  static Future googleSignIn({
    @required Function(GoogleSignInAccount account) onGetData,
  }) async {
    final _googleSignIn =
        await googleSignConfigSetup(onCurrentUserChanged: onGetData);

    await _googleSignIn.signIn();
  }

  static Future googleSignOut({
    @required Function(GoogleSignInAccount account) onGetData,
  }) async {
    final _googleSignIn =
        await googleSignConfigSetup(onCurrentUserChanged: onGetData);

    await _googleSignIn.disconnect();
  }
}

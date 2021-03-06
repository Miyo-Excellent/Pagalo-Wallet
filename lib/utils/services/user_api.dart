import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:pagalo_wallet/constants/api_path.dart';
import 'package:pagalo_wallet/constants/app_constants.dart';
import 'package:pagalo_wallet/core/models/user_model.dart';

class UserApi {
  static final UserApi _ = new UserApi._internal();

  factory UserApi() => _;

  UserApi._internal();

  final ApiPath _apiPath = ApiPath();

  final AppConstants _constants = AppConstants();

  Future getUserData({@required String token}) async {
    if (token.isNotEmpty) {
      final Map<String, dynamic> authDataMap = {'idToken': token};

      final dynamic uri = "${_apiPath.getUser}?key=${_constants.firebaseToke}";

      final response = await http.post(uri, body: json.encode(authDataMap));

      final Map<String, dynamic> decodeResponse =
          await json.decode(response.body);

      if (decodeResponse.containsKey('users')) {
        final Map<String, dynamic> user = decodeResponse['users'][0];

        if (user.isNotEmpty) {
          return {
            'ok': true,
            'user': UserModel.fromMap(user),
          };
        }
      }

      if (decodeResponse.containsKey('error'))
        return {
          'ok': false,
          'error': decodeResponse['error']['message'],
        };

      return null;
    }

    return null;
  }

  Future sigIn({
    @required String email,
    @required String password,
  }) async {
    final Map<String, dynamic> authDataMap = {
      'email': email,
      'password': password,
      'returnSecureToken': true,
    };

    final dynamic uri =
        "${_apiPath.signInWithPassword}?key=${_constants.firebaseToke}";

    final response = await http.post(uri, body: json.encode(authDataMap));

    final Map<String, dynamic> decodeResponse =
        await json.decode(response.body);

    if (decodeResponse.containsKey('idToken')) {
      return {
        'ok': true,
        'token': decodeResponse['idToken'],
      };
    }

    if (decodeResponse.containsKey('error'))
      return {
        'ok': false,
        'error': decodeResponse['error']['message'],
      };

    return null;
  }

  Future signUp({
    @required String email,
    @required String password,
  }) async {
    final Map<String, dynamic> authDataMap = {
      'email': email,
      'password': password,
      'returnSecureToken': true,
    };

    final dynamic uri = "${_apiPath.signUp}?key=${_constants.firebaseToke}";

    final response = await http.post(uri, body: json.encode(authDataMap));

    final Map<String, dynamic> decodeResponse =
        await json.decode(response.body);

    if (decodeResponse.containsKey('idToken')) {
      return {
        'ok': true,
        'token': decodeResponse['idToken'],
      };
    }

    if (decodeResponse.containsKey('error'))
      return {
        'ok': false,
        'error': decodeResponse['error']['message'],
      };

    return null;
  }
}

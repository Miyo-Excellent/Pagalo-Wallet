part of 'verify_bloc.dart';

class VerifyState {
  final bool _isAuth;
  final UserModel _user;

  VerifyState({UserModel user})
      : _user = user ?? null,
        _isAuth = user is UserModel;

  bool get isAuth => _isAuth;

  UserModel get user => _user;
}

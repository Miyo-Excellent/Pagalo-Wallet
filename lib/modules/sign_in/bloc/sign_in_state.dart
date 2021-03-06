part of 'sign_in_bloc.dart';

class SignInState {
  final bool _isAuth;
  final UserModel _user;

  SignInState({UserModel user})
      : _user = user ?? null,
        _isAuth = user is UserModel;
}

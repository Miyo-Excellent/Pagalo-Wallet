part of 'sign_in_bloc.dart';

@immutable
abstract class SignInEvent {}

class EnableUser extends SignInEvent {
  final UserModel user;

  EnableUser(this.user);
}
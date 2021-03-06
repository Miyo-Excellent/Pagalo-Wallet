part of 'verify_bloc.dart';

@immutable
abstract class VerifyEvent {}

class ChangeVerify extends VerifyEvent {
  bool isVerify = false;

  void onChange(bool state) => isVerify = state;
}
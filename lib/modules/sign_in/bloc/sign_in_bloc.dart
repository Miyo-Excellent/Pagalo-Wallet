import 'package:meta/meta.dart';

import 'package:bloc/bloc.dart';
import 'package:pagalo_wallet/core/models/user_model.dart';

part 'sign_in_event.dart';

part 'sign_in_state.dart';

class SingInBloc extends Bloc<SignInEvent, SignInState> {
  SingInBloc(SignInState initialState) : super(initialState);

  @override
  Stream<SignInState> mapEventToState(SignInEvent event) {
    print("Hello World");
  }
}

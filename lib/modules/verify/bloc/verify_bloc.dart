import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pagalo_wallet/core/models/user_model.dart';

part 'verify_event.dart';

part 'verify_state.dart';

class VerifyBloc extends Bloc<VerifyEvent, VerifyState> {
  VerifyBloc() : super(VerifyState());

  @override
  Stream<VerifyState> mapEventToState(VerifyEvent event) {
    print("Hello World");
  }
}

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

part 'navigation_event.dart';

part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc({
    @required dynamic event,
    @required Page<dynamic> defaultRoute,
  }) : super(NavigationState(event: event, defaultRoute: defaultRoute));

  @override
  Stream<NavigationState> mapEventToState(NavigationEvent event) async* {
    yield NavigationState(event: event);
  }
}

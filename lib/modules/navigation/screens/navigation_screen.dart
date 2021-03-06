import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pagalo_wallet/modules/navigation/bloc/navigation_bloc.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        if (state.pages.isEmpty) return Container();

        return Navigator(
          pages: state.pages,
          onPopPage: (route, result) {
            final bool isOk = route.didPop(result);

            if (!isOk) return false;

            return true;
          },
        );
      },
    );
  }
}

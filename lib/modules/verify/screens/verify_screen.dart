import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pagalo_wallet/core/models/user_model.dart';
import 'package:pagalo_wallet/modules/dashboard/screens/dashboard_screen.dart';
import 'package:pagalo_wallet/modules/navigation/bloc/navigation_bloc.dart';
import 'package:pagalo_wallet/modules/sign_in/screens/sign_in_screen.dart';
import 'package:pagalo_wallet/modules/verify/bloc/verify_bloc.dart';

class VerifyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final navigationEvent = BlocProvider.of<NavigationBloc>(context).add;

    return BlocBuilder<VerifyBloc, VerifyState>(
      builder: (_, state) {
        Future.delayed(Duration(seconds: 2)).then((value) {
          if (state.user is UserModel) {
            navigationEvent(
              ReplaceAllByRoutes(page: DashboardScreen(), name: 'dashboard'),
            );
          } else {
            navigationEvent(
              ReplaceAllByRoutes(page: SignInScreen(), name: 'sign-in'),
            );
          }
        });

        return Scaffold(
          body: Container(
            width: size.width,
            height: size.height,
            color: Color.fromRGBO(25, 22, 30, 1.0),
            child: Image.asset("assets/images/logo.gif"),
          ),
        );
      },
    );
  }
}

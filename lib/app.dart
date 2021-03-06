import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pagalo_wallet/modules/navigation/bloc/navigation_bloc.dart';
import 'package:pagalo_wallet/modules/navigation/screens/navigation_screen.dart';
import 'package:pagalo_wallet/modules/verify/bloc/verify_bloc.dart';
import 'package:pagalo_wallet/modules/verify/screens/verify_screen.dart';

class PagaloWalletApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => VerifyBloc()),
        BlocProvider(
          create: (_) => NavigationBloc(
            defaultRoute: MaterialPage(
              key: ValueKey('verify'),
              child: VerifyScreen(),
            ),
          ),
        ),
        // BlocProvider(create: (_) => DashboardBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pagalo Wallet',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: NavigationScreen(),
      ),
    );
  }
}

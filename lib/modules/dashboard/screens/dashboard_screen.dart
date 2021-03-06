import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class DashboardScreen extends StatelessWidget {
  final RandomColor _randomColor = RandomColor();
  final double _avatarSize = 60.0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          overflow: Overflow.clip,
          children: [
            Container(
              // color: Colors.red,
              padding: EdgeInsets.only(top: _avatarSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      renderActionButton(
                        color: Colors.white,
                        size: size,
                        icon: Icons.qr_code_scanner_outlined,
                        text: 'Transfer',
                        // onTap: state.showTransferDialog,
                        onTap: () {},
                      ),
                      renderActionButton(
                        color: Colors.white,
                        size: size,
                        icon: Icons.qr_code_outlined,
                        text: 'Receive',
                        // onTap: state.generateQrCode,
                        onTap: () {},
                      ),
                      renderActionButton(
                        color: Colors.white,
                        size: size,
                        icon: Icons.list_alt_outlined,
                        text: 'History',
                        // onTap: state.showHistoryDialog,
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            renderBlackBox(size),
            renderWhiteBox(size),
            renderAppBar(size),
            _renderFloatUserButton(size: 60.0),
          ],
        ),
      ),
    );
  }

  Widget renderActionButton({
    @required Size size,
    @required String text,
    @required Color color,
    @required IconData icon,
    @required Function onTap,
  }) =>
      InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10.0),
        splashColor: color.withOpacity(0.7),
        child: Container(
          padding: EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: _avatarSize,
                color: color,
              ),
              SizedBox(height: 10.0),
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );

  Widget renderWhiteBox(Size size) => Positioned(
        top: size.width * -0.2,
        right: size.width * -0.1,
        child: Transform.rotate(
          angle: -pi / 3.0,
          child: Container(
            width: size.width * 0.7,
            height: size.width * 0.7,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(size.width * 0.1),
            ),
          ),
        ),
      );

  Widget renderBlackBox(Size size) => Positioned(
        top: size.width * -0.18,
        right: size.width * -0.15,
        child: Transform.rotate(
          angle: -pi / -2.8,
          child: Container(
            width: size.width * 0.75,
            height: size.width * 0.75,
            decoration: BoxDecoration(
              color: Color.fromRGBO(50, 50, 50, 1.0),
              borderRadius: BorderRadius.circular(size.width * 0.1),
            ),
          ),
        ),
      );

  Widget renderAppBar(Size size) => Positioned(
        top: 0,
        right: 0,
        child: Container(
          width: size.width * 0.60,
          height: size.width * 0.45,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: size.width * 0.08, right: size.width * 0.08),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Disponible',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color.fromRGBO(50, 50, 50, 1.0),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.0),
                    Row(
                      children: [
                        Text(
                          "\$",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 26.0,
                            color: Color.fromRGBO(50, 50, 50, 1.0),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          '-',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color.fromRGBO(50, 50, 50, 1.0),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Total',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color.fromRGBO(75, 75, 75, 1.0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Row(
                      children: [
                        Text(
                          "\$",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color.fromRGBO(75, 75, 75, 1.0),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          '-',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget _renderFloatUserButton({@required double size}) => Positioned(
        bottom: 25.0,
        right: 25.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  // state.userData.displayName ?? '',
                  '',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  // state.userData.email ?? '',
                  '',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            SizedBox(width: 5.0),
            InkWell(
              onTap: () {},
              splashColor: Colors.red,
              borderRadius: BorderRadius.circular(_avatarSize / 2),
              child: Container(
                width: size,
                height: size,
                padding: EdgeInsets.all(5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(_avatarSize / 2),
                  child: FadeInImage(
                    image: NetworkImage(
                      // state.userData.photoUrl ?? 'assets/graphics/joel_signature.gif',
                      'assets/images/graphics/joel_signature.gif',
                    ),
                    placeholder: AssetImage('assets/graphics/woman_3.gif'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  static final String title = 'Enterprise team collaboration.';

  static final String description =
      'Bring together your files, your tools, projects and people. Including a new mobile and desktop application.';

  static final String footerDescription = "Don't have an account?. ";

  static final String footerDescriptionActionText = "Sign Up";

  static final String footerLoginButtonText = "Sing In";

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            renderBody(size: size),
            SizedBox(height: 50.0),
            renderFooter(size: size),
          ],
        ),
      ),
    );
  }

  Widget renderBody({@required Size size}) => Column(
        children: [
          renderBanner(size: size),
          SizedBox(height: 10.0),
          renderTitle(),
          SizedBox(height: 10.0),
          renderDescription(),
        ],
      );

  Widget renderTitle() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      );

  Widget renderDescription() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      );

  Widget renderBanner({@required Size size}) => Container(
        color: Colors.red,
        height: size.width,
        width: size.width,
        child: Image.asset(
          'assets/images/graphics/teamwork_11.gif',
          fit: BoxFit.cover,
        ),
      );

  Widget renderFooterDescription() => Text(
        footerDescription,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.black54,
          fontWeight: FontWeight.w500,
        ),
      );

  Widget renderFooterDescriptionActionText() => InkWell(
        splashColor: Colors.lightBlueAccent,
        child: MaterialButton(
          splashColor: Colors.lightBlueAccent,
          color: Colors.white,
          elevation: 0,
          // onPressed: state.goToRegister,
          onPressed: () {},
          child: Text(
            footerDescriptionActionText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );

  Widget renderFooterLoginButton({@required Size size}) => Container(
        width: size.width,
        height: 80.0,
        padding: EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          child: InkWell(
            splashColor: Colors.black,
            child: MaterialButton(
              splashColor: Colors.white70,
              color: Colors.black,
              elevation: 0,
              // onPressed: state.goToLogin,
              onPressed: () {},
              child: Text(
                footerLoginButtonText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      );

  Widget renderFooter({@required Size size}) => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              renderFooterDescription(),
              renderFooterDescriptionActionText(),
            ],
          ),
          renderFooterLoginButton(size: size),
        ],
      );
}

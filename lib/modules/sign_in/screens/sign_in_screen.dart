import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pagalo_wallet/modules/navigation/bloc/navigation_bloc.dart';
import 'package:pagalo_wallet/modules/sign_up/screens/sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  static final String title = "Let's sign you in.";

  static final String description = "Welcome back. You've been missed!";

  static final String footerDescription = "Don't have an account?.";

  static final String footerDescriptionActionText = "Sign Up";

  static final String footerLoginButtonText = "Sign in";

  static final String footerLoginWithGoogleButtonText = "Sign in with Google";

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 26.0,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              renderBody(size: size),
              SizedBox(height: 50.0),
              renderFooter(size: size, context: context),
            ],
          ),
        ));
  }

  Widget renderBody({@required Size size}) => Column(
        children: [
          SizedBox(height: 10.0),
          renderTitle(),
          SizedBox(height: 30.0),
          renderDescription(),
          SizedBox(height: 60.0),
          renderEmailInput(),
          SizedBox(height: 30.0),
          renderPasswordInput(),
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
                  fontSize: 30.0,
                  color: Colors.white,
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
                  fontSize: 22.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      );

  Widget renderFooterDescription() => Text(
        footerDescription,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      );

  Widget renderFooterDescriptionActionText({@required BuildContext context}) {
    final navigationEvent = BlocProvider.of<NavigationBloc>(context).add;

    return InkWell(
      splashColor: Colors.black54,
      child: MaterialButton(
        splashColor: Colors.black54,
        color: Colors.transparent,
        elevation: 0,
        onPressed: () => navigationEvent(
          ReplaceAllByRoutes(page: SignUpScreen(), name: "sign-up"),
        ),
        child: Text(
          footerDescriptionActionText,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget renderFooterButton({
    @required Size size,
    Color splashColor = Colors.black54,
    Color color = Colors.white,
    String text = '',
    TextStyle textStyle,
    double elevation = 0.0,
    double borderRadius = 20.0,
    EdgeInsets padding,
    double width,
    double height = 80.0,
    Widget child,
    Function onPressed,
  }) =>
      Container(
        width: width ?? size.width,
        height: height,
        padding: padding ??
            EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 20.0,
            ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          child: InkWell(
            splashColor: splashColor,
            child: MaterialButton(
              splashColor: splashColor,
              color: color,
              elevation: elevation,
              onPressed: onPressed ?? () {},
              child: child ??
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: textStyle ??
                        TextStyle(
                          fontSize: 24.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
            ),
          ),
        ),
      );

  Widget renderFooter({@required Size size, @required BuildContext context}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            renderFooterDescription(),
            renderFooterDescriptionActionText(context: context),
          ],
        ),
        renderFooterButton(
            size: size,
            text: footerLoginButtonText,
            // onPressed: state.sigIn,
            onPressed: () {}),
        renderFooterButton(
          size: size,
          text: footerLoginWithGoogleButtonText,
          // onPressed: state.sigInWithGoogle,
          onPressed: () {},
        ),
      ],
    );
  }

  Widget renderEmailInput() => Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Theme(
          data: ThemeData(
            primaryColor: Colors.white,
            hintColor: Colors.white,
          ),
          child: TextField(
            controller: _emailController,
            // onChanged: state.changeEmail,
            onChanged: (String text) {},
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
            cursorColor: Colors.white,
            cursorRadius: Radius.circular(1.0),
            cursorWidth: 2.0,
            maxLines: 1,
            decoration: InputDecoration(
              labelText: 'Email',
              // hintText: 'Email',
              hintStyle: TextStyle(color: Colors.white),
              contentPadding: const EdgeInsets.all(0),
              prefixIcon: Icon(
                Icons.alternate_email,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );

  Widget renderPasswordInput() => Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Theme(
          data: ThemeData(
            primaryColor: Colors.white,
            hintColor: Colors.white,
          ),
          child: TextField(
            controller: _passwordController,
            // onChanged: state.changePassword,
            onChanged: (String text) {},
            keyboardType: TextInputType.text,
            obscureText: true,
            textInputAction: TextInputAction.next,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
            cursorColor: Colors.white,
            cursorRadius: Radius.circular(1.0),
            cursorWidth: 2.0,
            maxLines: 1,
            decoration: InputDecoration(
              labelText: 'Password',
              // hintText: 'Password',
              hintStyle: TextStyle(color: Colors.white),
              contentPadding: const EdgeInsets.all(0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
}

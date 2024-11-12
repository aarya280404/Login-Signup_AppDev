import 'package:flutter/material.dart';
import 'package:pro1/screens/signin_screen.dart';
import 'package:pro1/screens/signup_screen.dart';
//import 'package:flutter/rendering.dartimport '../theme/theme.dart';
import '../theme/theme.dart';
import '../widgets/custom_scaffold.dart';
import '../widgets/welcome_buttons.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column( //using column widget by treating the text as two columns
        children: [
          Flexible(
            flex: 8,
              child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 40.0,
            ),

            child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Welcome Back!\n',
                          style: TextStyle(
                            fontSize: 45.0,
                            fontWeight: FontWeight.w600,
                          )),
                        TextSpan(
                          text:
                            '\nEnter Personal details to your Student account',
                          style: TextStyle(
                            fontSize: 20,
                            //height: 0,
                          ))
                      ]
                    )

                  )
            ),
          )),

           Flexible(
            flex: 1,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  children: [
                    const Expanded(
                      child: WelcomeButton(
                        buttonText: 'Sign in',
                        onTap: SignInScreen(),
                        color: Colors.transparent,
                        textColor: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: WelcomeButton(
                        buttonText: 'Sign up',
                        onTap: const SignUpScreen(),
                        color: Colors.white,
                        textColor: lightColorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}
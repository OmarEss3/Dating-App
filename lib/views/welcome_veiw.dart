import 'package:dating_app/views/log_in_view.dart';
import 'package:dating_app/views/sign_in_view.dart';
import 'package:dating_app/widgets/custom_welcom_button.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dating App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to Dating App',
              style: TextStyle(fontSize: 80, fontFamily: 'Handlee'),
            ),
            const SizedBox(
              height: 40,
            ),
            CustomWelcomeButton(
              text: 'Sign In',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInView()),
                );
              },
            ),
            const SizedBox(
              height: 30,
            ),
            CustomWelcomeButton(
              text: 'Log In',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LogInView()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

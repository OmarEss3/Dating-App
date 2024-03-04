import 'package:dating_app/views/app_view.dart';
import 'package:dating_app/widgets/custom_welcom_button.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';

class SignInView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomTextField(
                hint: 'Enter your username',
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                hint: 'Enter your password',
              ),
              const SizedBox(height: 20),
              CustomWelcomeButton(
                text: 'Sign In',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => appView()),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

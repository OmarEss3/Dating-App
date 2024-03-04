import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Omar Essam')),
      body: Center(
        child: Column(
          children: [
            SizedBox(
                height: 300,
                child: Image.asset('assets/images/user_image.png')),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Orgnization Club',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}

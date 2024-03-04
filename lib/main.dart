import 'package:dating_app/views/welcome_veiw.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:
            Colors.pink[100], // Set the background color here
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black), // Set the text color here
          bodyMedium: TextStyle(color: Colors.black), // Set the text color here
          // You can add more styles for different text types if needed
        ),
      ),
      home: WelcomeView(),
    );
  }
}

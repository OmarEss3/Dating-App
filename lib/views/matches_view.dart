import 'package:dating_app/services/get_users.dart';
import 'package:flutter/material.dart';
import '../widgets/user_widget.dart';

class MatchesView extends StatelessWidget {
  MatchesView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Matches'),
      ),
      body: ListView.builder(
        itemCount: usersList.length,
        itemBuilder: (context, index) {
          return UserWidget(user: usersList[index]);
        },
      ),
    );
  }
}

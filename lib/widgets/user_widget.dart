import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../views/user_profle_view.dart';

class UserWidget extends StatelessWidget {
  final UserModel user;

  UserWidget({required this.user});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserProfileView(user: user),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(user.img),
                ),
                SizedBox(width: 10),
                Text(
                  user.name,
                  style: TextStyle(fontSize: 24.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

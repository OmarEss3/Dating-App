import 'package:flutter/material.dart';
import '../widgets/user_widget.dart';
import '../models/user_model.dart';

class SearchView extends StatefulWidget {
  final List<UserModel> usersList; // Define usersList as a parameter

  SearchView({Key? key, required this.usersList}) : super(key: key);

  @override
  _SearchViewState createState() => _SearchViewState(usersList: usersList);
}

class _SearchViewState extends State<SearchView> {
  List<UserModel> filteredUsersList = [];
  List<UserModel> usersList;

  _SearchViewState({required this.usersList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged: (text) {
                setState(() {
                  filteredUsersList = usersList
                      .where((user) => user.name
                          .toLowerCase()
                          .startsWith(text.toLowerCase()))
                      .toList();
                });
              },
              decoration: const InputDecoration(
                hintText: 'Search by user\'s name...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                    itemCount: filteredUsersList.length,
                    itemBuilder: (context, index) {
                      return UserWidget(user: filteredUsersList[index]);
                    },
                  )
               
               
          ),
        ],
      ),
    );
  }
}

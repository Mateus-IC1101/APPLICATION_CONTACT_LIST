import 'package:contanto/components/user_tile.dart';
import 'package:contanto/data/users_data.dart';
import 'package:contanto/views/user_create.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    final usersData = Provider.of<UsersData>(context);
    final users = usersData.Users;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 237, 237),
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.clear),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) =>
                    UserTile(user: users.elementAt(index)),
                itemCount: users.length),
          ),
        ],
      ),
    );
  }
}

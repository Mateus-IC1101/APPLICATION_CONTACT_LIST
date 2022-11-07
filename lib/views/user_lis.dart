import 'package:app_loja/components/user_tile.dart';
import 'package:app_loja/data/dumpy_users.dart';
import 'package:app_loja/views/bottom.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    final users = DUMPY_USERS;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 32, 137, 42),
          title: Text('Cadastro de Usuários'),
        ),
        body: ListView.builder(
            itemCount: users.length,
            itemBuilder: (ctx, i) => UserTile(users.values.elementAt(i))),
        bottomNavigationBar: BottomGlobal());
  }
}

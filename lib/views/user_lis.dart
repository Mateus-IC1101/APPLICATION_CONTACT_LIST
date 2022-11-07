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
  int current_index = 0;
  final users = DUMPY_USERS;
  @override
  Widget build(BuildContext context) {
    final screens = [
      ListView.builder(
          itemCount: users.length,
          itemBuilder: (ctx, i) => UserTile(users.values.elementAt(i))),
      Center(
        child: Container(
          color: Colors.green,
        ),
      ),
      Center(
        child: Container(
          color: Colors.red,
        ),
      ),
    ];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 32, 137, 42),
          title: Text('Cadastro de Usuários'),
        ),
        body: screens[current_index],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              current_index = index;
            });
          },
          type: BottomNavigationBarType.shifting,
          currentIndex: current_index,
          unselectedItemColor: Colors.grey[350],
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Listar',
                backgroundColor: Colors.blue[300]),
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Cadastrar',
                backgroundColor: Colors.green[300]),
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Extras',
                backgroundColor: Colors.deepOrange[300])
          ],
        ));
  }
}

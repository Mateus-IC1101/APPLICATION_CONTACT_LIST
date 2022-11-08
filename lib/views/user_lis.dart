import 'package:app_loja/components/user_tile.dart';
import 'package:app_loja/data/dumpy_users.dart';
import 'package:app_loja/views/user_create.dart';
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
  @override
  Widget build(BuildContext context) {
    final users = DUMPY_USERS;
    final screens = [
      ListView.builder(
          itemBuilder: (context, index) => UserTile(users.elementAt(index)),
          // separatorBuilder: (BuildContext context, int index) => const Divider(
          //       color: Colors.white,
          //     ),
          itemCount: users.length),
      UserCreate(),
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
              print('index--------');
              print(index);
              print('current--------');
              print(current_index);
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
                icon: Icon(Icons.add),
                label: 'Cadastrar',
                backgroundColor: Colors.green[300]),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Extras',
                backgroundColor: Colors.deepOrange[300])
          ],
        ));
  }
}

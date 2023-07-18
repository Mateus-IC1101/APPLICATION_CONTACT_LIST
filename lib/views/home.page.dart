import 'package:contanto/components/user_tile.dart';
import 'package:contanto/views/user_create.dart';
import 'package:contanto/views/user_lis.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int current_index = 0;

  final screens = [
    UserList(),
    UserCreate(),
    Center(
      child: Container(
        color: Colors.red,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              backgroundColor: Colors.blue[300],
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Cadastrar',
              backgroundColor: Colors.green[300],
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Extras',
              backgroundColor: Colors.deepOrange[300],
            ),
          ],
        ));
  }
}

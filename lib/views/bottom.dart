import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomGlobal extends StatefulWidget {
  const BottomGlobal({Key? key}) : super(key: key);

  @override
  State<BottomGlobal> createState() => _BottomGlobalState();
}

class _BottomGlobalState extends State<BottomGlobal> {
  @override
  int current_index = 0;
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
        onTap: (index) {
          setState(() {
            current_index = index;
          });
        });
  }
}

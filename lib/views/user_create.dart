import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserCreate extends StatefulWidget {
  UserCreate({Key? key}) : super(key: key);

  @override
  State<UserCreate> createState() => _UserCreateState();
}

class _UserCreateState extends State<UserCreate> {
  @override
  TextFormField input_nome = TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        icon: Icon(Icons.person),
        hintText: 'Nome',
        labelText: 'Nome',
      ));

  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 5),
        child: Column(
          children: [input_nome],
        ));
  }
}

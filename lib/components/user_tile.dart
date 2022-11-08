import 'dart:convert';

import 'package:app_loja/models/user.dart';
import 'package:flutter/material.dart';

class UserTile extends StatefulWidget {
  UserTile(this.user);
  final User user;
  static List<int> selecionados = [];

  @override
  State<UserTile> createState() => _UserTileState();
}

class _UserTileState extends State<UserTile> {
  @override
  Widget build(BuildContext context) {
    var item_selecionado = int.parse(widget.user.id.toString());

    final avatar = widget.user.url_avatar == null ||
            widget.user.url_avatar.isEmpty
        ? CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(widget.user.url_avatar));
    final name = Text('${widget.user.name}');

    final id = Text('# ${widget.user.id.toString()}');

    final numero = Text('${widget.user.numero}');

    return ListTile(
      selected: UserTile.selecionados.contains(item_selecionado) ? true : false,
      selectedTileColor: Color.fromARGB(82, 33, 243, 142),
      onLongPress: () {
        setState(() {
          UserTile.selecionados.contains(item_selecionado)
              ? UserTile.selecionados.remove(item_selecionado)
              : UserTile.selecionados.add(item_selecionado);
          print(item_selecionado);
          print(UserTile.selecionados);
        });
      },
      leading: avatar,
      title: name,
      subtitle: numero,
      trailing: TextButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(
              Color.fromARGB(255, 32, 137, 42)),
        ),
        onPressed: () {},
        child: Icon(Icons.storage_rounded),
      ),
      onTap: () => {},
      enabled: true,
    );
  }
}

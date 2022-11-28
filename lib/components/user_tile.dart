import 'dart:convert';

import 'package:app_loja/models/user.dart';
import 'package:flutter/material.dart';

class UserTile extends StatefulWidget {
  UserTile(this.user);
  final User user;

  @override
  State<UserTile> createState() => _UserTileState();
}

class _UserTileState extends State<UserTile> {
  List<int> selecionados = [];
  @override
  Widget build(BuildContext context) {
    var item_selecionado = int.parse(widget.user.id.toString());

    var avatar = widget.user.url_avatar == null ||
            widget.user.url_avatar.isEmpty
        ? CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(widget.user.url_avatar));
    final name = Text('${widget.user.name}');

    final id = Text('# ${widget.user.id.toString()}');

    final numero = Text('${widget.user.numero}');

    return ListTile(
      selected: selecionados.contains(item_selecionado) ? true : false,
      selectedTileColor: Color.fromARGB(82, 89, 199, 79),
      onLongPress: () {
        setState(() {
          selecionados.contains(item_selecionado)
              ? selecionados.remove(item_selecionado)
              : selecionados.add(item_selecionado);
        });
      },
      leading: selecionados.contains(item_selecionado)
          ? CircleAvatar(
              child: Icon(
                Icons.check,
                color: Colors.white,
              ),
              backgroundColor: Color.fromARGB(255, 51, 163, 54))
          : avatar,
      title: name,
      subtitle: numero,
      trailing: TextButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(
              Color.fromARGB(174, 215, 197, 6)),
        ),
        onPressed: () {},
        child: Icon(Icons.star),
      ),
      onTap: () => {},
      enabled: true,
    );
  }
}

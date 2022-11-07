import 'package:app_loja/models/user.dart';
import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  final User user;
  const UserTile(this.user);

  void _tapCallback() {
    splashColor:
    Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    final avatar = user.url_avatar == null || user.url_avatar.isEmpty
        ? CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(user.url_avatar));
    final name = Text('${user.name}');
    final id = Text('# ${user.id.toString()}');
    final numero = Text('${user.numero}');
    return ListTile(
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
      onTap: () => _tapCallback(),
      enabled: true,
    );
  }
}

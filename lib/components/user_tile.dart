import 'package:app_loja/models/user.dart';
import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  final User user;
  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    bool isSelected = false;
    final avatar = user.url_avatar == null || user.url_avatar.isEmpty
        ? CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(user.url_avatar));
    final name = Text('${user.name}');
    final id = Text('# ${user.id.toString()}');
    final numero = Text('${user.numero}');
    return Ink(
      color: isSelected == true ? Colors.blue : null,
      child: ListTile(
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
        onTap: () => {
          isSelected = !isSelected,
          print(isSelected),
        },
        enabled: true,
      ),
    );
  }
}

import 'package:contanto/models/user.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UsersData extends ChangeNotifier {
  List<User> _users = [
    const User(
      id: 1,
      nome: 'Ramon',
      numero: '(86) 99522-0175',
      favorito: '',
      email: '',
      url_avatar:
          'https://e7.pngegg.com/pngimages/799/987/png-clipart-computer-icons-avatar-icon-design-avatar-heroes-computer-wallpaper-thumbnail.png',
    ),
    const User(
        id: 2,
        nome: 'Bruna',
        numero: '(86) 9877-5541',
        favorito: '',
        email: '',
        url_avatar: ""),
    const User(
        id: 3,
        nome: 'Caique',
        numero: '(86) 98822-0175',
        favorito: '',
        email: '',
        url_avatar:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvgrGLamCbgFsBx98useiHyieLCyoVc81vcWU6XVo&s'),
    const User(
        id: 4,
        nome: 'Bianca',
        numero: '(86) 96622-0011',
        favorito: '',
        email: '',
        url_avatar: "")
  ];

  List<User> get Users => _users;

  void addUser(
      {required nome,
      required String numero,
      required String favorito,
      required String email,
      required String url_avatar}) {
    _users.add(User(
        id: _users.length + 1,
        nome: nome,
        numero: numero,
        favorito: favorito,
        email: email,
        url_avatar: url_avatar));
    notifyListeners();
  }

  void removeUser(int id) {
    int index = _users.indexWhere((user) => user.id == id);
    if (index != -1) {
      _users.removeAt(index);
      notifyListeners();
    }
  }
}

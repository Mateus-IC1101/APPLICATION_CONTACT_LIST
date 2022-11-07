import 'package:flutter/material.dart';

class User {
  final int? id;
  final String name;
  final String numero;
  final String url_avatar;

  const User({
    required this.id,
    required this.name,
    required this.numero,
    required this.url_avatar,
  });
}

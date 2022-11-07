import 'package:flutter/material.dart';

class User {
  final int? id;
  final String name;
  final String email;
  final String url_avatar;

  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.url_avatar,
  });
}

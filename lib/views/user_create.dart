import 'package:contanto/data/users_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserCreate extends StatefulWidget {
  @override
  _UserCreateState createState() => _UserCreateState();
}

class _UserCreateState extends State<UserCreate> {
  late UsersData usersData;
  final _formKey = GlobalKey<FormState>();
  int? _id;
  String? _nome;
  String? _numero;
  String? _urlAvatar;

  @override
  void initState() {
    super.initState();
    usersData = context.read<UsersData>();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      print('ID: $_id');
      print('Name: $_nome');
      print('Número: $_numero');
      print('URL Avatar: $_urlAvatar');
      usersData.addUser(
          nome: 'name',
          numero: 'ss',
          favorito: '',
          email: '',
          url_avatar: 'url_avatar');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                initialValue: _nome,
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _nome = value!;
                },
              ),
              TextFormField(
                initialValue: _numero,
                decoration: InputDecoration(labelText: 'Número'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a number';
                  }
                  return null;
                },
                onSaved: (value) {
                  _numero = value!;
                },
              ),
              TextFormField(
                initialValue: _urlAvatar,
                decoration: InputDecoration(labelText: 'URL Avatar'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter an avatar URL';
                  }
                  return null;
                },
                onSaved: (value) {
                  _urlAvatar = value!;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: UserCreate(),
  ));
}

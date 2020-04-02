import 'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  @override
  _TextFormState createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  final _formKey = GlobalKey<FormState>();
  String _userName = "";
  String _email = "";

  String nameValidator(String value) {
    if (value.isEmpty) {
      return 'Name is required';
    }
    return null;
  }

  String emailValidator(String input) {
    final RegExp regex = new RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
    if (!regex.hasMatch(input)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidate: true,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              onChanged: (name) => setState(() {
                _userName = name;
              }),
              decoration: const InputDecoration(
                icon: const Icon(Icons.person),
                hintText: 'Enter your name',
              ),
              validator: (value) => nameValidator(value),
            ),
            TextFormField(
              onChanged: (email) => setState(() {
                _email = email;
              }),
              decoration: const InputDecoration(
                icon: const Icon(Icons.email),
                hintText: 'Enter your email',
              ),
              validator: (value) => emailValidator(value),
            ),
            Container(
                padding: const EdgeInsets.only(left: 40.0, top: 20.0),
                child: RaisedButton(
                  child: const Text('Submit'),
                  onPressed: null,
                )),
          ]),
    );
  }
}

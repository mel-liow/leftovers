import 'package:flutter/material.dart';
import 'package:leftovers_app/themes/theme.dart';

class ButtonWidget extends StatelessWidget {
  final Function handleClick;
  final String buttonText;
  ButtonWidget({Key key, @required this.handleClick, this.buttonText});

  @override
  Widget build(BuildContext context) {
    return (RaisedButton(
        onPressed: () => handleClick(), child: Text(buttonText)));
  }
}

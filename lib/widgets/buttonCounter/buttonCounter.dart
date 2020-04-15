import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class ButtonCounter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ButtonCounterState();
  }
}

class _ButtonCounterState extends State<ButtonCounter> {
  int _count = 0;

  void add() {
    setState(() {
      _count++;
    });
  }

  void minus() {
    setState(() {
      if (_count != 0) _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        FloatingActionButton(
          onPressed: minus,
          child: new Icon(
            Icons.remove,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
        Text('$_count', style: TextStyle(fontSize: 30.0)),
        FloatingActionButton(
          onPressed: add,
          child: new Icon(
            Icons.add,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:leftovers_app/themes/theme.dart';

class ButtonCounter extends StatefulWidget {
  final Function handleSubmit;
  final int maxConstraint;

  ButtonCounter(this.handleSubmit, this.maxConstraint);

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
      children: <Widget>[
        FloatingActionButton(
          heroTag: "btn_minus",
          onPressed: minus,
          child: new Icon(
            Icons.remove,
            color: Colors.black,
          ),
          backgroundColor: CompanyColors.beige[50],
        ),
        Padding(
            padding: EdgeInsets.only(left: 18, right: 18),
            child: Text('$_count', style: TextStyle(fontSize: 30.0))),
        FloatingActionButton(
          heroTag: "btn_add",
          onPressed: add,
          child: new Icon(
            Icons.add,
            color: Colors.black,
          ),
          backgroundColor: CompanyColors.beige[50],
        ),
      ],
    );
  }
}

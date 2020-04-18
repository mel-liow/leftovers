import 'package:flutter/material.dart';
import 'package:leftovers_app/themes/theme.dart';

class ButtonCounter extends StatelessWidget {
  final Function countIncrementer;
  final Function countDecrementer;
  final int count;
  ButtonCounter(
      {Key key,
      @required this.countIncrementer,
      this.countDecrementer,
      this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        FloatingActionButton(
          heroTag: "btn_minus",
          onPressed: () => countDecrementer(),
          child: new Icon(
            Icons.remove,
            color: Colors.black,
          ),
          backgroundColor: CompanyColors.beige[50],
        ),
        Padding(
            padding: EdgeInsets.only(left: 18, right: 18),
            child: Text('$count', style: TextStyle(fontSize: 30.0))),
        FloatingActionButton(
          heroTag: "btn_add",
          onPressed: () => countIncrementer(),
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

import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({this.color, this.btnText, @required this.onPressed});

  final Color color;
  final String btnText;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(50.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 60.0,
          child: Text(
            btnText,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
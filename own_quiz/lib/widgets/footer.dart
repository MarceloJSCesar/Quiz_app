import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Marcelo Cesar',
          style: TextStyle(
            fontSize: 15,
            fontStyle: FontStyle.italic
          ),
        textAlign: TextAlign.center,
        ),
        Text(
          'Practicing Reasoning Logical',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 17,
            fontStyle: FontStyle.italic
          ),
        textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class NextQuote extends StatelessWidget {
  final Function selectHandler;
  final MaterialColor colorHandler;

  NextQuote(this.selectHandler, this.colorHandler);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        'Next Quote!',
        style: TextStyle(
          color: colorHandler,
        ),
      ),
      onPressed: selectHandler,
    );
  }
}

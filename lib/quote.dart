import 'package:flutter/material.dart';

class Quote extends StatelessWidget {
  final String quoteText;
  final MaterialColor colorHandler;

  Quote(this.quoteText, this.colorHandler);

  @override
  Widget build(BuildContext context) {
    return Text(
      quoteText,
      style: TextStyle(
        color: colorHandler,
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

import './next_quote.dart';
import 'quote.dart';

void main() => runApp(MyQuotes());

class MyQuotes extends StatefulWidget {
  @override
  _MyQuotesState createState() => _MyQuotesState();
}

class _MyQuotesState extends State<MyQuotes> {
  final _quotes = const [
    '“All our dreams can come true, if we have the courage to pursue them.” – Walt Disney',
    '“The secret of getting ahead is getting started.” – Mark Twain',
    '“The best time to plant a tree was 20 years ago. The second best time is now.” – Chinese Proverb',
    '“Only the paranoid survive.” – Andy Grove',
    '“It’s hard to beat a person who never gives up.” – Babe Ruth',
    '“If people are doubting how far you can go, go so far that you can’t hear them anymore.” – Michele Ruiz',
  ];

  final _colors = const [
    Colors.cyan,
    Colors.blue,
    Colors.brown,
    Colors.green,
    Colors.orange,
    Colors.pink,
    Colors.purple,
    Colors.red,
    Colors.teal,
    Colors.yellow,
  ];

  Random _random = new Random();
  var _currentQuote = 0;
  var _currentColor = 0;

  void nextRandomColor() {
    _currentColor = _random.nextInt(10);
  }

  void nextQuoteText() {
    _currentQuote < _quotes.length - 1 ? _currentQuote++ : _currentQuote = 0;
  }

  void _nextQuote() {
    setState(() {
      nextQuoteText();
      nextRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'MyQuotes',
          ),
          backgroundColor: _colors[_currentColor],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Quote(
              _quotes[_currentQuote],
              _colors[_currentColor],
            ),
            NextQuote(
              _nextQuote,
              _colors[_currentColor],
            ),
          ],
        ),
      ),
    );
  }
}

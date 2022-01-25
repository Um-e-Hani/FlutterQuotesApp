import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;

  QuoteCard({required this.quote});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
      color: Colors.red[600],
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            color: Colors.red[200],
            child: Text(
              "${quote.text} - ${quote.author}",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 1.0,
          ),
        ],
      ),
    ); // Card
  }
}

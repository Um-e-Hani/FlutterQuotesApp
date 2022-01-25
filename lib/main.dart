import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: 'It is during our darkest moments that we must focus to see the light.', author: 'Aristotle'),
    Quote(text: 'Whoever is happy will make others happy too.', author: 'Anne Frank'),
    Quote(text: 'Always remember that you are absolutely unique. Just like everyone else.', author: 'Margaret Mead'),
    Quote(text: 'The future belongs to those who believe in the beauty of their dreams.', author: 'Eleanor Roosevelt'),
    Quote(text: 'You will face many defeats in life, but never let yourself be defeated.', author: 'Maya Angelou')
  ];

  Widget quoteTemplate(quote) {
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
    ); // Container
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        title: Text("Amazing Quotations"), // Text
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ), //AppBar
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(), //Map
      ), //Column
    ); // Scaffold
  }
}

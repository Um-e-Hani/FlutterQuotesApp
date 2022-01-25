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
    Quote(text: 'Always remember that you are absolutely unique. Just like everyone else.', author: 'Margaret Mead')
  ];

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
        children: quotes
            .map((quote) => Container(
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
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
                      color: Color.red[600],
                      height: 1.0,
                    ),
                  ],
                )))
            .toList(), //Map
      ), //Column
    ); // Scaffold
  }
}

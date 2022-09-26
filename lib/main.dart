import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'oscar wilde', text: 'everyone else is already taken'),
    Quote(author: 'oscar wilde', text: 'everyone else is already taken'),
    Quote(author: 'oscar wilde', text: 'everyone else is already takennnn')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
        // children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
        // children: quotes.map((quote) {
        //   return Text('${quote.text} - ${quote.author}');
        // }).toList(),
        // children: quotes.map((quote) => Text(quote)).toList(),
      ),
    );
  }
}

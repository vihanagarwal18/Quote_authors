import 'quote.dart';
import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: Quotelist(),
));

class Quotelist extends StatefulWidget {
  const Quotelist({Key? key}) : super(key: key);

  @override
  State<Quotelist> createState() => _QuotelistState();
}

class _QuotelistState extends State<Quotelist> {

  // ignore: non_constant_identifier_names
  List<Quote> three_quotes=[
    Quote(author: 'vihan agarwal',text: 'vihan the great'),
    Quote(author: 'vihan 2',text: 'his full name is vihan agarwal'),
    Quote(author: 'vihan 3',text: 'he is from jaipur')
  ];
  void delete(quote){
    setState(() {
      three_quotes.remove(quote);
    });
  }
  Widget quotetemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(quote.text,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.blueGrey,
            ),
            ),
            SizedBox(height: 7.0),
            Text(quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.blueGrey,
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                IconButton(onPressed: (){
                  delete(quote);
                }, icon: Icon(Icons.delete)),
                Text("delete button"),
              ],
            )
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: three_quotes.map((hello) => quotetemplate(hello)).toList(),
          // children: three_quotes.map((hello){return Text( '${hello.text} by ${hello.author}');}).toList(),   //three_quotes.map return a iterable so we need to convert it into the list
        )
    );
  }
}
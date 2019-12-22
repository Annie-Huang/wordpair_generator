import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    final wordPair = WordPair.random();

    return MaterialApp(
//        home: Text('Hello World', style:
//        TextStyle(
//          fontSize: 30.5,
//          color: Colors.green[400]
//        ))
        theme: ThemeData(primaryColor: Colors.purple[900]),
        home: RandomWords());
//        home: Scaffold(
//          appBar: AppBar(title: Text('WordPair Generator')),
//          body: Center (child: Text(wordPair.asPascalCase))
//        ));
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final _randomWordPairs = <WordPair>[];

  Widget _buildList() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, item) {
        if(item.isOdd) return Divider();
        
        final index = item ~/ 2;
        
        if(index >= _randomWordPairs.length) {
          _randomWordPairs.addAll(generateWordPairs().take(10));
        }

        return _buildRow(_randomWordPairs[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(title: Text('Hello'));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('WordPair Generator')),
        body: _buildList()
    );
  }
}

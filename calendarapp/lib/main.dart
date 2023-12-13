import 'dart:async';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'settings_screen.dart'; // SettingsScreen 클래스 import

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'English Word App',
      home: WordListScreen(),
    );
  }
}

class WordListScreen extends StatefulWidget {
  @override
  _WordListScreenState createState() => _WordListScreenState();
}

class _WordListScreenState extends State<WordListScreen> {
  List<WordPair> words = generateWordPairs().take(10).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Word List',
          style: TextStyle(
            fontWeight: FontWeight.bold,
    ),
        ),
        backgroundColor: Colors.blueGrey,

      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Text(
                'English Word App',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context); // Drawer를 닫음
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() {
            words = generateWordPairs().take(10).toList();
          });
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (int index = 0; index < words.length; index++)
                Card(
                  elevation: 2.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: ListTile(
                    title: Text(
                      words[index].asPascalCase,
                      style: TextStyle(fontSize: 18.0),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              WordDetailScreen(word: words[index]),
                        ),
                      );
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addWord,
        child: Icon(Icons.refresh),
      ),
    );
  }

  void _addWord() {
    setState(() {
      WordPair newWord = generateWordPairs().first;
      words.add(newWord);
    });
  }

  Future<void> _refreshWords() async {
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      words.shuffle();
    });
  }
}




class WordDetailScreen extends StatelessWidget {
  final WordPair word;

  WordDetailScreen({required this.word});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Word Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            word.asPascalCase,
            style: TextStyle(fontSize: 26),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HelloPage extends StatefulWidget{
  late String title;
  int count = 0;

  HelloPage({super.key, required String title}){
    this.title = title;
  }

  @override
  State<HelloPage> createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  String message = 'Hello World';
  //int count = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              style: const TextStyle(fontSize: 50),
            ),
            Text(
              '${widget.count}',
              style: const TextStyle(fontSize: 50),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ChangeCounter,
        child: const Icon(Icons.add),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  void ChangeCounter(){
    setState(() {
      widget.count++;
    });
  }

  // ignore: non_constant_identifier_names
  void ChangeMessage(){
    setState(() {
      message = "헬로 월드";
    });
  }
}
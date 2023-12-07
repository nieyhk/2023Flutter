import 'package:flutter/material.dart';

class StackTest extends StatefulWidget {
  const StackTest({super.key});

  @override
  State<StackTest> createState() => _StackTestState();
}

class _StackTestState extends State<StackTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview / ListTile'),
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(10.0),
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        crossAxisCount: 4,
        children: [
          ElevatedButton(
            onPressed: (){},
            child: const Text('1'),
          ),
          ElevatedButton(
            onPressed: (){},
            child: const Text('1'),
          ),
          ElevatedButton(
            onPressed: (){},
            child: const Text('1'),
          ),
          ElevatedButton(
            onPressed: (){},
            child: const Text('1'),
          ),
          ElevatedButton(
            onPressed: (){},
            child: const Text('1'),
          ),
          ElevatedButton(
            onPressed: (){},
            child: const Text('1'),
          ),
          ElevatedButton(
            onPressed: (){},
            child: const Text('1'),
          ),
          ElevatedButton(
            onPressed: (){},
            child: const Text('1'),
          ),
          ElevatedButton(
            onPressed: (){},
            child: const Text('1'),
          ),
          ElevatedButton(
            onPressed: (){},
            child: const Text('1'),
          ),
          ElevatedButton(
            onPressed: (){},
            child: const Text('1'),
          ),
          ElevatedButton(
            onPressed: (){},
            child: const Text('1'),
          ),
          ElevatedButton(
            onPressed: (){},
            child: const Text('1'),
          ),
          ElevatedButton(
            onPressed: (){},
            child: const Text('1'),
          ),
          ElevatedButton(
            onPressed: (){},
            child: const Text('1'),
          ),
          ElevatedButton(
            onPressed: (){},
            child: const Text('1'),
          ),
          ElevatedButton(
            onPressed: (){},
            child: const Text('1'),
          ),
          ElevatedButton(
            onPressed: (){},
            child: const Text('1'),
          ),
          ElevatedButton(
            onPressed: (){},
            child: const Text('1'),
          ),
          ElevatedButton(
            onPressed: (){},
            child: const Text('1'),
          ),
          ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyan,
            ),
            child: const Text(
              'Start',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
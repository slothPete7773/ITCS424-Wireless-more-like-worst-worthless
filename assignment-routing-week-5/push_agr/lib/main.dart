import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Route Push Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            // Pushing a route Direcly
            // TODO 1: Add code to route data to next page here
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    SecondPage(data: 'Hello there from the first page')));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  // TODO 2: Create 'data' as string here
  final String data;

  const SecondPage(
      {Key? key,
      // TODO 3: define data as string as argument of constructor HERE
      @required this.data = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Second Page',
            style: TextStyle(fontSize: 50),
          ),

          // TODO 4: Show data pass by First Page Here
          Text(data,
          style: TextStyle(fontSize: 20, color: Colors.amberAccent[400]))
        ],
      )),
    );
  }
}

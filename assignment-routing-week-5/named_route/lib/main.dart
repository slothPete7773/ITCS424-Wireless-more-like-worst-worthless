import 'package:flutter/material.dart';
import 'items.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Route Demo',
      //TODO 1:  Update Route Table HERE
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/second': (context) => SecondScreen(),
      },
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => new _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  var _textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First Screen")),
      body: Center(
          child: Column(children: [
        const SizedBox(
          height: 300,
          width: double.infinity,
          child: Image(
            image: AssetImage('assets/event2.jpg'),
          ),
        ),
        SizedBox(
          width: 100.0,
          child: TextField(
            controller: _textController, 
            decoration: const InputDecoration(
              border: OutlineInputBorder()
              ),
            )
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context, '/second', 
                arguments: {
                  'text': _textController.text
                  });
            },
            child: const Text("Hello Navigator")),
      ])),
    );
  }
}

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => new _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    // Map<String, dynamic> args = ModalRoute.of(context).settings.arguments;
    final args = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          // Text(args.title),
          // Text(args.amount.toString()),
          const Text('Below text come from previous input:'),
          Text(args['text']),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Go back"),
          )
        ],
      ))
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String passAttempt = '';
  String password = '1234';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _updatePass(String num){
    setState(() {
      passAttempt += num;
      if(passAttempt.length == password.length){
        if(passAttempt == password){
          print('password is correct');
        }
        else{
          print('password incorrect');
        }
        passAttempt = '';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100.0,
              height: 20.0,
              color: Colors.blue,
              child: Text(passAttempt),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {_updatePass('1');}, child: Text('1')),
                TextButton(onPressed: () {_updatePass('2');}, child: Text('2')),
                TextButton(onPressed: () {_updatePass('3');}, child: Text('3')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {_updatePass('4');}, child: Text('4')),
                TextButton(onPressed: () {_updatePass('5');}, child: Text('5')),
                TextButton(onPressed: () {_updatePass('6');}, child: Text('6')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {_updatePass('7');}, child: Text('7')),
                TextButton(onPressed: () {_updatePass('8');}, child: Text('8')),
                TextButton(onPressed: () {_updatePass('9');}, child: Text('9')),
              ],
            ),
            Text('this is a new text')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? _text = "最初";

  void _changeText(String? _str) {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _text = _str;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Row(
          children: [
            Icon(Icons.create),
            Text("初めてのFlutter")
            //Text(widget.title),
          ],
        )),
        drawer: Drawer(child: Center(child: 
        TextButton(
            onPressed: () => _changeText("消防車"),
            child: Icon(Icons.fire_truck),
          ),
        )
        ),
        body: Column(children: [
          Container(
            width: double.infinity,
            child: Text("Hello World!",
            textAlign: TextAlign.left,),
          ),
          Container(
            width:  double.infinity,
            decoration:  BoxDecoration(border:  Border.all(color: Colors.red, width: 8.0,),),
            child: 
            Text("$_text",
            textAlign: TextAlign.right),
          ),
            TextButton(
              onPressed: () => _changeText("更新"),
              child: Text("更新"),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () => _changeText("草すぎ"),
                child: Icon(
                  Icons.favorite,
                  color: Colors.orange,
                  size: 24.0,
                ),
              ),
              TextButton(
                onPressed: () => _changeText("鳥すぎ"),
                child: Icon(
                  Icons.soup_kitchen,
                  color: Colors.orange,
                  size: 24.0,
                ),
              )
            ],
          )
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _changeText("FloatingActionButton"),
          child: Icon(Icons.abc)),
        );
  }
}

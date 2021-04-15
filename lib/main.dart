import 'package:flutter/material.dart';
import 'package:tripss_app/review.dart';
import 'description_place.dart';
import 'review_list.dart';
import 'header_appbar.dart';

import 'gradient_back.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  String details =
      "Lorem ipsum dolor sit amet consectetur adipiscing elit auctor, sapien leo praesent etiam iaculis metus ut, consequat lacinia taciti ultrices at tellus integer. Nulla ad conubia donec senectus netus ultrices semper, \n\n etus malesuada ridiculus mollis varius himenaeos tellus, potenti habitasse natoque phasellus integer tristique etus malesuada ridiculus mollis varius himenaeos tellus, potenti habitasse natoque phasellus integer tristique.";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Scaffold(
          // body: new DescriptionPlace('Granada', 4, details),
          body: Stack(
            children: [
              ListView(
                children: [
                  DescriptionPlace('Granada', 4, details),
                  ReviewList()
                ],
              ),
              HeaderAppbar()
            ],
          ),
        ) //MyHomePage(title: 'Flutter Demo Home Page'),
        );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
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

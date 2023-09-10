import 'package:flutter/material.dart';

void main() {
  //runApp(const MyApp());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      home: HomeScreen(), title: 'Flutter 1',
    );
    // // TODO: implement build
    // throw UnimplementedError();
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 70.0,
          toolbarHeight: 100.0,
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Text('Home'),
          leading: Icon(Icons.add_business_sharp),
          actions: [Icon(Icons.search)],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                    text: 'This is mod 5 Assignment ',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'My ',
                    style: TextStyle(color: Colors.red, fontSize: 23)),
                TextSpan(
                    text: 'phone ',
                    style: TextStyle(color: Colors.cyan, fontSize: 17)),
                TextSpan(
                    text: 'name ',
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 19,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: 'Your phone name ',
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 27,
                        fontWeight: FontWeight.bold)),
              ]))
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var username = [
      "saleha", "biya", "manahil", "waseela"
    ];
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("ListView Example")),
          // body: ListView.builder(itemBuilder: (context, index) {
          //   return Text(username[index], style: TextStyle(fontSize: 30),);
          // },
          //   itemCount: username.length,
          //   itemExtent: 10,
          //
          // ),
          body: ListView.separated(itemBuilder: (context, index) {
            return Text(username[index], style: TextStyle(fontSize: 30),);

          },
          separatorBuilder: (context, index){
            return Divider(
              thickness: 10,
              color: Colors.amber,
            );
          }
        ),
        ),
        );
    }
}
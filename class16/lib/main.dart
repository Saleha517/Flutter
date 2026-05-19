import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
class _InsertState extends State<InsertData>{
    final userNameController =TextEditingController();
    final userAgeController =TextEditingController();
    final userSalaryController =TextEditingController();
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: Text('insert data'),
  ),
  body: Center(
  child: Padding(
  padding: EdgeInsets.all(8.0),
  child: Column(
  children: [
    const  SizedBox(
  height: 50,
  ),
  const Text(
  'Inserting data in firebase real time database',
  style: TextStyle(
  fontSize: 24,
  fontWeight: FontWeight .w500),
  textAlign: TextAlign.center,
  ),
  TextField(
  controller: userNameController,
  keyboardType: TextInputType.text,
  decoration: const InputDecoration(
  border: OutlineInputBorder(),
  ),
  ),
  ],
  ),
  ),
  ),
  );
  }
  }
}

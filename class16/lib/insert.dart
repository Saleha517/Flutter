import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class InsertData extends StatefulWidget{
  const InsertData({Key?key}):super(key: key);
  @override
  State<InsertData> createState() => _InsertDataState();
  }
  class _InsertDataState extends State<InsertData>{
    final userNameController =TextEditingController();
    final userAgeController =TextEditingController();
    final userSalaryController =TextEditingController();
    late DatabaseReference dbref;

    @override
  void initState() {

    super.initState();
    dbref = FirebaseDatabase.instance.ref().child)('Students');
    }
    @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
     title: Text('Inserting data'),
     ),
     body: Center(
       child:Padding(padding: EdgeInsets.all(8.0),
         child: Column(
           children: [
             const SizedBox(
               height: 50,
             ),
             const SizedBox(
               height: 30,
             ),
             TextField(
               controller: userNameController,
               keyboardType:TextInputType.text ,
               decoration: const InputDecoration(
                 border: OutlineInputBorder(),
                 labelText:'Name',
                 hintText: 'Enter Your Name',
               ),
             ),
             TextField(
               controller: userAgeController,
               keyboardType:TextInputType.text ,
               decoration: const InputDecoration(
                 border: OutlineInputBorder(),
                 labelText:'Age',
                 hintText: 'Enter Your Age',
               ),
             ),
             TextField(
               controller: userSalaryController,
               keyboardType:TextInputType.text ,
               decoration: const InputDecoration(
                 border: OutlineInputBorder(),
                 labelText:'Salary',
                 hintText: 'Enter Your Salary',
               ),
             ),
           ],
         ),
     ),
   ),
   );
  }
  }

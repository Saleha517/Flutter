import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FetchData extends StatefulWidget{
  const FetchData({Key? key}): super(key :key);
  @override
  State<FetchData> createState()=> _FetchDataState();
  class _FetchDataState extends State<FetchData>{
  final DatabaseReference dbref = FirebaseDatabase.instance.ref().child("Students");

  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
    body: FirebaseAnimatedList(query: dbref,
    itemBuilder: (context,snapshot,animation,index){
      final data = snapshot.value;
      return SizeTransition(sizeFactor: animation,child:Text(data.toString()),
  );
  }),
  );
  }
}
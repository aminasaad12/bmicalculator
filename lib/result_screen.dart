// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ResultScreen extends StatelessWidget {
final int age;
final bool ismale;
final int result;

  const ResultScreen({ Key? key,
    required this.age,
    required this.ismale,
    required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Result',
          style: TextStyle(
            fontStyle: FontStyle.italic,
          ),),
        backgroundColor: Colors.black87,

      ),
      body: Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
children: [
    Container(

      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Text('Gender:',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.pinkAccent,
          ),),
          Text('${ismale ? 'male' : 'female'}',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),),

        ],
      ),
    ),
    SizedBox(
        height: 22.0),
    Container(

    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Text('Result:',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.pinkAccent,
          ),),
        Text('$result',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),),

      ],
    ),
  ),
    SizedBox(
      height: 22.0),
    Container(

    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Text('Age:',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.pinkAccent,
          ),),
        Text('$age',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),),

      ],
    ),
  ),

],
        ),
      ),
    );
  }
}

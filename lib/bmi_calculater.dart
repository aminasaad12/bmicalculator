
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';
import 'dart:ui';

import 'package:bmicalculator/result_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
class BMI_Calculater extends StatefulWidget {

  @override
  _BMI_CalculaterState createState() => _BMI_CalculaterState();
}

class _BMI_CalculaterState extends State<BMI_Calculater> {
  
  bool ismale= true;
  double height=120.0;
  int weight=40;
  int age=20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATER',
          style: TextStyle(
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.black87,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.black87,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(17.0),
                      child: Row(
                        children: [
                         Expanded(
                           child: GestureDetector(
                             onTap: (){
                               setState(() {
                                 ismale=true;

                               });
                             },
                             child: Container(
                               decoration: BoxDecoration(
                                 borderRadius:BorderRadius.circular(9.0),
                                 color: ismale ? Colors.pinkAccent : Colors.white10,
                               ),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                   Image(image:AssetImage('assets/male-gender.png'),
                                   height: 80.0,
                                   width: 80.0,),
                                    SizedBox(
                                      height: 18,
                                    ),
                                    Text('male',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white54,
                                      ),
                                    ),
                                  ],
                               ),
                             ),
                           ),
                         ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  ismale=false;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(9.0),
                                  color: !ismale ?   Colors.pinkAccent : Colors.white10 ,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(image:AssetImage('assets/femenine.png',),

                                      height: 80.0,
                                      width: 80.0,),
                                    SizedBox(
                                      height: 18,
                                    ),
                                    Text('female',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white54,

                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 22.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius:  BorderRadius.circular(9.0),
                    color: Colors.white10,

                  ),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('HEIGHT',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white54
                      ),),
                      SizedBox(height: 10.0,),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text('${height.round()}',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),),
                            Text('cm',
                              style: TextStyle(
                                fontSize: 15.0,
                                  color: Colors.white54

                              ),
                              ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0,),
                     Slider(

                         value: height,
                         max: 220.0,
                         min: 80.0,
                       activeColor: Colors.pinkAccent,
                         onChanged:(value){
                           setState(() {
                             height=value;
                           });
                           //print(value.round());
                         }, ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.black87,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(9.0),
                                color: Colors.white10,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('WEIGHT',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white54,
                                    ),
                                  ),
                                  SizedBox(
                                    height:1,
                                  ),
                                  Text('${weight}',
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        FloatingActionButton(

                                          onPressed: (){
                                            setState(() {
                                              weight--;

                                            });

                                          },
                                          backgroundColor: Colors.pinkAccent,
                                          mini:true,
                                          child: Icon(
                                            Icons.remove,
                                          ),
                                          heroTag: weight--,
                                        ),
                                        FloatingActionButton(
                                          onPressed: (){
                                            setState(() {
                                              weight++;

                                            });
                                          },
                                          mini:true,
                                          backgroundColor: Colors.pinkAccent,
                                          child: Icon(
                                            Icons.add,
                                          ),
                                          heroTag: weight++,

                                        ),

                                        // CircleAvatar(
                                        //   backgroundColor: Colors.white,
                                        //   child: Text('-',style: TextStyle(
                                        //     fontSize: 30.0,
                                        //   ),),
                                        // ),
                                        // SizedBox(
                                        //   width: 8.0,
                                        // ),
                                        // CircleAvatar(
                                        //   backgroundColor: Colors.white,
                                        //   child: Text('+',style: TextStyle(
                                        //     fontSize: 30.0,
                                        //   ),),
                                        // ),
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(9.0),
                                color: Colors.white10,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('AGE',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white54,
                                    ),
                                  ),
                                  SizedBox(
                                    height:1,
                                  ),
                                  Text('${age}',
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        FloatingActionButton(
                                          onPressed: (){
                                            setState(() {
                                              age--;

                                            });
                                          },
                                          mini:true,
                                          backgroundColor: Colors.pinkAccent,
                                          child: Icon(
                                            Icons.remove,
                                          ),
                                          heroTag: age--,

                                        ),
                                        FloatingActionButton(
                                          onPressed: (){
                                            setState(() {
                                              age++;
                                            });
                                          },
                                          mini:true,
                                          backgroundColor: Colors.pinkAccent,
                                          child: Icon(
                                            Icons.add,
                                          ),
                                          heroTag: age++,

                                        ),

                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),



                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.pink,
              height: 55,
              child: MaterialButton(
                child: Text('CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontStyle: FontStyle.italic,
                  //fontWeight: FontWeight.bold,
                ),),
                  onPressed: (){
                  var result=weight/pow(height/100.0,2);
                  print(result.round());
               Navigator.push(context,MaterialPageRoute(builder: (context)=>ResultScreen(
                  age: age,
                 result: result.round(),
                 ismale:ismale,
               ),),
               )   ;
              }),
            ),

          ],
        ),
      ),
    );
  }
}

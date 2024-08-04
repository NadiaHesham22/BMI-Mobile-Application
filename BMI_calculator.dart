import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../bmi_result/BMI_result_screen.dart';

class BMICalc extends StatefulWidget {
  const BMICalc({super.key});

  @override
  State<BMICalc> createState() => _BMICalcState();
}

class _BMICalcState extends State<BMICalc> {
  bool isMale=true;
  double height=120.0;
  int weight=30;
  int age=10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children:
        [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
              Expanded(
                child: GestureDetector(
                  onTap: ()
                  {
                    setState(() {
                      isMale=true;
                    });

                  },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [
                       Image(
                       image:AssetImage('images/male.png'),
                        height: 90.0,
                        width: 90.0,
                       ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'MALE',
                          style:TextStyle(
                            fontSize: 25.0,
                            fontWeight:FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0,),
                      color:isMale? Colors.deepPurple[400]: Colors.grey[400],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: ()
                  {
                    setState(() {
                      isMale=false;
                    });

                  },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [
                        Image(
                         image:AssetImage('images/female.png'),
                          height: 90.0,
                          width: 90.0,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'FEMALE',
                          style:TextStyle(
                            fontSize: 25.0,
                            fontWeight:FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0,),
                      color: isMale? Colors.grey[400]:Colors.deepPurple[400],
                    ),
                  ),
                ),
              ),
                        ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style:TextStyle(
                        fontSize: 25.0,
                        fontWeight:FontWeight.bold,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${height.round()}',
                          style:TextStyle(
                            fontSize: 40.0,
                            fontWeight:FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'CM',
                          style:TextStyle(
                            fontSize: 20.0,
                            fontWeight:FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value:height,
                      min:80.0,
                      max: 220.0,
                      onChanged: (value){
                        setState(() {
                          height=value;
                        });
                       // print(value.round());
                      },
                    ),
                  ],

                ),
                decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10.0,),
                 color: Colors.grey[400],
                ),

              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0,),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style:TextStyle(
                              fontSize: 25.0,
                              fontWeight:FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${weight}',
                            style:TextStyle(
                              fontSize: 40.0,
                              fontWeight:FontWeight.w900,
                            ),
                          ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(onPressed:()
                          {
                            setState(() {
                              weight--;
                            });
                          },
                            mini: true,
                          child: Icon(
                            Icons.remove,
                          ),
                          ),
                          FloatingActionButton(onPressed: ()
                          {
                            setState(() {
                              weight++;
                            });
                          },
                            mini: true,
                          child: Icon(
                            Icons.add,
                          ),
                          ),
                        ],
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
                        borderRadius: BorderRadius.circular(10.0,),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style:TextStyle(
                              fontSize: 25.0,
                              fontWeight:FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${age}',
                            style:TextStyle(
                              fontSize: 40.0,
                              fontWeight:FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed:()
                              {
                                setState(() {
                                  age--;
                                });
                              },
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(onPressed: ()
                              {
                                setState(() {
                                  age++;
                                });

                              },
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 50.0,
            color:Colors.deepPurple[400],
            width: double.infinity,
            child: MaterialButton(
                onPressed:()
                {
                  double result=weight/pow(height/100,2);
                  print(result.round());
                  
                  Navigator.push(context,
                    MaterialPageRoute(
                        builder:(context)=>BMI_result(
                          age: age,
                          result: result.round(),
                          isMale: isMale,
                        ),
                    ),
                  );
                },
              child:Text(
                'CALCULATE',
                style:TextStyle(
                  color: Colors.white,
                ),
              ) ,

            ),
          ),
        ],
      ),

    );
  }
}

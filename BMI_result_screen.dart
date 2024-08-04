import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMI_result extends StatelessWidget {
  final int result;
  final int age;
  final bool isMale;
  //const BMI_result({super.key});

  BMI_result({
   required this.result,
    required this.isMale,
   required this.age,
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Text(
        'BMI RESULT',
          style: TextStyle(
              color:Colors.white,
          ),
        ) ,
        backgroundColor: Colors.deepPurple[400],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale? 'Male': 'Female'}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
            Text(
              'Result : $result',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
            Text(
              'age : $age',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  int result;
  bool isMale;
  double height;
  int weight;
  int age;

  ResultPage({required this.isMale,required this.height,required this.weight,required this.age,required this.result});

  String health(result){
    if(result<18.5) return "Underweight";
    else if(18.5<=result && result<24.9) return "Normal weight";
    else if(25.0<=result && result<29.9) return "NOverweight";
        else {
      return 'Obesity';
    }
  }
  @override
  Widget build(BuildContext context) {
    String gender = isMale ? 'Male' : 'Female' ;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('BMI RESULT'),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Gender :  $gender',style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
            Text('Height :  ${height.round()}',style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
            Text('Weight :  $weight',style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
            Text('Age :  $age',style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
            const SizedBox(height: 100),
            Text('Your BMI is : $result',style: const TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white)),
            Text('"${health(result)}"',style: const TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.red)),

          ],
        ),
      ),
    );
  }
}

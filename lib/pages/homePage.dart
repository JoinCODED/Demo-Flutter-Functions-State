import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final heightController = TextEditingController();
  final weightController = TextEditingController();
  String results = " ";

  @override
  Widget build(BuildContext context) {
    String bmiString(double bmi) {
      if (bmi <= 20) {
        return 'Thin';
      } else if (bmi < 25 && bmi > 20) {
        return 'Normal';
      } else if (bmi >= 25) {
        return 'Fat';
      } else {
        return '';
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        backgroundColor: Color.fromARGB(255, 240, 105, 105),
        elevation: 0,
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(15),
            child: TextField(
              controller: weightController,
              decoration: InputDecoration(
                  hintText: "Weight in kg",
                  enabledBorder: inputBorder(),
                  focusedBorder: inputBorder()),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 30),
            child: TextField(
                controller: heightController,
                decoration: InputDecoration(
                  hintText: "Height in cm",
                  enabledBorder: inputBorder(),
                  focusedBorder: inputBorder(),
                )),
          ),
          Transform.scale(
            scale: 1.3,
            child: ElevatedButton(
              onPressed: () {
                double height = double.parse(heightController.text);
                double weight = double.parse(weightController.text);
                double bmi = (weight / (height * height)) * 10000;
                setState(() {
                  results = bmiString(bmi);
                });
                print(results);
              },
              child: Text("Calculate"),
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  elevation: 0,
                  primary: Color.fromARGB(255, 240, 105, 105)),
            ),
          ),
          Text(
            results,
            style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.pinkAccent),
          )
        ],
      )),
    );
  }
}

OutlineInputBorder inputBorder() {
  //return type is OutlineInputBorder
  return OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 201, 128, 128), width: 2),
    borderRadius: BorderRadius.circular(40),
  );
}

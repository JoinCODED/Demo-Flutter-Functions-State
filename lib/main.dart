import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
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
                  decoration: InputDecoration(
                      hintText: "Weight in kg",
                      enabledBorder: inputBorder(),
                      focusedBorder: inputBorder()),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15, bottom: 30),
                child: TextField(
                    decoration: InputDecoration(
                  hintText: "Height in cm",
                  enabledBorder: inputBorder(),
                  focusedBorder: inputBorder(),
                )),
              ),
              Transform.scale(
                scale: 1.3,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Calculate"),
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      elevation: 0,
                      primary: Color.fromARGB(255, 240, 105, 105)),
                ),
              )
            ],
          )),
        ));
  }
}

OutlineInputBorder inputBorder() {
  //return type is OutlineInputBorder
  return OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 201, 128, 128), width: 2),
    borderRadius: BorderRadius.circular(40),
  );
}

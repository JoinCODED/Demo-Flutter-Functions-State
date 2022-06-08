# BMI Calculator - Functions and State 

## What is this demo?

A BMI calculator using state, before that functions will be intreduced in a Dart file.

## What are the objectives?

The student should learn how to turn the statless widget into a statful widget, understand functions. 

## Steps

### Part 1 Dart-functions: 
1. Create a dart file and create a main function
2. Print 'hello World'
3. Create another function that prints 'hello world'
4. Call the function
5. Modify the function so it takes an arguments and prints it `Terms: parameters internal and arguments external`
6. Positional arguments => full name example, if wrong position WRONG NAME!
7. We need to label arguments so => NAMED AGRUMENTS!!! WITH REQUIRED
8. Named argument: wrap arguments in a set of curly braces
9. Add deafult value 
11. Return is the last command in the function 
12. Explain return values 


### Part 2: BMI calculator 
1. Create pages and add the widget
2. Create two TextEditingControllers 
3. Add them to the TextFields
4. Locate the button function
5. Parse the values `double height = double.parse(heightController.text)`
6. Calculate the bmi `double bmi = (weight / (height * height)) * 10000;`
7. Print it
8. Add if statemnts 
9. Place the if in a function 
10. Call the function 
```dart
String bmiString(double bmi) {
    if (bmi < 20){
      return "Under wieght";}
    else if (bmi < 25){
      return "Good";}
    else{
      return "Over wieght";}
  }
  ```
10. Create a variable called results and initilize it 
11. Assign in it the button and print it 
12. Add a Text widget to show the results in
14. No result!
15. Convert to a stateful widget 
16. move all the variables to the class not the build 
17. Set state in on pressed 
18. Move Text controllers back in the build so they reset everytime

    
### Notes :
Functions is making our computer memorize a procedure 
Slow down on scope of variables 
Anything inside Build will be refreshed 
Anything in setState is a state 
Add `print("REBUILDING")` in the first line of build




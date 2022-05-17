# BMI Calculator - Functions and State 

## What is this demo?

A BMI calculator using state, before that functions will be intreduced in a Dart file.

## What are the objectives?

The student should learn how to turn the statless widget into a statful widget, understand functions. 

## Steps

### Part 1 Dart-functions: 
1. Create a dart file and create a main function
2. Print 'hello Zainab', 'Hello Ahmad' 
3. Create another function that prints 'hello world'
4. Call the function
5. Modify the function so it takes an arguments and prints it 
6. Named argument: wrap arguments in a set of curly braces
7. Add deafult value 
8. Remove default values and add requried 
9. Explain return values 


### Part 2: BMI calculator 
1. Create two TextEditingControllers 
2. Add them to the TextFields
3. Locate the button function
4. Parse the values `double height = double.parse(heightController.text)`
5. Calculate the bmi `double bmi = (weight / (height * height)) * 10000;`
6. Print it
7. Add if statemnts 
8. Place the if in a function 
9. Call the function
10. Create a variable called results
11. Print it 
12. Add a Text widget to show the results in
13. Move results variable to the top 
14. No result!
15. Convert to a stateful widget 
16. move all the variables to the class not the build 
17. Set state in on pressed 
18. Move Text controllers back in the build so they reset everytime

    
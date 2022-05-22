void main() {
  // printName("Ahmad");
  // printName("Zainab");
  //whoAmI(age: 15, name: "Zainab");
  var x = sum(num1: 1, num2: 5);
  print(x);

  print(isOdd(12));
}

void printName(String name) {
  print("Hello $name");
}

void whoAmI({required String name, required int age}) {
  print("My name is $name and i am $age years old");
}

int sum({required int num1, required int num2}) {
  return num1 + num2;
}

bool isOdd(int num) {
  if (num % 2 == 0)
    return false;
  else
    return true;
}

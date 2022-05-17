void main() {
  printName("Sara");
  whoAmI(name: "Zainab", age: 25);
  whoAmI(age: 16, name: "faisl");
  int x = sum(5, 8);
}

void printName(String name) {
  print("Hello $name");
}

void whoAmI({required String name, required int age}) {
  print("My name is $name and i am $age years old");
}

int sum(int num1, int num2) {
  return (num1 + num2);
}

void main() {
  print(saludar());
  print(greetEveryone());
  print(agregarNumeros(5, 5));
  print(addTwoNumbers(5, 5));
  print(agergarDosNumerosOpcional(4, 4));
  print(greetPerson(message: 'Hello', name: 'Oscar'));
  print(greetPerson(name: 'Oscar'));
}

String saludar(){
  return "Hola a todos";
}

//lambda
String greetEveryone() => "Hello everyone";

int agregarNumeros(int a, int b){
  return a + b;
}

// TO DO: convertir la función a lambda, se debe llamar "addTwoNumbers"
int addTwoNumbers(int a, int b) => a+b;

// Variables opcionales
int agergarDosNumerosOpcional(int a, [int? b /*int b = 0*/]){
  //b = b ?? 0;
  b ??= 0;
  return a + b;
}

// Variables por referencia
String greetPerson({required String name, String? message = 'Hola'}) {
  return '$message $name';
}
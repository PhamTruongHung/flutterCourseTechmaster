void main() {
  double a = 20;
  double b = 10;

  print(calNumber(a: a, b: b, calFunc: div));
  print(calNumber(a: a, b: b, calFunc: mul));
  print(calNumber(a: a, b: b, calFunc: sum));
  
  print(calNumber(
      a: a,
      b: b,
      calFunc: (a, b) {
        return a - b;
      }));
}

double calNumber(
    {required a, required b, required Function(double a, double b) calFunc}) {
  return calFunc(a, b);
}

double div(double a, double b) {
  return a / b;
}

double mul(double a, double b) {
  return a * b;
}

double sum(double a, double b) {
  return a + b;
}

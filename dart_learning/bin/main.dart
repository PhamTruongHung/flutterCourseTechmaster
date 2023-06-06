void main() async {
  Solution solution = Solution();

  print(solution.fizzBuzz(10000));
}

class Solution {
  List<String> fizzBuzz(int n) {
    List<String> result = [];
    int index = 1;
    while (index <= n) {
      if (divisibleBy3(index) && !divisibleBy5(index)) {
        result.add("Fizz");
      } else if (divisibleBy5(index) && !divisibleBy3(index)) {
        result.add("Buzz");
      } else if (divisibleBy3(index) && divisibleBy5(index)) {
        result.add("FizzBuzz");
      } else {
        result.add(index.toString());
      }
      // print('$index - $result');
      index++;
    }
    return result;
  }
}

bool divisibleBy3(int n) {
  return n % 3 == 0 ? true : false;
}

bool divisibleBy5(int n) {
  return n % 5 == 0 ? true : false;
}

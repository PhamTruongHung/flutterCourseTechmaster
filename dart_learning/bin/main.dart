void main() async {
  Solution solution = Solution();

  int area = 100;
  // List<int> bills = [5, 5, 10, 10, 20];

  print('\n Final result: ${solution.constructRectangle(area)}');
}

class Solution {
  List<int> constructRectangle(int area) {
    List<List<int>> possibleResults = [];

    List<int> tmpResult = [0, 0];

    for (var i = 1; i < area; i++) {
      if (area % i == 0) {
        if (i >= (area ~/ i)) {
          tmpResult[0] = i; //L
          tmpResult[1] = area ~/ i; //W
          print(tmpResult);
          possibleResults.add(tmpResult);
        }
      }
    }

    print(possibleResults);

    List<int> bestResult = [];

    return bestResult;
  }
}

void main() async {
  Solution solution = Solution();

  int area = 37;

  print('\n Final result: ${solution.constructRectangle(area)}');
}

class Solution {
  List<int> constructRectangle(int area) {
    List<int> bestResult = [0, 0];

    int currentDiff = 100000000000000000;
    int tmpL = 0;
    int tmpW = 0;

    for (var i = 1; i <= area; i++) {
      if (area % i == 0) {
        tmpL = i;
        tmpW = area ~/ i;
        if (tmpL >= tmpW && ((tmpL - tmpW) < currentDiff)) {
          bestResult[0] = tmpL; //L
          bestResult[1] = tmpW; //W

          currentDiff = tmpL - tmpW;
        }
      }
    }
    return bestResult;
  }
}

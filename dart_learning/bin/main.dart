void main() async {
  Solution solution = Solution();

  print(solution.isPerfectSquare(9));
}

class Solution {
  bool isPerfectSquare(int num) {
    int index = 1;
    int currentSquare = 0;

    while (currentSquare <= num) {
      currentSquare = index * index;
      index++;
      if (currentSquare == num) {
        return true;
      }
    }
    return false;
  }
}

void main() async {
  Solution solution = Solution();

  print(solution.isPowerOfFour(5));
}

class Solution {
  bool isPowerOfFour(int n) {
    int currentPowerOfTwo = 1;

    if (n == 1) {
      return true;
    }

    while (currentPowerOfTwo <= n) {
      currentPowerOfTwo = currentPowerOfTwo * 4;
      if (currentPowerOfTwo == n) {
        return true;
      }
    }

    return false;
  }
}

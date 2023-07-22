// Function to merge two sorted arrays into a single sorted array
List<int> merge(List<int> left, List<int> right) {
  List<int> merged = [];
  int leftIndex = 0;
  int rightIndex = 0;

  while (leftIndex < left.length && rightIndex < right.length) {
    if (left[leftIndex] < right[rightIndex]) {
      merged.add(left[leftIndex]);
      leftIndex++;
    } else {
      merged.add(right[rightIndex]);
      rightIndex++;
    }
  }

  while (leftIndex < left.length) {
    merged.add(left[leftIndex]);
    leftIndex++;
  }

  while (rightIndex < right.length) {
    merged.add(right[rightIndex]);
    rightIndex++;
  }

  return merged;
}

// Merge Sort function
List<int> mergeSort(List<int> arr) {
  if (arr.length <= 1) {
    return arr;
  }

  int mid = arr.length ~/ 2;
  List<int> left = arr.sublist(0, mid);
  List<int> right = arr.sublist(mid);

  left = mergeSort(left);
  right = mergeSort(right);

  return merge(left, right);
}

void main() {
  List<int> unsortedList = [38, 27, 43, 3, 9, 82, 10];
  List<int> sortedList = mergeSort(unsortedList);

  print("Unsorted List: $unsortedList");
  print("Sorted List: $sortedList");
}

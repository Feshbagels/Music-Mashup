int bSearch(int arr[], int l, int r, int x) {
  if (r >= l) { 
    int mid = l + (r - l) / 2; 
    // If the element is itself the middle element, it returns the middle term.
    if (arr[mid] == x) {
      return mid;
    }
    if (arr[mid] > x) {
      // If element is smaller than middle element, then it will be present only in the smaller half of the array.
      return bSearch(arr, l, mid - 1, x);
    } else { 
      // If the element is larger than the middle element, then it is in the larger half of the array.
      return bSearch(arr, mid + 1, r, x);
    }
  } else {
    // Only reaches here if the element that is searched for is not present in the given array.
    return -1;
  }
} 

int lSearch(int[] arr, int x) {    
  for (int i=0; i<arr.length; i++) {    
    if (arr[i] == x) {    
      return i;
    }
  } 
  return -1;
}

/*
 Searching Task(s):
 Create your own linear search and binary search algorithms and implement them into your Main Program
 Complete a computational complexity analysis of each of the searching algorithms. One part of this analysis should include a comparison between using linear search and using binary search + .sort().
 */

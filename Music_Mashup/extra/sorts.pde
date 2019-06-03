void bSort(int arr[]) { 
  int n = arr.length; 
  for (int i = 0; i < n-1; i++) 
    for (int j = 0; j < n-i-1; j++) 
      if (arr[j] > arr[j+1]) 
      { 
        // swaps arr[j+1] and arr[i] if arr[j] is larger than arr[j+1]
        int temp = arr[j]; 
        arr[j] = arr[j+1]; 
        arr[j+1] = temp;
      }
} 


void sSort(int arr[]) { 
  int n = arr.length; 
  // One by one move boundary of unsorted subarray 
  for (int i = 0; i < n-1; i++) 
  { 
    // Find the minimum element in unsorted array 
    int min_idx = i; 
    for (int j = i+1; j < n; j++) 
      if (arr[j] < arr[min_idx]) 
        min_idx = j; 
    // Swap the found minimum element with the first element 
    int temp = arr[min_idx]; 
    arr[min_idx] = arr[i]; 
    arr[i] = temp;
  }
} 

/*
 Sorting Task(s):
 Create your own bubble sort and selection sort algorithms and implement them into your Main Program.
 Read in a large amount of data (50MB or more) related to your program.
 Sort the data and display it in some way.
 Complete a computational complexity analysis of each of your own sorting algorithms and also compare it to the built-in .sort() function (figure out which one runs faster, why, when, etc.)
 Once this task is complete, comment out your own sorts and use the built-in .sort() going forward.

 if (len == 8) {
 image(eighthnote, noteChange, octave, 60, 60);
 }
 if (len == 4) {
 image(quarternote, noteChange, octave, 40, 70);
 }
 if (len == 2) {
 image(halfnote, noteChange, octave, 40, 70);
 }
 if (len == 1) {
 image(wholenote, noteChange, octave, 30, 15);
 }
 if (accidental == "S") {
 image(sharp, noteChange, octave + 32, 15, 43);
 }
 */

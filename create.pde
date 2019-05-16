String sequence;
int hour, minute, second, random;
boolean made;
String trebleSequence, bassSequence, time;

//trebleline generation ------------------------------------------------------------------------------------------------------------------------------------------------------------------
void createTreble() {
  //turns the text file into an array of strings, separated line by line
  String[] treble1 = loadStrings("measure1treble.txt");
  //chooses a random one of those lines
  random = int(random(treble1.length));
  //adds the line to the string that will be written to the text file
  trebleSequence = treble1[random];
  
  //same sequence from above.
  String[] treble2 = loadStrings("measure2treble.txt");
  random = int(random(treble2.length));
  trebleSequence = trebleSequence + treble2[random];
  
  String[] treble3 = loadStrings("measure3treble.txt");
  random = int(random(treble2.length));
  trebleSequence = trebleSequence + treble3[random];
  
  String[] treble4 = loadStrings("measure4treble.txt");
  random = int(random(treble2.length));
  trebleSequence = trebleSequence + treble4[random];
  
  String[] treble5 = loadStrings("measure5treble.txt");
  random = int(random(treble2.length));
  trebleSequence = trebleSequence + treble5[random];
  
  String[] treble6 = loadStrings("measure6treble.txt");
  random = int(random(treble2.length));
  trebleSequence = trebleSequence + treble6[random];
}

//bassline generation -------------------------------------------------------------------------------------------------------------------------------------------------------------------
void createBass() {
  //same sequence from above
  String[] bass1 = loadStrings("measure1bass.txt");
  random = int(random(bass1.length));
  bassSequence = bass1[random];
  
  String[] bass2 = loadStrings("measure2bass.txt");
  random = int(random(bass2.length));
  bassSequence = bassSequence + bass2[random];
  
  String[] bass3 = loadStrings("measure3bass.txt");
  random = int(random(bass3.length));
  bassSequence = bassSequence + bass3[random];
  
  String[] bass4 = loadStrings("measure4bass.txt");
  random = int(random(bass4.length));
  bassSequence = bassSequence + bass4[random];
  
  String[] bass5 = loadStrings("measure5treble.txt");
  random = int(random(bass5.length));
  bassSequence = bassSequence + bass5[random];
  
  //the last measure will always be a whole note C3.
  bassSequence = bassSequence + "C31";
}


PrintWriter sheet;
String filename;
//export generated sequence to text file ----------------------------------------------------------------------------------------------------------------------------------------------------------------------
void export() {
  //performs the above functions once for randomized sequence
  createTreble();
  createBass();
  
  //creates timestamp
  hour = hour();
  minute = minute();
  second = second();
  time =str(hour%12) + "_" + str(minute) + "_" + str(second);
  
  //makes a printwriter object
  filename = "Song " + time;
  sheet = createWriter("generated/" + filename + ".txt");
  sheet.println(trebleSequence);
  sheet.println(bassSequence);
  
  //flushes the strings on the console to the text document
  sheet.flush();
  
  //closes the write operation and displays the filename on the file
  sheet.close();
  made = true;
}

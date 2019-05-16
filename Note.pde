abstract class Note {
  String letter, accidental;
  int octave, noteChange;
  boolean tied;

  /**
   * Constructor function new 
   *
   * @param display - displays the note with appropriate symbols and at appropriate location
   * @param playing - returns true if there is anything touching the note (when the note is supposed to be playing)
   */
  Note(String letter, String accidental, int octave, String isTied) {
    this.letter = letter;
    this.octave = octave;
    this.accidental = accidental;
    if (isTied == "Y") {
      tied = true;
    } else { 
      tied = false;
    }
  }

  //display the note with the appropriate image and any modifiers 
  void display() {
  }

  Boolean playing() {
    if (playline == octave) {
      return true;
    }
    return false;
  }
}

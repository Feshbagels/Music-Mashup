
/*
 * Rest class.
 * Made specifically for rests (as their modifiers are somewhat limited compared to notes)
 */
class Rest extends Value {

  String letterName, accidental;
  int octave;
  
  /*
   * Constructor for new
   */
  Rest(String type, int len, String Dot) {
    super(type, len, Dot);
    
  }

  void display() {
  }
}

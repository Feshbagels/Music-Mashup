
class eighthN extends Note {
  Note something;
  String letterName, accidental;
  int octave;

  eighthN(String letter, String accidental, int octave, String isTied) {
    super("N", "N", 8, "N");
   
  }

  void display() {
    image(eighthnote, noteChange, octave, 60, 60);
  }
}

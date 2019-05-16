/**
  * Abstract Value
  * <p>This class used as a base for the two types of values within the program, rests and notes. The relationship between notes and 
  * rests ends at having the same type of length system, where a they are based of fractions from a "whole" value. The most basic 
  * types are just 1/multiples of 2, such as the whole note, half note, quarter note and eighth note. Rests have the same naming 
  * convention. They can also be modified by a dot to the left of the note, denoting that the value should be the value + half of 
  * the value, or 1.5 of the value.
  * </p>
  */
abstract class Value {
  
  String type;
  int len;
  boolean dot;

  /**
   * Constructor function for new values. 
   * <p> As mentioned, they only need a few values for the beginnings of rests and notes. Rests are limited to dots and the vanilla lengths.
   * </p>
   */
  Value(String type, int len, String Dot) {
    this.type = type;
    this.len = len;
    if (Dot == "Y") {
      this.dot = true;
    } else {
      this.dot = false;
    }
  }
}

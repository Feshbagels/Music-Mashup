/*
 * A Button Object which holds the x, y, width, and height of a button which can be manipulated.
 */

class Button {
  String label;
  float x, y, w, h;

  /**
   * Constructor function for new buttons
   *
   * @param display - displays the button.
   * @param mouseCheck - returns true if the mouse is over the button.
   * @param destroy - makes button unusable if called (set to negative xy (out of bounds)) - used when the button is not actually supposed to be activated
   */
  Button(String labelB, float xpos, float ypos, float widthB, float heightB) {
    label = labelB;
    x = xpos;
    y = ypos;
    w = widthB;
    h = heightB;
  }

  //displays the button at given xy.
  void display() {
    stroke(0);
    strokeWeight(3);
    noFill();
    rect(x-10, y-10, w+20, h+20);
    strokeWeight(1);
    fill(255);
    rect(x, y, w, h, 10);
    fill(0);
    text(label, x + (w/2), y + (h/2));
  }

  //returns true if the mous is within the button
  boolean mouseCheck() {
    if (mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h)) {
      return true;
    }
    return false;
  }

  //destroys the button when called
  void destroy() {
    label = "";
    x = -1;
    y = -1;
    w = -1;
    h = -1;
  }
}

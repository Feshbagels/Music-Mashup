/** //<>//
 * Music Mashup - A program which follows CPE Bach's Method of creating counterpoint melodies and harmonies. Makes a random composition based on the time the program is started.
 * It is expected that this program can output 31,381,059,609 unique compositions. This should provide some nice variation between outputted songs and a lot of examples for sorting and searching for specific compositions.
 *
 * @author Ryan Lu
 * @version 1.0
 * @since 1.0
 * updates - started making various note classes from abstract class note.
 * updated: 4/6/2019 9:47 AM
 */

boolean in_decision, buttons_made, playing;
PFont font;
PImage staff, timesignature, wholenote, halfnote, quarternote, eighthnote, halfrest, quarterrest, eighthrest, sharp, flat;

void settings() {
  size(1900, 800);
}

//-------------------------------------------------------------------------------------------------------------------------------------------
void setup() {
  in_decision = false;
  buttons_made = false;

  //loading fonts and images here
  font = createFont("Trebuchet MS", 48);
  staff = loadImage("grandstaff.png");
  timesignature = loadImage("4-4.png");
  wholenote = loadImage("wholen.png");
  halfnote = loadImage("halfu.png");
  quarternote = loadImage("quarteru.png");
  eighthnote = loadImage("eighthu.png");
  sharp = loadImage("sharp.png");
  timesignature = loadImage("4-4.png");

  textAlign(CENTER, CENTER);
}

//-------------------------------------------------------------------------------------------------------------------------------------------
void draw() {
  //displays the startup screen when first started
  start_menu();

  //displays the generating screen when the button is clicked
  if (in_decision == true) {
    decision_screen();
  }

  //displays the music player screen when the button is clicked
  if (playing == true) {
    play_screen();
  }
}

//--------------------------------------------------------------------------------------------------------------------------------------------
void mouseClicked() {
  //if the start button is clicked and it is not in the decision screen, the decision screen is displayed.
  if (start_button.mouseCheck() == true && in_decision == false) {
    in_decision = true;
  }

  //if the buttons that are on the decision screen have already been created (this is here to prevent nullpointer exception), then these loops can run.
  if (buttons_made == true) {

    //if the create button is where the mouse has clicked and the user is in the decision screen, then the song is created and exported to the created folder.
    if (create_button.mouseCheck() == true && in_decision == true) {
      export();
    }

    //if the player button is where the mouse has clicked and the user is in the decision screen, then the music player screen is displayed.
    if (play_button.mouseCheck() == true && in_decision == true) {
      playing = true;
    }
  }
}

/*
 * Screens - this section for various screens that are used within the program.
 */

Button start_button, create_button, play_button;
//start menu -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void start_menu() {
  background(198, 33, 41);
  fill(255);
  stroke(166, 36, 47);
  strokeWeight(15);
  rect(50, 50, width-100, height-100);
  textFont(font, 72);
  fill(166, 36, 47);
  text("Music Mashup!", width/2, height/2-100);
  fill(255);
  textFont(font, 48);
  start_button = new Button("Start generating a new piece", width/2-350, height/2+50, 700, 100);
  start_button.display();
}

//decision screen-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void decision_screen() {
  in_decision = true;
  create_button  = new Button("Generate a random composition.", width/2 - 375, height/2 - 50, 750, 100);
  play_button = new Button("Play your composition!", width/2 - 250, height/2 + 150, 500, 100);
  buttons_made = true;
  background(198, 33, 41);
  create_button.display();
  play_button.display();

  if (made == true) {
    text(filename + " was generated!", width/2, 200);
  }
}

Note newnote;
float playline;
//music player screen ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void play_screen() {
  background(198, 33, 41);
  image(staff, 0, 270, width, 284);

  line(playline, 307, playline, 530);
  
  playline = (playline % width) + 1;
  if (playline <= 160) {
    playline = 160;
  }  

  for (int i = 50; i < width; i = i + 300) {
    if (i >= 150) {
      line(i+91, 307, i+91, 530);
    }
  }
  
  image(timesignature, 120, 275, 50, 100);
  image(timesignature, 120, 433, 50, 100);
}

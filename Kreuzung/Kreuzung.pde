Ampel ampel;
void setup()
{
  size(144,340);
  ampel = new Ampel();
}

void draw()
{
  ampel.aktualisieren();
  ampel.anzeigen();
  
}

void keyPressed()
{
  if (key == ' ')
  {
    ampel.umschalten();
  }
}

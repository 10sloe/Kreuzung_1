Ampel ampel1;
Ampel ampel2;
Ampel ampel3;
Ampel ampel4;

void setup()
{
  size(400,400);
  ampel1 = new Ampel(100,50,"gruen");
  ampel2 = new Ampel(100,250,"rot");
  ampel3 = new Ampel(250,50,"rot");
  ampel4 = new Ampel(250,250,"gruen");
}

void draw()
{
  ampel1.aktualisieren();
  ampel1.anzeigen();
  ampel2.aktualisieren();
  ampel2.anzeigen();
  ampel3.aktualisieren();
  ampel3.anzeigen();
  ampel4.aktualisieren();
  ampel4.anzeigen();
  
}

void keyPressed()
{
  if (key == ' ')
  {
    ampel1.umschalten();
    ampel2.umschalten();
    ampel3.umschalten();
    ampel4.umschalten();
  }
}

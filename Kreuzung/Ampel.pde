class Ampel
{
  private String zustand;
  private int x;
  private int y;
  
  // Bild für die Anzeige
  PImage ampel_rot = loadImage("ampel_rot.jpg");
  PImage ampel_gelb = loadImage("ampel_gelb.jpg");
  PImage ampel_rot_gelb = loadImage("ampel_rot_gelb.jpg");
  PImage ampel_gruen = loadImage("ampel_gruen.jpg");
 
  int timer;
  
  Ampel(int x_, int y_, String zustand_)
  {
    x = x_;
    y = y_;
    zustand = zustand_;
    timer = 100;
  }
  
  void aktualisieren()
  {
    timer--;
    if (timer == 0)
    {
      umschalten();
      timer = 100;
    }
  }
  
  void anzeigen()
  {
    if (zustand.equals("rot"))
    {
    image(ampel_rot,x,y,50,120);
    }
    if (zustand.equals("rot_gelb"))
    {
     image(ampel_rot_gelb,x,y,50,120);
    }
    if (zustand.equals("gelb"))
    {
    image(ampel_gelb,x,y,50,120);
    }
    if (zustand.equals("gruen"))
    {
     image(ampel_gruen,x,y,50,120);
    }
  }
  
  void umschalten()
  {
    if (zustand.equals("rot"))
    {
      zustand = "rot_gelb";
    }
    else if(zustand.equals("rot_gelb"))
    {
      zustand = "gruen";
    }
    else if(zustand.equals("gruen"))
    {
      zustand = "gelb";
    }
    else if(zustand.equals("gelb"))
    {
      zustand = "rot";
    }
  }
  
}

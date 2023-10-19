/* 
Name:Alex Kavanagh Programme Name:Day/Night Cycle
Description of the animation:As the mouse moves along the x axis the day turns to night, with the night including a randomly placed star at the darkest part.
Known bugs/problems: Star sometimes randomly generates in a postion behind the moon.
*/

float starPositionX; //Initialize the varibles
float starPositionY;

void setup() {
  size(600, 500);
  starPositionX=random(0, width); //Giving starPositionX a value in range of 0-600
  starPositionY=random(0, height/2); //Giving starPositionY a value in range of 0-500
}

void draw() {

  if (mouseX <= 50) {
    background(#85A1F2);   //dark before daylight
    fill(#E8E10C);
    stroke(#E8E10C);
    ellipse(50, 300, 125, 125); //sun 1
  } else if (mouseX <= 100) {
    background(#8BC6FC);       //half way to daylight
    fill(#E8E10C);
    stroke(#E8E10C);
    ellipse(150, 155, 125, 125); //sun 2
  } else if (mouseX <= 150) {
    background(#91DDF2);       //full way to daylight
    fill(#E8E10C);
    stroke(#E8E10C);
    ellipse(300, 75, 125, 125); //sun 3
  } else if (mouseX <= 200) {
    background(#8BC6FC);       //half way to daylight
    fill(#E8E10C);
    stroke(#E8E10C);
    ellipse(450, 155, 125, 125); //sun 4
  } else if (mouseX <= 250) {
    background(#85A1F2);        //dark before daylight
    fill(#E8E10C);
    stroke(#E8E10C);
    ellipse(550, 300, 125, 125); //sun 5

    fill(#FEFCD7);
    stroke(#FEFCD7);
    ellipse(50, 300, 125, 125);  //moon 1.1

    fill(#85A1F2);
    stroke(#85A1F2);
    ellipse(40, 295, 125, 125);  //moon 1.2
  } else if (mouseX <= 300) {
    background(#0050B5);
    fill(#FEFCD7);
    stroke(#FEFCD7);
    ellipse(150, 155, 125, 125);  //moon 2.1

    fill(#0050B5);
    stroke(#0050B5);
    ellipse(140, 145, 125, 125);  //moon 2.2
  } else if (mouseX <=350) {
    background(#000000);
    fill(#FEFCD7);
    stroke(#FEFCD7);
    ellipse(300, 75, 125, 125);  //moon 3.1

    drawStar();

    fill(#000000);
    stroke(#000000);
    ellipse(290, 65, 125, 125);  //moon 3.2
  } else if (mouseX <=400) {
    background(#0050B5);
    fill(#FEFCD7);
    stroke(#FEFCD7);
    ellipse(450, 155, 125, 125);  //moon 4.1

    fill(#0050B5);
    stroke(#0050B5);
    ellipse(440, 145, 125, 125);  //moon 4.2
  } else if (mouseX <=450) {
    background(#85A1F2);
    fill(#FEFCD7);
    stroke(#FEFCD7);
    ellipse(550, 300, 125, 125);  //moon 5.1

    fill(#85A1F2);
    stroke(#85A1F2);
    ellipse(540, 290, 125, 125);  //moon 5.2
  
}
 
  drawBush(50, 100); //(x,y); first bush
  drawBush(95, 90); // second bush middle
  drawBush(140, 100); // third bush
  drawBush(270, 100); // forth bush
  drawBush(320, 100); // fifth bush
  drawBush(450, 100); // sixth bush
  drawBush(520, 100); // seventh bush
  drawBush(500, 87); // eight bush
  stroke(119, 221, 119);
  fill(119, 221, 119);
  rect(0, 400, 600, 400);

if (mouseY >= 400) {
    
    fill(0);
    ellipse(300,420,40,15); //hole
    fill(163, 84, 5);
    stroke(163, 84, 5);
    ellipse(300,410,15,30); //little guy
    fill(0);
    stroke(0);
    rect(290,415,20,10); //body
    fill(0);
    stroke(0);
    ellipse(297,400,2,2); //eye 1
    ellipse(303,400,2,2); //eye 2
}
}
void drawBush(int x, int y) { //function to draw bush
  stroke(#559E55);
  fill(#559E55);
  ellipse(x, y*4, 100, 100);
}

void drawStar() //function to draw star at random
{
  fill(#FEFCD7);
  stroke(#FEFCD7);
  ellipse(starPositionX, starPositionY, 10, 10);
}

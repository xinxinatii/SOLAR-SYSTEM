Planet[] planets;
float sunX,sunY,sunSize;
void setup(){
  size(1000,1000);
  planets=new Planet[30];
  for(int i=0;i<planets.length;i++)
  planets[i]=new Planet();
  sunX=width/2;
  sunY=height/2;
  sunSize=200;
  randomPlanets(planets.length);
}

void draw(){
   background(0);
   noStroke();
  for(int i=0;i<planets.length;i++){
   if (planets[i].infrontSun==false)
    planets[i].planet();}
    
   sun();
   
   for(int i=0;i<planets.length;i++){
   if(planets[i].infrontSun==true)
    planets[i].planet();
}
}

void sun(){
 fill(245,245,45);
 circle(width/2,height/2,sunSize); 
}

void randomPlanets(int x){
for(int i =0;i<x;i++){  
  planets[i].maxDistance=random(10,400)+sunSize/2;
  planets[i].maxPlanetSize=random(10,75);
  planets[i].planetSize=planets[i].maxPlanetSize;
  planets[i].planetColour=color(random(255),random(255),random(255));
  planets[i].planetSpeed=(planets[i].maxDistance/80)+random(-1,1);
}
}

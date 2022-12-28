class Planet{
 float planetX,planetY,planetSpeed,distance,maxDistance, planetSize,maxPlanetSize;
 boolean infrontSun;
 color planetColour;
  Planet(){
    planetX=width/2;
    planetY=width/2;
  }
  
  void planet(){
  planetDisplay();
  planetMouvement();
  planetSizeChanger();
}

void planetMouvement(){
 distance=abs(planetX-sunX); 
 if(distance>maxDistance){
 planetSpeed*=-1;
 }
 planetX+=planetSpeed;
}

void planetSizeChanger(){
  if (planetSpeed>0){
  planetSize=(((maxDistance*2-distance)/maxDistance)*maxPlanetSize)/2;
  }
  if(planetSpeed<0){
  planetSize=((distance/maxDistance)*maxPlanetSize)/2;
  }
}

void planetDisplay(){
  sunLayer();
  fill(planetColour);
  circle(planetX, planetY, planetSize);
}
void sunLayer(){
 if(planetSpeed>0)
  infrontSun=true;
  else
  infrontSun=false;
}



}

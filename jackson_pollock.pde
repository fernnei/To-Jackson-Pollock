float w=800,h=300,x1,y1,x2,y2,r,g,b;
float Wa,Ha,start,stop;
float cpX1,cpX2,cpY1,cpY2,x,y;
boolean isPlaying;

    //import processing.pdf.*;      //it can take the picture whick the moment you press key to PDF

void setup(){
  size(800,300);
  background(229,202,125);
  
  frameRate(4);
  
  textSize(10);
  text("NO. "+floor(random(0,10))+floor(random(0,10))+floor(random(0,10)),10,15);

  isPlaying=false;

    //beginRecord(PDF, "pollock.pdf");

}



void draw(){
  if(isPlaying){
    
    strokeWeight(random(0,2));
    x1=floor(random(w+1));
    y1=floor(random(h+1));
    x2=floor(random(w+1));
    y2=floor(random(h+1));
    r=floor(random(256));
    g=floor(random(256));
    b=floor(random(256));
    //stroke(r,g,b);
    stroke(floor(random(256)));
    noFill();
    //line(x1,y1,x2,y2);
    //straight line
    
    /*Wa=random(w+1);
    Ha=random(h+1);
    start=random(360);
    stop=random(-360,360);
    if(start<stop){                    //it doesn't work
    arc(x1,y1,Wa,Ha,start,stop);
    }*/
    //arc but turn into circle
    
    //frameRate(8);
    cpX1=floor(random(w+200));
    cpY1=floor(random(h+50));
    cpX2=floor(random(w+200));
    cpY2=floor(random(h+50));
    x=floor(random(w+100));
    y=floor(random(h+50));
    vertex(x,y);
    bezier(x1,y1,cpX1,cpY1,cpX2,cpY2,x2,y2);
    bezier(x1,y1,cpX1,cpY1,cpX2,cpY2,x2,y2);
    bezier(x1,y1,cpX1,cpY1,cpX2,cpY2,x2,y2);
    bezier(x1,y1,cpX1,cpY1,cpX2,cpY2,x2,y2);
    //bezier
  }
}

void keyPressed() {
    isPlaying=!isPlaying;
    
        //endRecord();
        //exit();
}
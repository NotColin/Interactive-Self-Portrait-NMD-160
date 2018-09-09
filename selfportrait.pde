import processing.sound.*;//sound library

AudioIn input;
Amplitude analyzer;// analyze volume

void setup()
{
size(600,600);

  input = new AudioIn(this, 0);
  input.start();//use microphone input
  analyzer = new Amplitude(this);
  analyzer.input(input);//look at volume from mic input
  
}

void draw()
{ 
  background(255);
   float vol = analyzer.analyze();// volume set as a value between 0 and 1
   
   fill(#EEEBC0);
  rect(width/2-68,455,150,90);//neck
  
  color c = color(mouseX/2,mouseY/2,100);// using position of the mouse to change the hue of shirt
  
  fill(c);
  rect(width/2-185,520,400,90,90,90,0,0);//shirt
  
  fill(#EEEBC0);
  ellipse(width/2-150,height/2-20,35,75);//left ear
  
  fill(#EEEBC0);
  ellipse(width/2+150,height/2-20,35,75);//right ear
  
  fill(#EEEBC0);
   ellipse(width/2,height/2,300,370);//head
  
  fill(0);
  rect(width/2-150,height/2-60,300,10);
  noFill();
  rect(width/2-130,height/2-50,110,70,0,0,80,80);
  noFill();
  rect(width/2+20,height/2-50,110,70,0,0,80,80);//glasses
   
   if(mousePressed){
       ellipse(width/2-130/2,height/2-50/2,30,1);
     ellipse(width/2+55,height/2-50/2,30,1);}//blink eyes when mouse pressed
    else{
      fill(#9ED0E4);
     ellipse(width/2-130/2,height/2-50/2,30,30);
     fill(#9ED0E4);
     ellipse(width/2+55,height/2-50/2,30,30);}//open eyes otherwise
 
   fill(0);
   rect(170,220-vol*50,100,15,30,90,30,90); 
   fill(0);
   rect(330,220-vol*50,100,15,90,30,90,30);//eyebrows, move up with volume
   
   fill(#EEEBC0);
   ellipse(width/2,height/2+30,40,40);//nose
   
   //setting sensitivity for mic input
   if(vol>=.005){
     fill(#F99CB1);
   ellipse(width/2,height/2+100,100+vol*10,5+vol*500);}//open mouth dependent on vol
   else{line(width/2-50,height/2+100,width/2+50,height/2+100);}//closed mouth when vol< threshold
 
 fill(0);
   triangle(width/2+140,220,width/2+100,140,width/2+15,110);
   fill(0);
   triangle(width/2-150,220,width/2+100,140,width/2+30,90);
   fill(0);
   triangle(width/2-150,220,width/2-80,120,width/2+15,110);//hair
 }

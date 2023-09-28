void setup()
  {
      size(500,500);
      noLoop();
  }
  void draw()
  {
    background(#F0EAD6);
    int num=0;
    int num1=0;
    int num2=0;
    int num3=0;
    int num4=0;
    int num5=0;
    int num6=0;
    float dicenum=0;
    for(int y=0; y<=458; y+=42){
      for(int x=0; x<=500; x+=42){
     Die bob= new Die(x,y);
     bob.show();
     dicenum++;
                  if (bob.d==1){
num+=1;
num1++;
          }
           else if(bob.d==2){
num+=2;
num2++;
      }
             else if(bob.d==3){
num+=3;
num3++;
      }
             else if(bob.d==4){
num+=4;
num4++;
      }
             else if(bob.d==5){
num+=5;
num5++;
      }
      else{
num+=6;
num6++;
      }
    }
  }
  text("Total: "+ num, 0, 470);
  text("Average: "+ num/dicenum, 0, 480);
  text("Total of 1: "+ num1, 0, 490);
  text("Total of 2: "+ num2, 0, 500);
  text("Total of 3: "+ num3, 130, 470);
  text("Total of 4: "+ num4, 130, 480);
  text("Total of 5: "+ num5, 130, 490);
  text("Total of 6: "+ num6, 130, 500);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
     int myx,myy;
     int d;
      Die(int x, int y){ //constructor
       roll();
        myx=x;
        myy=y;
      }
      void roll()
      {
                  if ((int)(Math.random()*6+1)==1){
d=1;
          }
           else if((int)(Math.random()*6+1)==2){
d=2;
      }
             else if((int)(Math.random()*6+1)==3){
d=3;
      }
             else if((int)(Math.random()*6+1)==4){
d=4;
      }
             else if((int)(Math.random()*6+1)==5){
d=5;
      }
      else{
d=6;
      }
      }
      void show()
      {
          stroke(2);
          fill(255,255,255);
          rect(myx,myy,30,30);
          fill(0,0,0);
          if (d==1){
            ellipse(myx+15,myy+15,5,5);
          }
           else if(d==2){
             ellipse(myx+7,myy+7,5,5);
             ellipse(myx+23,myy+23,5,5);
      }
             else if(d==3){
             ellipse(myx+15,myy+12,5,5);
             ellipse(myx+23,myy+23,5,5);
             ellipse(myx+7,myy+23,5,5);
      }
             else if(d==4){
             ellipse(myx+7,myy+7,5,5);
             ellipse(myx+23,myy+23,5,5);
             ellipse(myx+23,myy+7,5,5);
             ellipse(myx+7,myy+23,5,5);
      }
             else if(d==5){
             ellipse(myx+15,myy+15,5,5);
             ellipse(myx+7,myy+7,5,5);
             ellipse(myx+23,myy+23,5,5);
             ellipse(myx+23,myy+7,5,5);
             ellipse(myx+7,myy+23,5,5);
      }
      else{
             ellipse(myx+7,myy+5,5,5);
             ellipse(myx+7,myy+15,5,5);
             ellipse(myx+7,myy+25,5,5);
             ellipse(myx+23,myy+5,5,5);
             ellipse(myx+23,myy+15,5,5);
             ellipse(myx+23,myy+25,5,5);
      }
      }
  }

On Wed, Sep 27, 2023 at 9:46 AM Wang, Xinuo <xiwang@s.sfusd.edu> wrote:
void setup()
  {
      size(500,500);
      noLoop();
  }
  void draw()
  {
    background(#F0EAD6);
    int num=0;
    int num1=0;
    int num2=0;
    int num3=0;
    int num4=0;
    int num5=0;
    int num6=0;
    float dicenum=0;
    for(int y=0; y<=458; y+=42){
      for(int x=0; x<=500; x+=42){
     Die bob= new Die(x,y);
     bob.show();
     dicenum++;
                  if (bob.d==1){
num+=1;
num1++;
          }
           else if(bob.d==2){
num+=2;
num2++;
      }
             else if(bob.d==3){
num+=3;
num3++;
      }
             else if(bob.d==4){
num+=4;
num4++;
      }
             else if(bob.d==5){
num+=5;
num5++;
      }
      else{
num+=6;
num6++;
      }
    }
  }
  text("Total: "+ num, 0, 470);
  text("Average: "+ num/dicenum, 0, 480);
  text("Total of 1: "+ num1, 0, 490);
  text("Total of 2: "+ num2, 0, 500);
  text("Total of 3: "+ num3, 130, 470);
  text("Total of 4: "+ num4, 130, 480);
  text("Total of 5: "+ num5, 130, 490);
  text("Total of 6: "+ num6, 130, 500);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
     int myx,myy;
     int d;
      Die(int x, int y){ //constructor
       roll();
        myx=x;
        myy=y;
      }
      void roll()
      {
                  if ((int)(Math.random()*6+1)==1){
d=1;
          }
           else if((int)(Math.random()*6+1)==2){
d=2;
      }
             else if((int)(Math.random()*6+1)==3){
d=3;
      }
             else if((int)(Math.random()*6+1)==4){
d=4;
      }
             else if((int)(Math.random()*6+1)==5){
d=5;
      }
      else{
d=6;
      }
      }
      void show()
      {
          stroke(2);
          fill(255,255,255);
          rect(myx,myy,30,30);
          fill(0,0,0);
          if (d==1){
            ellipse(myx+15,myy+15,5,5);
          }
           else if(d==2){
             ellipse(myx+7,myy+7,5,5);
             ellipse(myx+23,myy+23,5,5);
      }
             else if(d==3){
             ellipse(myx+15,myy+12,5,5);
             ellipse(myx+23,myy+23,5,5);
             ellipse(myx+7,myy+23,5,5);
      }
             else if(d==4){
             ellipse(myx+7,myy+7,5,5);
             ellipse(myx+23,myy+23,5,5);
             ellipse(myx+23,myy+7,5,5);
             ellipse(myx+7,myy+23,5,5);
      }
             else if(d==5){
             ellipse(myx+15,myy+15,5,5);
             ellipse(myx+7,myy+7,5,5);
             ellipse(myx+23,myy+23,5,5);
             ellipse(myx+23,myy+7,5,5);
             ellipse(myx+7,myy+23,5,5);
      }
      else{
             ellipse(myx+7,myy+5,5,5);
             ellipse(myx+7,myy+15,5,5);
             ellipse(myx+7,myy+25,5,5);
             ellipse(myx+23,myy+5,5,5);
             ellipse(myx+23,myy+15,5,5);
             ellipse(myx+23,myy+25,5,5);
      }
      }
  }


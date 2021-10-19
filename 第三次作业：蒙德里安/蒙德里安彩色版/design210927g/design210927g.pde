float[] x=new float[8];
float[] y=new float[8];
float[] wwl=new float[4],hhl=new float[4];
float ww,hh;
float a,aa,aaa;
Square[] someSquares;
int totalNumOfSquares =4;

void setup(){
  size(600,600);
  background(255);
  initiateData();
  displayA();
}
void draw(){
  if (keyPressed){
    initiateData();
    displayA();  
  }
}
void initiateData(){
  x[4]=random(width);
  y[4]=random(height);
  ww=random(width-x[4]);
  hh=random(height-x[4]);
  x[5]=x[4]+ww;
  x[6]=x[5];
  x[7]=x[4];
  y[5]=y[4];
  y[6]=y[4]+hh;
  y[7]=y[6];
  strokeWeight(7);
  a=random(1);
  if (a<0.3){
    fill(255,0,0);
  } else if(a<0.6){
    fill(0,0,255);
  } else if(a<0.9){
    fill(255,255,0);
  } else if (a<0.95){
    fill(0,0,0);
  } else {
    fill(255,255,255);
  }
  rect(x[4],y[4],ww,hh);
  x[0]=0;
  y[0]=0;  
  y[1]=0;
  x[3]=0;
  aa=random(1);
  if (aa<0.5){
      line(x[4],y[4],x[4],0);
      line(x[5],y[5],width,y[5]);
      line(x[6],y[6],x[6],height);
      line(x[7],y[7],0,y[7]);
      x[1]=x[4];
      x[2]=x[6];
      y[2]=y[4];
      y[3]=y[7];
      wwl[2]=width-x[1]-ww;
   } else {
      line(x[4],y[4],0,y[4]);
      line(x[5],y[5],x[5],0);
      line(x[6],y[6],width,y[6]);
      line(x[7],y[7],x[7],height);
      x[1]=x[5];
      x[2]=x[4];
      y[2]=y[7];     
      y[3]=y[5]; 
      wwl[2]=width-x[4];
   }    
   wwl[0]=x[1];
   hhl[0]=y[3];
   wwl[1]=width-x[1];
   hhl[1]=y[2];
   hhl[2]=height-hhl[1];
   wwl[3]=width-wwl[2];
   hhl[3]=height-hhl[0];
}
void displayA(){ 
  someSquares = new Square[totalNumOfSquares];
  for(int i=0;i< someSquares.length;i ++){
    someSquares[i]=new Square(x[i],y[i],wwl[i],hhl[i]);
    aaa=random(1);
    if (aaa<0.1){
      someSquares[i].display1();
    } else if(aaa<0.25){
      someSquares[i].display2();
    } else if(aaa<0.4){
      someSquares[i].display2_();
    } else if(aaa<0.55){
      someSquares[i].display3();
    } else if(aaa<0.7){
      someSquares[i].display3_();
    } else if(aaa<0.85){
      someSquares[i].display4();
    } else if(aaa<1){
      someSquares[i].display4_();
    } 
  }
}

 

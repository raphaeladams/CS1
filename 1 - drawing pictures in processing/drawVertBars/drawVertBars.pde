void setup() {
  size(500, 500); 
}

void draw() {
  drawVertBars(10);
}

void drawVertBars (int n) {
  
  //divide screen into n vert bars: 
  int barWidth = width/n;
  int counter = 1;
  
  while (counter <= n) {
    
    if ((counter%2) == 0) { //even
      fill(255);      
    } else { //odd
      fill(0); 
    }
    
    rect(((counter-1)*barWidth), 0, barWidth, height); 
    
    counter++; 
  }  
}

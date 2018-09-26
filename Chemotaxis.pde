Bacteria[] bacts = new Bacteria[1000];
int score = 100;


void setup() {
	size(1000,700);
	for(int i = 0; i<bacts.length;i++){
		bacts[i] = new Bacteria();
	}
}

void draw() {
	background(0);
	for(int i = 0; i<bacts.length;i++){
		bacts[i].move();
		bacts[i].show();
		bacts[i].updateScore();
		
	}
	textSize(100);
	text(score,425,350);
	if(score < 0){
		background((int)(Math.random()*100),(int)(Math.random()*100),(int)(Math.random()*100));
		textSize(150);
		text("Game Over",100,400);
	}

}

class Bacteria{
	int x;
	int y;
	int theColor;
	

	Bacteria() {
		x = 250;
		y = 250;
		theColor = color((int)(Math.random() * 256),(int)(Math.random() * 256),(int)(Math.random() * 256));
		
		

	}
	void move() {
		if(mouseX > x)
    {
      x = x + (int)(Math.random()*30); 
    }
    	else
    {
      x = x - (int)(Math.random()*30); 
    }
    	if(mouseY > y)
    {
      y = y + (int)(Math.random()*30); 
    }
    	else
    {
      y = y - (int)(Math.random()*30); 
    }
    	
		
}
	void updateScore() {
		if(mouseX == x && mouseY == y) {
    		score = score - 2;
   
    }
}



	void show() {
		fill(theColor);
		ellipse(x,y,5,5);

	}
}

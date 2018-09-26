Bacteria[] bacts = new Bacteria[1000];
int score = 100;



void setup() {
	size(1200,500);
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
	textSize(50);
	text("Life: " + score ,10,50);
	if(score < 0){
		background((int)(Math.random()*100),(int)(Math.random()*100),(int)(Math.random()*100));
		textSize(150);
		text("Game Over",200,300);
	}

}

class Bacteria{
	int x;
	int y;
	int theColor;
	

	Bacteria() {
		x = 600;
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

class RaindropCell extends Cell{
	int leftX;
	int rightX;
	int topY;
	int bottomY;
	int numberOfDrops;
	ArrayList<Raindrop> raindrops = new ArrayList<Raindrop>();
	ArrayList<ColorRange> colors = new ArrayList<ColorRange>();
	int dropCounter = 0;

	RaindropCell(int leftX, int rightX, int topY, int bottomY, int numberOfDrops){
		this.leftX = leftX;
		this.rightX = rightX;
		this.topY = topY;
		this.bottomY = bottomY;
		this.numberOfDrops = numberOfDrops;
		this.colors.add(black);
	}

	void display(){
		//println("raindrops.size(): "+raindrops.size());
		addDrop();
		Iterator<Raindrop> it = raindrops.iterator();
		while(it.hasNext()){
			Raindrop raindrop = it.next();
			raindrop.display();
			if(raindrop.isDead()){
				it.remove();
				dropCounter -= 1;
			}
		}
	}

	void addDrop(){
		if(dropCounter < numberOfDrops){
			int colorIndex = (int) random(colors.size());
			raindrops.add(new Raindrop(leftX, rightX, topY, bottomY, 10, colors.get(colorIndex), 0.2));
			dropCounter += 1;
		}
	}

	void setDropNumber(int numberOfDrops){
		this.numberOfDrops = numberOfDrops;
	}

	void setColors(ColorRange... c){
		colors.clear();
		for(ColorRange colorRange : c){
			colors.add(colorRange);
		}
	}
}
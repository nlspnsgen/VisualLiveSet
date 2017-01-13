class RingCollection{
	ArrayList<Ring> rings = new ArrayList<Ring>();
	int speed;

	RingCollection(int speed){
		this.speed = speed;
	}

	void animateForward(){
		Iterator<Ring> it = rings.iterator();
		while(it.hasNext()){
			Ring ring = it.next();
			ring.display();
			ring.expand(speed);
			if(ring.isDead()){
				it.remove();
			}
		}
	}

	void dropAll(){
		rings.clear();
	}

	void animateBackward(){
		Iterator<Ring> it = rings.iterator();
		while(it.hasNext()){
			Ring ring = it.next();
			ring.display();
			ring.expand(-speed);

			if(ring.isDead()){
				println("removing ring");
				println("ring.diameter: "+ring.diameter);
				it.remove();
			}
		}
	}
	
	void add(Ring ring){
		rings.add(ring);
	}
}
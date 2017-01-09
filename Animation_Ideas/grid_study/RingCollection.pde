class RingCollection{
	ArrayList<Ring> rings = new ArrayList<Ring>();
	int spaceBetweenRings;

	RingCollection(int spaceBetweenRings){
		this.spaceBetweenRings = spaceBetweenRings;
	}

	void animateForward(){
		Iterator<Ring> it = rings.iterator();
		while(it.hasNext()){
			Ring ring = it.next();
			ring.display();
			ring.expand(5);
			if(ring.isDead()){
				it.remove();
			}
		}
	}

	void animateBackward(){
		Iterator<Ring> it = rings.iterator();
		while(it.hasNext()){
			Ring ring = it.next();
			ring.display();
			ring.expand(-5);

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
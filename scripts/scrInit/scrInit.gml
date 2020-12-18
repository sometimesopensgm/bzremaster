function scrInit() {
	{
		global.weapon_info = -1;
		scrInitWeapons();	
		// It crashed for some reason when I deleted it from the room 
		//   so I'm keeping UberCont there
		///  ~Sani
		//instance_create(0,0,UberCont);
		instance_create(0,0,KeyCont);
	}


}

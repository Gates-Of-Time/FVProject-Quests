sub EVENT_DEATH {
	#:: Spawn a Ocean of Tears >> corrupted_seafury_cyclops (69142), without grid or guild war, at the current location
  	quest::spawn2(69142,0,0,$x,$y,$z,$h);
}
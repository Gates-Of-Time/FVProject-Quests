sub EVENT_DEATH {
	#:: Spawn a Kedge Keep >> corrupted_seahorse (64050), without grid or guild war, at the current location
  	quest::spawn2(64050,0,0,$x,$y,$z,$h);
}
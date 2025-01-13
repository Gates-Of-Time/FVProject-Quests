sub EVENT_DEATH_COMPLETE {
	#:: Spawn one and only one Lake Rathetear >> corrupted_aquagoblin (51149), without grid or guild war, at the current location
  	quest::unique_spawn(51149,0,0,$x,$y,$z,$h);
}
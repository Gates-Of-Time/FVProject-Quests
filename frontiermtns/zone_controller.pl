sub EVENT_SIGNAL {
	#:: Brute-Sarnak Cycle 
	#:: Match a signal "369521" <Southeast Camp (Brutes)>
	if ($signal == 369521) {
		quest::disable_spawn2($signal);
		#:: Spawn Southwest Camp (Various mobs)
  	quest::enable_spawn2(369524);
	}  
	#:: Match a signal "369524" <Southwest Camp (Various mobs)>
	elsif ($signal == 369524) {
		quest::disable_spawn2($signal);
		#:: Spawn Northwest Camp (Sarnak)
  	quest::enable_spawn2(369525);
	}  
	#:: Match a signal "369525" <Northwest Camp (Sarnak)>
	elsif ($signal == 369525) {
		quest::disable_spawn2($signal);
		#:: Spawn Southeast Camp (Brutes)
  	quest::enable_spawn2(369521);
	}  
	#:: Goblin-Giant-Burynai Cycle 
	#:: Match a signal "369522" <Southeast Camp (Goblins)>
	elsif ($signal == 369522 ) {
		quest::disable_spawn2($signal);
		#:: Spawn Southwest Camp (Giants) 
  	quest::enable_spawn2(369523);
	}  
	#:: Match a signal "369523" <Southwest Camp (Giants)>
	elsif ($signal == 369523) {
		quest::disable_spawn2($signal);
		#:: Spawn Northwest Camp (Burynai) 
  	quest::enable_spawn2(369526);
	}  
	#:: Match a signal "369526" <Northwest Camp (Burynai)>
	elsif ($signal == 369526) {
		quest::disable_spawn2($signal);
		#:: Spawn Southeast Camp (Goblins) 
  	quest::enable_spawn2(369522);
	}  
}

# https://www.paullynch.org/eqblog/?p=44
# https://wiki.project1999.com/Frontier_Mountains_Named_Cycle
# https://eqdiary.tripod.com/fmcycle.htm
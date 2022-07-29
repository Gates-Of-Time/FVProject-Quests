sub EVENT_SIGNAL {
	#:: Brute-Sarnak Cycle 
	#:: Match a signal "369521" <Southeast Camp (Brutes)>
	if ($signal == 369521) {
		quest::disable_spawn2($signal);
		#:: Spawn Southwest Camp (Various mobs)
  	quest::enable_spawn2(50076113);
	}  
	#:: Match a signal "50076113" <Southwest Camp (Various mobs)>
	elsif ($signal == 50076113) {
		quest::disable_spawn2($signal);
		#:: Spawn Northwest Camp (Sarnak)
  	quest::enable_spawn2(50076114);
	}  
	#:: Match a signal "50076114" <Northwest Camp (Sarnak)>
	elsif ($signal == 50076114) {
		quest::disable_spawn2($signal);
		#:: Spawn Southeast Camp (Brutes)
  	quest::enable_spawn2(369521);
	}  
	#:: Goblin-Giant-Burynai Cycle 
	#:: Match a signal "50076111" <Southeast Camp (Goblins)>
	elsif ($signal == 50076111 ) {
		quest::disable_spawn2($signal);
		#:: Spawn Southwest Camp (Giants) 
  	quest::enable_spawn2(50076112);
	}  
	#:: Match a signal "50076112" <Southwest Camp (Giants)>
	elsif ($signal == 50076112) {
		quest::disable_spawn2($signal);
		#:: Spawn Northwest Camp (Burynai) 
  	quest::enable_spawn2(50076115);
	}  
	#:: Match a signal "50076115" <Northwest Camp (Burynai)>
	elsif ($signal == 50076115) {
		quest::disable_spawn2($signal);
		#:: Spawn Southeast Camp (Goblins) 
  	quest::enable_spawn2(50076111);
	}  
}

# https://www.paullynch.org/eqblog/?p=44
# https://wiki.project1999.com/Frontier_Mountains_Named_Cycle
# https://eqdiary.tripod.com/fmcycle.htm
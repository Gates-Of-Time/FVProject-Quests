sub EVENT_SIGNAL {
	#:: Match a signal "Southeast Camp (Brutes)" from /frontiermtns/Boogoog.pl
	if ($signal == Southeast Camp (Brutes)) {
  	quest::disable_spawn2($signal);
		#:: Spawn Southwest Camp (Various mobs)
  	quest::enable_spawn2(NEWSPAWNGROUPID);
	}  
	#:: Match a signal "Southwest Camp (Various mobs)" from /frontiermtns/Boogoog.pl
	elsif ($signal == Southwest Camp (Various mobs)) {
  	quest::disable_spawn2($signal);
		#:: Spawn Northwest Camp (Sarnak)
  	quest::enable_spawn2(NEWSPAWNGROUPID);
	}  
	#:: Match a signal "Northwest Camp (Sarnak)" from /frontiermtns/Boogoog.pl
	elsif ($signal == Northwest Camp (Sarnak)) {
  	quest::disable_spawn2($signal);
		#:: Spawn Southeast Camp (Brutes)
  	quest::enable_spawn2(NEWSPAWNGROUPID);
	}  
	#:: Match a signal "Southeast Camp (Goblins) " from /frontiermtns/Boogoog.pl
	elsif ($signal == Southeast Camp (Goblins) ) {
  	quest::disable_spawn2($signal);
		#:: Spawn Southwest Camp (Giants) 
  	quest::enable_spawn2(NEWSPAWNGROUPID);
	}  
	#:: Match a signal "Southwest Camp (Giants) " from /frontiermtns/Boogoog.pl
	elsif ($signal == Southwest Camp (Giants) ) {
  	quest::disable_spawn2($signal);
		#:: Spawn Northwest Camp (Burynai) 
  	quest::enable_spawn2(NEWSPAWNGROUPID);
	}  
	#:: Match a signal "Northwest Camp (Burynai) " from /frontiermtns/Boogoog.pl
	elsif ($signal == Northwest Camp (Burynai) ) {
  	quest::disable_spawn2($signal);
		#:: Spawn Southeast Camp (Goblins) 
  	quest::enable_spawn2(NEWSPAWNGROUPID);
	}  
}
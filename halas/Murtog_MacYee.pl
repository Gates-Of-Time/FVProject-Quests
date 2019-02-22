sub EVENT_SPAWN {
	#:: Get current location
	$x = $npc->GetX();
	$y = $npc->GetY();
	$z = $npc->GetZ();
	#:: Create a proximity, 100 units across, 100 units tall, and enable proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 50, $z + 50, 1);
	#:: Also enable proximity say
	quest::enable_proximity_say();
}
	
sub EVENT_PROXIMITY_SAY {
	if ($text=~/hail/i) {
		quest::say("Dinnae be rude to the customers, Holana.");
	}
}
sub EVENT_SAY {
     if ($text=~/hail/i) {
        quest::say("Greetin's! I've many fine herbs and potions fer sale. Please look around.");
     }
}
sub EVENT_ITEM {
    
		#:: Return unused items
	plugin::return_items(\%itemcount);
}
# Converted to Perl by SS 

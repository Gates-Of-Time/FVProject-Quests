sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Hello there, $name. There seems to be some strange problems with the boats in this area. The Academy of Arcane Sciences has sent a small team of us to investigate them. If you need to [travel to Timorous]  in the meantime, I can transport you to my companion there.");
	}
	elsif ($text=~/timorous/i) {
		quest::say("Off you go!");
		#:: Cast spell 2291 - Portal to Timorous
		quest::selfcast(2291);
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}

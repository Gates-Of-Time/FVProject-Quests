sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Hello there, $name. There seems to be some strange problems with the boats in this area. The Academy of Arcane Sciences has sent a small team of us to investigate them. If you need to [travel to Overthere] or [South Ro] in the meantime, I can transport you to my companion there.");
	}
	elsif ($text=~/overthere/i) {
		quest::say("Off you go!");
		quest::selfcast(2285);
	}
	elsif ($text=~/south ro/i) {
		quest::say("Off you go!");
		quest::selfcast(2286);
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}

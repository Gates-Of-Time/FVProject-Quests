sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Hello there, $name. There seems to be some strange problems with the boats in this area. The Academy of Arcane Sciences has sent a small team of us to investigate them. If you need to [travel to Butcherblock] or [Firiona Vie] in the meantime, I can transport you to my companion there.");
	}
	elsif ($text=~/butcherblock/i) {
		quest::say("Off you go!");
		quest::selfcast(2280);
	}
	elsif ($text=~/firiona vie/i) {
		quest::say("Off you go!");
		quest::selfcast(2287);
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}

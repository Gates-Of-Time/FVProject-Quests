sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Hello there, $name. There seems to be some strange problems with the boats in this area. The Academy of Arcane Sciences has sent a small team of us to investigate them. If you need to [travel to Ocean of Tears] in the meantime, I can transport you to my companion there.");
	}
	elsif ($text=~/ocean of tears/i) {
		quest::say("Off you go!");
		quest::selfcast(2279);
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}

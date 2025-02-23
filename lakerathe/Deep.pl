sub EVENT_SAY {
  	quest::emote("ignores you.");
}

sub EVENT_ITEM {
	#:: Match a 1686 - Trunt's Head
	if((plugin::takeItems(1686 => 1)) && ($ulevel >= 46) && ($class eq "Monk")) {
		quest::emote("slowly opens her eyes and looks up at you. She stares at you a long while and then closes her eyes and lowers her head again.");
		quest::say("Very well, $name, if you wish death so greatly, we will be happy to oblige. My master projects part of himself in the wilder lands known as the Overthere. He has granted you an audience. Find him and show him the head of our earth brother. At that point, we will discuss how we will end your life.");
		#:: Give a 1686 - Trunt's Head
		quest::summonitem(1686);
		#:: Ding!
		quest::ding();
		#:: Depop with spawn timer active
		quest::depop_withtimer();
			
	}
	else {
		quest::say("I have no use for this, $name.");
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
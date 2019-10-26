sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Good evening, $name. Feel free to take your time browsing. The temple shop is open night and day for your convenience. Most clerics need access to their [scroll strongbox] at all times."); 
	}
	elsif ($text=~/scroll strongbox/i) {
		quest::say("The scroll strongboxes are kept here. They are used by the temple clerics to hold their valuable scrolls. I tend to the 30 and 40 numbered boxes and [Tyokan] deals with the 20s. Presently all are taken and the waiting list is quite long. If you are here to turn in your key, then please do so. I shall get your scroll for you."); 
	}
	elsif ($text=~/tyokan/i) {
		quest::say("Tyokan Mekase is the day merchant here at the temple shop. He usually arrives around eight in the morning or so.");
	}
	#:: At some point the Shining Star of Life's effect must have been clicky, instead of proc.
	elsif ($text=~/recharge the shining star of life/i) {
		quest::say("Are you interested in recharging your Shining Star of Life? I can do it for you, but I require the Shining Star of Life and 20 gold.");
	}
}

sub EVENT_ITEM {
	#:: Match a 6356 - Shining Star of Light and 20 gp
	if (plugin::takeItemsCoin(0,0,20,0, 6356 => 1)) {
		quest::say("Here you are, then. May the power of the Prime Healer guide you through life and keep you healthy.");
		#:: Give a 6356 - Shining Star
		quest::summonitem(6356);
	}
	#:: Match a 6356 - Shining Star of Light
	elsif (plugin::takeItems(13296 => 1)) {
		#:: Response based on qeynos2/Tyokan_Mekase.pl with handin sans funds
		quest::say("As instructed by High Preistess Jahnds I must ask for the Shining Star of Light and a donation of 20 gold coins.");
		#:: Give a 6356 - Shining Star of Light
		quest::summonitem(6356,0);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

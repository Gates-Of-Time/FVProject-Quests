sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("I'm not in any mood for conversation. My favorite hat was torn right from my head by a gigantic bat the other night and I am quite upset.");
	}
	elsif ($text=~/other tasks/i) {
		quest::say("I will sew you your own personal dreadful cap if you bring me the necessary components. I will need the pelt of a feared beast, some gold thread, and an imbued amber.");
	}
	elsif ($text=~/hat/i) {
		quest::say("It is a marvelous cap sewn from the finest textiles and imbued with the divine power of our lord of fear. Cazic Thule!");
	}
}

sub EVENT_ITEM {
	#:: Match a 1528 - Azzar's Dreadful Hat
	if (plugin::takeItems(1528 => 1)) {
		quest::emote("gasps in astonishment and says 'You...you..found my hat!! This is the most I can repay you but perhaps I can reward you further for some [other tasks]?'");
		#:: Give a 1530 - Black Lace Sash
		quest::summonitem(1530);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(265, 5);  		#:: + Heretics
		quest::faction(242, -5);  		#:: - Deepwater Knights
		quest::faction(254, -5); 		#:: - Gate Callers
		quest::faction(231, -5);  		#:: - Craftkeepers
		quest::faction(233, -5);  		#:: - Crimson Hands
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Match a 19076 - Bear Paw's Pelt, a 12096 - Gold Thread, and a 22502 - Imbued Amber
	elsif (plugin::takeItems(19076 => 1,12096 => 1, 22502 => 1)) {
		quest::say("Here is your dreadful cap as I have promised.");
		#:: Give a 1529 - Dreadful Cap
		quest::summonitem(1529);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(265, 5);  		#:: + Heretics
		quest::faction(242, -5);  		#:: - Deepwater Knights
		quest::faction(254, -5); 		#:: - Gate Callers
		quest::faction(231, -5);  		#:: - Craftkeepers
		quest::faction(233, -5);  		#:: - Crimson Hands
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

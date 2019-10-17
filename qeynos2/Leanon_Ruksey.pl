sub EVENT_AGGRO {
	quest::say("Die, like a motherless gnoll!");
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Ah, good day, friend. My name's Leanon Ruksey, loyal member of the League of Antonican Bards. Qeynos Chapter, of course. It's part of my job to keep up with the goings-on of the city, who's coming and going and all that. So we usually keep a man here and one at the docks. Anyway, nice chatting with you. Be careful out there!");
	}
}

sub EVENT_ITEM {
	#:: Match a 18020 - Jusean's Report Request
	if (plugin::takeItems(18020 => 1)) {
		quest::say("Ah, hello there, $name. It's such a fine day out, wouldn't you say? Ah, reports are due in. Very well, here you go. Say hello to the fellows back at the Wind Spirit's Song for me. May you have many safe travels, my friend.");
		#:: Give a 18024 - Leanon's Report
		quest::summonitem(18024);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(284, 10);		#:: + League of Antonican Bards
		quest::faction(281, 1);			#:: + Knights of Truth
		quest::faction(262, 1);			#:: + Guards of Qeynos
		quest::faction(304, -1);		#:: - Ring of Scale
		quest::faction(285, -1);		#:: - Mayong Mistmoore -1 
		#:: Grant a small amount of experience
		quest::exp(200);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_DEATH_COMPLETE {
	quest::say("Your actions will not go unnoticed! The League of Antonican Bards has many members all over this continent.");
}

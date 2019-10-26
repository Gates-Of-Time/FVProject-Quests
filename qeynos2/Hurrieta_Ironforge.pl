sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("What are you doing back here?! I cannot stand it when the [children] allow their friends to run rampant on our estate. Please leave!");
	}
	elsif ($text=~/children/i) {
		quest::say("My dear sweet children are working in the storefronts. Well, all of them except for [Tayla].");
	}
	elsif ($text=~/tayla/i) {
		quest::say("Tayla! She is no Ironforge.");
	}
	elsif ($text=~/waleana/i) {
		quest::say("Waleana is a stain on Brohan's life. A horrid elf. She is gone now and Brohan has moved onto better things and more sanity.");
	}
}

sub EVENT_WAYPOINT_ARRIVE {
	#:: Match waypoint 22
	if ($wp == 22) {
		quest::say("My roses are growing quite well.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}

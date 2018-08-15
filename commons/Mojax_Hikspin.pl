sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hi. How are you? The fish are biting pretty good. That is what Skipynn tells me. I sure wish I had a different [" . quest::saylink("job") . "]. If I did, I could fish all day long.");
	}
	if ($text=~/job/i) {
		quest::say("I am a messenger for [" . quest::saylink("Antonius Bayle") . "], ruler of the great city of [" . quest::saylink("Qeynos") . "].");
	}
	if ($text=~/qeynos/i) {
		quest::say("Huh?! Have you been living in a cave? The great city of Qeynos is the mightiest nation in Antonica! You'd best journey toward the west and visit the city whose influence stretches beyond the horizons.");
	}
	if ($text=~/antonius bayle/i) {
		quest::say("How can it be that you do not know of Antonius Bayle? Was it not he who named this great continent of Antonica? Is it not he who rules over the most powerful city on Norrath? Surely you jest!");
	}
}

sub EVENT_ITEM {
	#:: Match 13087 - Bottle of Milk
	if (plugin::check_handin(\%itemcount, 13087 => 1 )) {
		quest::say("Aaahhhh. Now that is refreshing. Just let me rest for a bit. The note is safe and sound in my bedroll inside the inn.");
		#:: Set factions
		quest::faction(184,1);	#:: Knights of Truth
		quest::faction(86,-1);	#:: Dismal Rage
		quest::faction(105,-1);	#:: Freeport Militia
		quest::faction(311,1);	#:: Steel Warriors
		quest::faction(258,1);	#:: Priests of Marr
		#:: Start Grid 86 - Path to the nearby Inn
		quest::start(86);
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}

sub EVENT_WAYPOINT_ARRIVE {
	#:: Match at grid entry 3 - at the inn
	if ($WP == 2) {
		#:: Spawn 21136 - West Commonlands >> Duggin_Scumber
		quest::spawn2(21136,0,0,$x,$y,$z,$h);
	}
	#:: Match at grid entry 1 - spawn point
	if ($WP == 0) {
		#:: Stop Grid 86
		quest::stop();
	}
}

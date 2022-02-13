sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Have you been sent by the War Baron to [assist]? The explorers from Firiona Vie draw closer.");
	}
	elsif ($text=~/assist/i) {
		quest::say("That is good, I will stay here to halt any advances. Head out near the lake and destroy the trespassers on our land! Bring me four of their knives that they carry for survival. Prove your allegiance to the Legion of Cabilis.");
	}
}

sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::say("Fear the blades of the Iksar!!");
	}
}

sub EVENT_NPC_SLAY {
	quest::say("Another victory for the Legion of Cabilis.");
}

sub EVENT_SLAY {
	quest::say("Another victory for the Legion of Cabilis.");
}

sub EVENT_ITEM {
	#:: Match four 8004 - Explorer Survival Knife
 	if (plugin::takeItems(8004 => 4)) {
		quest::say("Great work, the Legion of Cabilis will not soon forget your dedication. The trespassers shall all be dealt with.");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(441, 100);	#:: + Legion of Cabilis
		quest::faction(440, 25);	#:: + Cabilis Residents
		quest::faction(445, 25);	#:: + Scaled Mystics
		quest::faction(442, 25);	#:: + Crusaders of Greenmist
		quest::faction(444, 25);	#:: + Swifttails
		#:: Grant a small amount of experience
		quest::exp(100);  
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_DEATH_COMPLETE {
	quest::say("You have not won. Consider yourself wanted by the Legion of Cabilis.");
}

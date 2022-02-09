sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail! I suggest you stay within the walls of Cabilis. This is no place for you. The Field of Bone is far too close.");
	}
	elsif ($text=~/sign the restraining order/i) {
		quest::say("Oh, no! My good times have come to an end. Hand me the note and I shall sign it.");
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
	#:: Match a 18249 - Legion Order
	if (plugin::takeItems(18249 => 1)) {
		quest::say("Ha ha! Look at all the names. Ozlot and Frogzin. What lushes. Here you are. I can't imagine there being any others to sign. This is the entire Cabilis brew brigade. Alas... Disbanded forever.");
		#:: Give a 18250 - Legion Order
		quest::summonitem(18250);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(441, 1);		#:: + Legion of Cabilis
		quest::faction(440, 1);		#:: + Cabilis Residents
		quest::faction(445, 1);		#:: + Scaled Mystics
		quest::faction(442, 1);		#:: + Crusaders of Greenmist
		quest::faction(444, 1);		#:: + Swift Tails
		#:: Grant a small amount of experience
		quest::exp(200);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_DEATH_COMPLETE {
	quest::say("My comrades will avenge my death."
}

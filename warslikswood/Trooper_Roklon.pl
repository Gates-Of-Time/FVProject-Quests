sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail! Beware the giants of the woods. They have a dwelling somewhere out there. Should you stumble upon it, run! Leave the fighting to us.");
	}
	elsif ($text=~/sign the restraining order/i) {
		quest::say("I've been ratted out! Very well. I shall sign the order, but first I shall force you to fetch me a set of goblin scout beads. I hear they make fine counters. Bring me the beads and that despicable order and I shall do as instructed.");
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
	#:: Match a 18247 - Legion Order, and a 12672 - Goblin Scout Beads
	if (plugin::takeItems(18247 => 1, 12672 => 1)) {
		#:: Missing dialogue
		#:: Give a 18248 - Legion Order
		quest::summonitem(18248);
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
	#:: Match a 18247 - Legion Order
	elsif (plugin::takeItems(18247 => 1)) {
		quest::say("No, NO! I want the goblin scout beads and the legion order.");
		#:: Give a 18247 - Legion Order
		quest::summonitem(18247);
	}
	#:: Match a 12672 - Goblin Scout Beads
	elsif (plugin::takeItems(12672 => 1)) {
		quest::say("No, NO! I want the goblin scout beads and the legion order.");
		#:: Give a 12672 - Goblin Scout Beads
		quest::summonitem(12672);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_DEATH_COMPLETE {
	quest::say("You have not won. Consider yourself wanted by the Legion of Cabilis.");
}

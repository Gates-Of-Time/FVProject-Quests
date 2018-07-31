sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello..  Welcome to the Wind Spirit's Song.  I'm Sansa, and I help out the local bards here.");
	}
	if ($text=~/fabian/i) {
		quest::say("Ahh - jolly Fabian. He is one of our best customers! That is, of course, due to the fact that he has the heaviest fingers of any bard I know. Anyhow, down to business. I assume he sent you for a new set of strings. Unfortunately, I have not been able to procure any of the [" . quest::saylink("special - uhh - things") . "] needed to make his strings lately.");
	}
	if ($text=~/special - uhh - things/i) {
		quest::say("Uhh - ummm - uhhh - Fabian does not know this, but his strings are - uh - made of - uh - [" . quest::saylink("troll guts") . "].");
	}
	if ($text=~/troll guts/i) {
		quest::say("Well, Fabian likes the thick resonance that only troll gut strings can provide. Trouble is, trolls are scarce around these parts,thank the gods, but Fabian breaks his strings as fast as I find suppliers. Trolls sometimes wander the Karanas in search of food but that is so rare, to see one there. Anyhow, if you find one out in the Karanas, bring me his guts and I can make the strings to take to Fabian.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13703 -  Bag of Troll Guts & 1 Platinum
	if (plugin::takeItemsCoin(0,0,0,1, 13073 => 1)) {
		quest::say("I am not even going to bother asking where you got that. Just take this set I already made and hurry them back to Fabian.");
		#:: Give item 13709 Lut Strings
		quest::summonitem(13709);
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(192,30); 	#:: + League of Antonican Bards
		quest::faction(184,30); 	#:: + Knights of Truth
		quest::faction(135,30); 	#:: + Guards of Qeynos
		quest::faction(273,-30); 	#:: - Ring of Scale
		quest::faction(207,-30); 	#:: - Mayong Mistmoore
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}

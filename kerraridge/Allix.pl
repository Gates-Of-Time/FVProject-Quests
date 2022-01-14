sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Rrraaarrr! Hello furless. You come to study from [mighty warrior] yes?");
	}
	elsif ($text=~/mighty warrior/i) {
		quest::say("Errr. Well, Allix not yet mighty warrior but soon yes. Allix just come of age and soon will enter training to become mighty Pasdar. Errr. Allix little nervous. Allix missing [one thing] to become mighty Pasdar.");
	}
	elsif ($text=~/one thing/i) {
		quest::say("Well, Allix not have to have but is good. Is leaf. Ajrah leaf. Powerful magic in the leaf. Pasdar hold's next to body, keep's body strong and mind clear. Not have to have but Pasdar without Ajrah Leaf is poor Pasdar. Someday Allix travel to the mighty plains of East Karana and get one from trees.");
	}
}

sub EVENT_ITEM {
	#:: Match a 6349 - Ajrah Leaf
	if (plugin::takeItems(6349 => 1)) {
		quest::say("Ajrah! Raaarrr! Ajrah Leaf! Allix destined to be mighty saiar now! Allix unsure how to thank you. Here, take this. Is my most treasured tunic.");
		#:: Give a 1120 - Erudehide Tunic
		quest::summonitem(1120);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(25);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

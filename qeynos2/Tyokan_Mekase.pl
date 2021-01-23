sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Please look around. We have many items exclusively for the members of the Temple of Life. We also have [scroll strongboxes]. If you are unsure of what an item is, feel free to ask me.");
	}
	elsif ($text=~/scroll strongbox/i) {
		quest::say("The scroll strongboxes are merely personal safes. Most of the members use them. I am afraid all are taken, but if you are here to remove a scroll, merely hand me your key and I shall get it for you. I handle all 20 numbered keys and [Whysia] handles all 30 and 40 numbered keys.");
	}
	elsif ($text=~/whysia/i) {
		quest::say("Whysia Flock is the night merchant here at the temple shop. She usually arrives around eight at night or so.");
	}
	elsif ($text=~/prayer beads/i) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("The prayer beads are the blessed necklaces of the Priests of Life.  The beads have a few charges of minor healing.  I recharge them for all members in  good standing.  All I need are the beads and a donation of 100 gold pieces.");
		}
		else {
			quest::say("Your mere presence disgusts me. Please remove yourself from my sight. Until you change yourself and your ways, you are unwelcome in the Temple of Life.");
		}
	}
}

sub EVENT_ITEM {
	#:: Match a 13296 - Prayer Beads and 100 gp
	if (plugin::takeItemsCoin(0,0,100,0, 13296 => 1)) {
		quest::say("I see your beads need to be charged. Very Well here you are. Use them and good health to you!!!");
		#:: Give a 13296 - Prayer Beads
		quest::summonitem(13296);
	}
	#:: Match a 13296 - Prayer Beads
	elsif (plugin::takeItems(13296 => 1)) {
		quest::say("As instructed by High Priestess Jahnda I must ask for the beads and a donation of 100 gold coins.");
		#:: Give a 13296 - Prayer Beads, no charges
		quest::summonitem(13296,0);
	}
	#:: Match a 13306 - T.O.L. 2020
	elsif (plugin::takeItems(13306 => 1)) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 4) {
			quest::say("Oh, turning in your key, are you? Very well, defender of life. Here you are.");
		}
		#:: Give a random reward: 15126 - Spell: Inspire Fear or 15248 - Spell: Ward Summoned
		quest::summonitem(quest::ChooseRandom(15126, 15126, 15248));
		#:: Ding!
		quest::ding();
		else {
			quest::say("Your mere presence disgusts me. Please remove yourself from my sight. Until you change yourself and your ways, you are unwelcome in the Temple of Life.");
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

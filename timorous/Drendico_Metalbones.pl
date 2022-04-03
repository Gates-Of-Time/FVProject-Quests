sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("The hills ears keep spinning the wonders of wells. Twisting twisting fly in water scar hot horses. Teach me! Bring floating water islands of doom!");
	}
}

sub EVENT_ITEM {
	#:: Match a 20648 - Symbol of Insanity
	if (plugin::takeItems(20648 => 1)) {
		quest::emote("says, 'Seek, search, turn, twist! Kazen hopes to death master truly! Read out, read in between! Talk to the pretty clouds.' Drendico turns his back to you and throws a book over his shoulder. 'Bring back book! Bring back reagents three!!' He shouts as he mumbles some more gibberish.");
		#:: Give a 18086 - Journal of Drendico
		quest::summonitem(18086);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 1278 - Cloak of Spiroc Feathers, a 20656 - Eye of Innoruuk, a 20655 - Slime Blood of Cazic-Thule, and a 18086 - Journal of Drendico
	elsif (plugin::takeItems(1278 => 1, 20656 => 1, 20655 => 1, 18086 => 1)) {
		quest::emote("turns to you in amazement. 'You actually did it! These are the correct components! Kazen will be most pleased. I searched the planes for almost a year and could not find all the correct components.' Drendico fiddles with the components, puts them into a box and hands it to you. 'You must have access to an army, $name. Return the components to Kazen quickly!");
		#:: Give a 20653 - Prepared Reagent Box
		quest::summonitem(20653);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

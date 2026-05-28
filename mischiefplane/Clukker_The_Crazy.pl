sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Ha ha! Hello to you too! I have got this crazy deck that I'm willing to give to those [looking for a deck]. Ha ha! Oo!");
	}
	elsif ($text=~/looking for a deck/i) {
		quest::say("You're looking for a DECK? Ha ha ha! Well, bring me a fishing grub, tee hee, and I'll give you a nifty deck");
	}
}

sub EVENT_ITEM {
	#:: Match a 13106 - Fishing Grubs
	if (plugin::takeItems(13106 => 1)) {
		quest::emote("takes a bite out of the fishing grub that was handed to him. Clukker then says, 'Ha ha HA! Thanks for the tasty treat! Now here is your deck! Hee hee haw!'");
		#:: Give a 17054 - Deck of Spontaneous Generation
		quest::summonitem(17054);
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}

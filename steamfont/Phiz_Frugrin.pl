sub EVENT_SAY {
	if ($text=~/Hail/i) {
		quest::say("Hello my friend. Good to meet you.");
	}
	elsif ($text=~/lens/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Oh my. I have bad news. It was stolen by a dark elf rogue. She fled very quickly. My little legs could not keep up. Here, she dropped this. You must find her. Get it back. We have very few Lenses.");
			#:: Give a 18867 - Filthy Towel
			quest::summonitem(18867);
		}
		#:: Match if faction is Indifferent
		elsif ($faction == 5) {
			quest::say("I cannot yet fully trust you");
		}
		else {
			quest::say("You dare to speak to a member of the Eldritch Collective! You had best leave before you find your soul displaced from your body.");
		}
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}

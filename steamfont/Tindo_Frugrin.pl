sub EVENT_SAY {
	if ($text=~/Hail/i) {
		quest::say("Greetings! It is good to see a new face out here. I am Tindo Frugrin, observer for the Eldritch Collective.");
	}
	elsif ($text=~/lens/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("I was hoping you were not the one they sent. I have a slight problem. My brother Bidl Frugrin is holding the lens. He went to Kelethin for a little observation. He has been there for quite some time. I fear he has found the local tavern. He will no doubt spend the day in the forest and every night at the tavern.");
		}
		#:: Match if faction is Indifferent
		elsif ($faction == 5) {
			quest::say("There is much more you must do for the Library of Mechanimagica before such things can be revealed to you.  Perhaps fetching minotaur horns and returning them to Professor Theardor will earn you membership to the Library of Mechanimagica.");
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

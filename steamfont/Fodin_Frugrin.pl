sub EVENT_SAY {
	if ($text=~/Hail/i) {
		quest::say("Hello $name. Have you ever peered beyond our little world? Somewhere out there in the vast darkness is a world filled with great technology and adventure. Our people should concentrate on reaching these distant worlds beyond the sparkling skies.");
	}
	elsif ($text=~/larkon sent me/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("There is much more you must do for the Library of Mechanimagica before such things can be revealed to you. Perhaps fetching minotaur horns and returning them to Professor Theardor will earn you membership to the Library of Mechanimagica. But I suppose if Larkon sent you that you truly wish to prove yourself, eh? You'll have to get your hands a bit dirty, though. Take this box and fill it with livers from those infected rats. We need them for research. Well go on. You can take a bath when you're done.");
			#:: Give a 17923 - Air Tight Box
			quest::summonitem(17923);
		}
		#:: Match if faction is Indifferent
		elsif ($faction == 5) {
			quest::say("I cannot yet fully trust you");
		}
		else {
			quest::say("You dare to speak to a member of the Eldritch Collective! You had best leave before you find your soul displaced from your body.");
		}
	}
	elsif ($text=~/lens/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Spare Telescopic Lens?? I am sorry but I don't have any spares right now.. Oh wait!! I do. Here you are my friend. Careful with that. They are very rare.");
			#:: Give a 13277 - Telescope Lens
			quest::summonitem(13277);
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

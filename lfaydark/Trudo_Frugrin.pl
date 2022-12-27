sub EVENT_SAY {
	if ($text=~/hail/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("What. what?!! I am quite busy here. I have studies to complete and charts to make!");
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
			quest::say("Yes, of course. Here you are. Now be off.");
			#:: Give a 13275 - Telescope Lens
			quest::summonitem(13275);
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

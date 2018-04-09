sub EVENT_SAY {
	if ($text =~ /Hail/i) {
		quest::say("Greetings, friend! I am Bubar, merchant from the burning sands. You must be thirsty or, perhaps, hungry. Please look over my goods.");
	}
}

sub EVENT_ITEM {
	#:: Match 12351 - Tiny Key, 12352 - Tiny Key, 12350 - Gem Case
	if (plugin::check_handin(\%itemcount, 12351 => 1, 12352 => 1, 12350 => 1)) {
		quest::say("Mmmph!!.. *Pop!!* Ouch, my thumb!! Here you are. You had a gem inside.");
		quest::ding();
		#:: Give a 12349 - Sparkling Sapphire
		quest::summonitem(12349);
		quest::exp(15000);
	}
	else {
		quest::say("I need at least two of the case keys and the gem case.");
	}
	plugin::return_items(\%itemcount);
}

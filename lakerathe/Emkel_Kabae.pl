sub EVENT_SAY {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		if($text=~/hail/i) {
			quest::say("I am Emkel Kabae, first apprentice to Kazen. If you have a symbol, tell me its name.");
		}
		if($text=~/symbol of the serpent/i) {
			quest::say("There are more reagents to be gathered. The time draws near for our master's ascension. Travel to the lands of Kunark and seek out Ssessthrass. He is a very wise Iksar herbalist helping me in my endeavor to please Master Kazen. Be careful not to insult his speech, or you may end up dead before you serve your purpose to the master. Be sure to show him the symbol as proof or he may consider you dinner.");
		}
	}
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		#:: Match a 20643 - Twisted Symbol of the Apprentice and a 20649 - Rolling Stone Moss
		elsif(plugin::takeItems(20643 => 1, 20649 => 1)) {
			quest::say("'Very good, $name, you have done as the master asked yet again, take this as a reward.' Emkel reaches into his robes and pulls out a small symbol. He holds it out and the tiny symbol floats to your hand.");

			#:: Give a 20644 - Symbol of the Serpent
			quest::summonitem(20644);
			#:: Ding!
			quest::ding();
			#:: Grant a small amount of experience
			quest::exp(500);

			quest::ding();
			quest::exp(500);
			quest::summonitem(20644);

		}
		#:: Match a 20650 - Refined Manisi Herb
		elsif(plugin::takeItems(20650 => 1)) {
			quest::say("'You are truly worthy of studying with our master. Bear this new symbol and contemplate what you wish from life before you let go of it. Ask the master about the symbol of testing and he will explain all. I too was tested by him.' Emkel pulls up his sleeve to show a grievous scar from his wrist to his shoulder.");
			quest::say("You must ask the master about the symbol of testing. Do not hand the symbol to him for he may interpret that as a breach of conduct.");
			#:: Give a 20647 - Symbol of Testing
			quest::summonitem(20647);
			#:: Ding!
			quest::ding();
			#:: Grant a small amount of experience
			quest::exp(1000);
		}
		else {
			quest::emote("will not accept this item.");

		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_SIGNAL {
	#:: Match a signal '2' sent from /lakerathe/Kazen_Fecae.pl
	if ($signal == 2) {
		my $getmobbynpctype = $entity_list->GetMobByNpcTypeID(51048);
		my $follow_target = $getmobbynpctype->GetID();
		quest::follow($follow_target);
	}
	#:: Match a signal '1' sent from /lakerathe/Kazen_Fecae.pl
	elsif ($signal == 1) {
		quest::sfollow();
	}
}

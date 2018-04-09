sub EVENT_SPAWN {
	quest::settimer("follow",1000);
}

sub EVENT_TIMER {
	my $tundrajack = $entity_list->GetMobByNpcTypeID(30061);
	if ($timer = "follow") {
		quest::follow($tundrajack);
		quest::stoptimer("follow");
	}
}

sub EVENT_COMBAT {
	#:: Match combat_state 1 (true) for entered combat
	if ($combat_state == 1) {
		quest::say("Grrroarrr !!");
		#:: Send a signal "1" to Tundra Jack
		quest::signal(30061,1);
	}
	if ($combat_state == 0) {
		#:: Send a signal "3" to Tundra Jack
		quest::signal(30061,3);
	}
}

# Langseax quest

sub EVENT_ITEM {
	#:: Match 12221 - Lion Delight
	if (plugin::check_handin(\%itemcount, 12221 => 1)) {
		quest::emote("growls with happiness and licks your face.  Just enough time to swipe the sweaty shirt from his collar!!  Iceberg then runs off to enjoy his lion delight!!");
		#:: Send a signal "2" to Tundra Jack
		quest::signal(30061,2);
		#:: Give a 12226 - Sweaty Shirt
		quest::summonitem(12226);
		quest::ding();
		#:: Set Factions
		quest::faction(213,5);	#:: Merchants of Halas
		quest::faction(294,5);	#:: Shaman of Justice
		quest::faction(311,5);	#:: Steel Warriors
		quest::faction(361,5);	#:: Wolves of the North
		quest::exp(1000);
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}

# Converted to Perl by SS

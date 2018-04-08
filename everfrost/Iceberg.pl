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
		  quest::signal(30061,1); #:: Send a signal to Tundra Jack
     }
	 if ($combat_state == 0) {
		  quest::signal(30061,3); #:: Send a signal to Tundra Jack
     }
}

# Langseax quest

sub EVENT_ITEM {
    if (plugin::check_handin(\%itemcount, 12221 => 1)) { # Lion Delight
		quest::Say("growls with happiness and licks your face.  Just enough time to swipe the sweaty shirt from his collar!!  Iceberg then runs off to enjoy his lion delight!!");
		quest::signal(30061,2); #:: Send a signal to Tundra Jack
		quest::SummonItem(12226); # Sweaty Shirt
		quest::Ding();
		quest::Faction(213,5); # Merchants of Halas
		quest::Faction(294,5); # Shaman of Justice
		quest::Faction(311,5); # Steel Warriors
		quest::Faction(361,5); # Wolves of the North
		quest::exp(1000);
		}

		#:: Return unused items
	plugin::return_items(\%itemcount);
}
# Converted to Perl by SS 

sub EVENT_SPAWN {
	#:: Create a timer 'despawn' that triggers in 3600 seconds (60 min)
  	quest::settimer("despawn", 3600);
}

sub EVENT_TIMER {
	#:: Stop the timer "despawn"
	quest::stoptimer("despawn");
	#:: Depop without spawn timer
	quest::depop();
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled(Kunark_EpicsEra)) {
		#:: Match a 20451 - Frayed Braided Grass Amulet
		if (plugin::takeItems(20451 => 1)) {
			quest::emote("begins walking toward the gathering spot. 'Follow, friend.'");
			#:: Send a signal "1" to Eastern Plains of Karana >> Althele (15044) with no delay
			quest::signalwith(15044,1,0);
		}
		else {
			quest::emote("will not take this item.");
		}
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_SIGNAL {
	#:: Match a signal "99" from /eastkarana/Althele.pl
	if ($signal == 99) {
		quest::emote("breathes slowly as tendrils of power emanate from her body and race along the ground.");
		#:: Cast spell 790 - Call of the Storm
		$npc->CastSpell(790, $owner);
	}
	#:: Match a signal "1" from /eastkarana/Althele.pl
	elsif ($signal == 1) {
		#:: Move to the specified location and guard 
		quest::moveto(-1597,-3670,-18,0,1);
	}
}

sub EVENT_DEATH_COMPLETE {
	#:: Stop the timer "despawn"
  	quest::stoptimer("despawn");
}

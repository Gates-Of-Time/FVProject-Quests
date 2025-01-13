my $start;
my $timer;
my $move;

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled(Kunark_EpicsEra)) {
		#:: Match a 20451 - Frayed Braided Grass Amulet
		if (plugin::takeItems(20451 => 1)) {
			quest::emote("begins walking toward the gathering spot. 'Follow, friend.'");
			#:: Match a Eastern Plains of Karana >> Althele (15044) on the entity list
			$start = $entity_list->GetMobByNpcTypeID(15044);
			$timer = $start->CastToNPC();
			$timer->SignalNPC(1); # start the timers on althele
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
	}
	else {
		quest::moveto(-1597,-3670,-18);
		$move = 1;
	}
}

sub EVENT_WAYPOINT_DEPART {
	if ($move == 1) {
		#:: Depop without spawn timer
		quest::depop();
		#:: Spawn a Eastern Plains of Karana >> Teloa (15170), without grid or guild war, at the given location
		quest::spawn2(15170,0,0,-1597,-3670,-18,0);
	}
}

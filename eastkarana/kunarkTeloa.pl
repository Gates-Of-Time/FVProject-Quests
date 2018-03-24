#:: Create Scarlar variables
my $start;
my $timer;
my $move;

sub EVENT_ITEM {
	#:: Match 20451 - Frayed Braided Grass Amulet
	if (plugin::check_handin(\%itemcount, 20451 => 1)) {
		quest::emote("begins walking toward the gathering spot. 'Follow, friend.'");
		#:: 15044 - Eastern Plains of Karana >> Althele
		$start = $entity_list->GetMobByNpcTypeID(15044);
		$timer = $start->CastToNPC();
		$timer->SignalNPC(1);
	}
	plugin::return_items(\%itemcount);
}

sub EVENT_SIGNAL {
	#:: Where does 99 come from?
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
		#:: Spawn a Eastern Plains of Karana >> Teloa (15170)
		quest::spawn2(15170,0,0,-1597,-3670,-18,0);
		quest::depop();
	}
}

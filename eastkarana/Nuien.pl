my $move;

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled(Kunark_EpicsEra)) {
		#:: Match a 20451 - Frayed Braided Grass Amulet
		if (plugin::takeItems(20451 => 1)) {
			quest::say("So be it. Do as you have done before and find the next. Teloa is the last.");
			#:: Give a 20451 - Frayed Braided Grass Amulet
			quest::summonitem(20451);
			#:: Ding!
			quest::ding();
			#:: Spawn a Eastern Plains of Karana >> Teloa (15170), without grid or guild war, at the given location
			quest::spawn2(15170,0,0,-2854,-3840,126.5,61.8);
			#:: Send a signal "15167" to Eastern Plains of Karana >> Althele (15044) with no delay
			quest::signalwith(15044,15167,0);
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
		quest::emote("growls as his power seeps into the earth.");
	}
	else {
		quest::moveto(-1590,-3671,-18);
		$move = 1;
	}
}

sub EVENT_WAYPOINT_DEPART {
	if ($move == 1) {
		#:: Depop without spawn timer
		quest::depop();
		#:: Spawn a Eastern Plains of Karana >> Nuien (15167), without grid or guild war, at the given location
		quest::spawn2(15167,0,0,-1590,-3671,-18,0);
	}
}
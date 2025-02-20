my $move;

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled(Kunark_EpicsEra)) {
		#:: Match a 20450 - Braided Grass Amulet
		if (plugin::takeItems(20450 => 1)) {
			quest::say("I see that the time has come. Take the amulet and give it to the third of our kin, Nuien. I will meet you at the gathering.");
			#:: Give a 20451 - Frayed Braided Grass Amulet
			quest::summonitem(20451);
			#:: Ding!
			quest::ding();
			#:: Spawn a Eastern Plains of Karana >> Nuien (15167), without grid or guild war, at the given location
			quest::spawn2(15167,0,0,300,-3657,3,183);
			#:: Send a signal "15178" to Eastern Plains of Karana >> Althele (15044) with no delay
			quest::signalwith(15044,15178,0);
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
		quest::emote("shivers as her power flows into the air above the gathering.");
	}
	else {
		quest::moveto(-1584,-3669,-18);
		$move = 1;
	}
}

sub EVENT_WAYPOINT_DEPART {
	if ($move == 1) {
		#:: Depop without spawn timer
		quest::depop();
		#:: Spawn a Eastern Plains of Karana >> Sionae (15178), without grid or guild war, at the given location
		quest::spawn2(15178,0,0,-1584,-3669,-18,0);
	}
}
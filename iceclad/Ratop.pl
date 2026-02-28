sub EVENT_SIGNAL {
	#:: Match a signal '1' from Iceclad Ocean >> General_Bragmur_ (110118)
	if ($signal == 1) {
		quest::say("Squawk! Pieces of eight! Pieces of eight!");
		my $mobid = $entity_list->GetMobByNpcTypeID(110053);
		if ($mobid) {
			my $mobnpc = $mobid->CastToNPC();
			$mobnpc->SignalNPC(1);
		}
		else {
			#:: Spawn one and only one Iceclad Ocean >> Ritap (110053), with no grid or guildwar, at the current location
			my $mobid = quest::spawn2(110053, 0, 0, $x+9, $y+1, $z, $h);
			my $mob = $entity_list->GetMobID($mobid);
			my $mobnpc = $mob->CastToNPC();
			$mobnpc->SignalNPC(1);
		}
	}
	#:: Match a signal '2' from Iceclad Ocean >> Ritap (110053)
	if ($signal == 2) {
		quest::say("We be out. You'll be needin to make more. Arg!");
	}
	#:: Match a signal '101' from Iceclad Ocean >> General_Bragmur_ (110118)
	if ($signal == 101) {
		quest::say("Yar ye scruvy bearded dwarf, just over tha hill there.");
		#:: Send a signal "101" to Iceclad Ocean >> Ritap (110053) with a five second delay
		quest::signalwith(110053,101,5);
	} 
}
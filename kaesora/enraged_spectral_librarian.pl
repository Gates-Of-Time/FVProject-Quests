sub EVENT_SPAWN {
		#:: Create a timer 'depop' that triggers every 3000 seconds (50 min)
		quest::settimer("depop", 3000);
}

sub EVENT_DEATH_COMPLETE {
	my $num = plugin::RandomRange(2, 6);
	for (my $i = 1; $i <= $num; $i++) {
		my $xoff = plugin::RandomRange(5, 10);
		my $yoff = plugin::RandomRange(5, 10);
		my $adj = plugin::RandomRange(1, 4);
		my $entid1;
		if ($adj == 1) {
			#:: Spawn a Kaesora >> A_Freed_Soul (88093)
			$entid1 = quest::spawn2(88093, 15, 0, $x + $xoff, $y + $yoff, $z, $h);
		} 
		elsif ($adj == 2) {
			#:: Spawn a Kaesora >> A_Freed_Soul (88093)
			$entid1 = quest::spawn2(88093, 15, 0, $x - $xoff, $y + $yoff, $z, $h);
		} 
		elsif ($adj == 3) {
			#:: Spawn a Kaesora >> A_Freed_Soul (88093)
			$entid1 = quest::spawn2(88093, 15, 0, $x + $xoff, $y - $yoff, $z, $h);
		}
		else {
			#:: Spawn a Kaesora >> A_Freed_Soul (88093)
			$entid1 = quest::spawn2(88093, 15, 0, $x - $xoff, $y - $yoff, $z, $h);
		}
		
		$mob1 = $entity_list->GetMobID($entid1);
		$mobnpc1 = $mob1->CastToNPC();
		$mobnpc1->AddToHateList($npc->GetHateTop());
	}
}

sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		#:: Step the timer 'depop'
		quest::stoptimer("depop");
	} else {
		#:: Create a timer 'depop' that triggers every 3000 seconds (50 min)
		quest::settimer("depop", 3000);
	}
}

sub EVENT_TRADE {
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_TIMER {
	#:: Match the timer 'depop'
	if ($timer eq "depop") {
		#:: Step the timer 'depop'
		quest::stoptimer("depop");
		#:: Depop without spawn timer
		quest::depop();
	}
}
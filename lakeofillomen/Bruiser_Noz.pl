sub EVENT_SPAWN {
	#:: Send a sign '1' to Lake of Ill Omen >> Klok_Sargin (85140) with no delay
	quest::signalwith(85140, 1, 0);
}

sub EVENT_SIGNAL {
	#:: Match a signal '1' from /lakeofillomen/Klok_Sargin.pl
	if ($signal == 1) {
		quest::say("Ha!! Who dares to take what is Bruiser's!! I will make swamp mush out of them!!");
		#:: Set a timer 'Bruiser' that triggers every 10 seconds
		quest::set_timer("Bruiser", 10);
	}
}

sub EVENT_TIMER {
	#:: Match timer 'Bruiser'
	if ($timer eq "Bruiser") {
		quest::stoptimer("Bruiser");
		my @ClientList = $entity_list->GetClientList();
		#:: Match if the ClientList is not empty
		if (scalar @ClientList > 0) {
			foreach my $c (@ClientList) {
				if ($c->CalculateDistance($x, $y, $z) < 50) {
				#:: Attack the selected entity
				$npc->Attack($c);
				#:: Exit the loop after the first match
				last;
			}
		}
	}
}

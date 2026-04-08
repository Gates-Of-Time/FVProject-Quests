sub EVENT_SPAWN {
	#:: Set appearance to Sit
	$npc->SetAppearance(1);
}

sub EVENT_WAYPOINT_ARRIVE {
	#:: Match waypoint 1
	if ($wp == 1) {
		quest::emote("belches.");
		#:: Set appearance to Sit
		$npc->SetAppearance(1);
	}
	#:: Match waypoint 23
	elsif ($wp == 23) {
		quest::say("Hullo, Petcas. Four dwarven ales please. Line 'em up for me, I need to knock 'em down quick.");
		#:: Send a signal "1" to Thurgadin >> Petcas_Coldbeard (115141) with a 8000 ms (8 second) delay
		quest::signalwith(115141,1,8000);
	}
	#:: Match waypoint 45
	elsif ($wp == 45) {
		#:: Set appearance to Sit
		$npc->SetAppearance(1);
	}
}

sub EVENT_SIGNAL {
	#:: Match signal "1" from Thurgadin >> Petcas_Coldbeard (115141)
	if ($signal == 1) {
		quest::say("Long story, Pet. I was studying with Grand Historian Thoridain's daughter last week. Outta nowhere she came and kissed me right on the mouth! Just then her father walked in and wouldn't listen when I tried to explain.");
		#:: Send a signal "2" to Thurgadin >> Petcas_Coldbeard (115141) with a 8000 ms (8 second) delay
		quest::signalwith(115141,2,8000);
	}
	#:: Match signal "2" from Thurgadin >> Petcas_Coldbeard (115141)
	elsif ($signal == 2) {
		quest::say("He went and told the Dain himself! I was summoned to the throne the next day where his highness sentenced me to a month of Thoridain's sermons. I just now managed to sneak away for a little refreshment.");
		#:: Send a signal "3" to Thurgadin >> Petcas_Coldbeard (115141) with a 4000 ms (4 second) delay
		quest::signalwith(115141,3,4000);
	}
	#:: Match signal "3" from Thurgadin >> Petcas_Coldbeard (115141)
	elsif ($signal == 3) {
		quest::emote("hiccups!");
		#:: Send a signal "4" to Thurgadin >> Petcas_Coldbeard (115141) with a 3000 ms (3 second) delay
		quest::signalwith(115141,4,3000);
	}
	#:: Match signal "4" from Thurgadin >> Petcas_Coldbeard (115141)
	elsif ($signal == 4) {
		#:: Send a signal "5" to Thurgadin >> Petcas_Coldbeard (115141) with a 8000 ms (8 second) delay
		quest::signalwith(115141,5,8000);
	}
	#:: Match signal "5" from Thurgadin >> Petcas_Coldbeard (115141)
	elsif ($signal == 5) {
		quest::say("Thank ye, Pet. Yer most kind.");
		#:: Send a signal "6" to Thurgadin >> Petcas_Coldbeard (115141) with a 7000 ms (7 second) delay
		quest::signalwith(115141,6,7000);
	}
}
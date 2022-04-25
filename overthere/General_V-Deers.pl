sub EVENT_SPAWN {
	#:: Create a timer 'ZoneTime' that triggers every 60 seconds
	quest::settimer("ZoneTime", 60);
}

sub EVENT_TIMER {
	#:: Match timer 'ZoneTime'
	if ($timer eq "ZoneTime") {
		if ($zonehour == 21) {
			quest::moveto(2717, 2500, -49, 130, 1);
			#:: Create a timer 'Dialogue' that triggers every 525 seconds
			quest::settimer("Dialogue", 525);
		}
		elsif ($zonehour == 7) {
			quest::depop_withtimer();
		}
	}
	#:: Match timer 'Dialogue'
	elsif ($timer eq "Dialogue") {
		quest::stoptimer("Dialogue");
		quest::say("Dragoons!!  Attention!!  Right face!!");
		#:: Start pathing grid 277
		quest::start(277);
	}
}

sub EVENT_WAYPOINT_ARRIVE {
	if ($wp == 1) {
		quest::say("Forward.. march!!  Your left.. Your.. left, right, march!  Eighty.. second.. dragoon soldier!!  Pick up your weapon and follow me!!");
		#:: Send a signal '1' to the indicated NPC with no delay
		quest::signalwith(93186, 1, 0);		#:: #High_Priest_I`Xar
		quest::signalwith(93124, 1, 0);		#:: Dragoon_Barber_W`Selo
		quest::signalwith(93088, 1, 0);		#:: Dragoon_T`Vem
		quest::signalwith(93084, 1, 0);		#:: Dragoon_T`Vex
		quest::signalwith(93125, 1, 0);		#:: Dragoon_V`Lask
		quest::signalwith(93086, 1, 0);		#:: Dragoon_V`Resh
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}

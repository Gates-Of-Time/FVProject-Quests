sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("shifts his glance from $name and returns his stern glare to the plains beyond, 'My master is a high priest of the Dark Father. He is my mentor, and I his pupil. Nothing further need be spoken on the subject, as it has no importance to you and your own existence. I stress once more, move along, $name. The Captain is not one to tolerate his men being disrupted at their posts.'");
	}
}

sub EVENT_SPAWN {
	#:: Create a timer 'ZoneTime' that triggers every 60 seconds
	quest::settimer("ZoneTime", 60);
}

sub EVENT_TIMER {
	#:: Match timer 'ZoneTime'
	if ($timer eq "ZoneTime") {
		if ($zonehour == 21) {
			quest::moveto(2734, 2476, -49, 390, 1);
		}
		elsif ($zonehour == 7) {
			quest::depop_withtimer();
		}
	}
}

sub EVENT_SIGNAL {
	#:: Match a signal '1' from /overthere/General_V-Deers.pl
	if ($signal == 1) {
		#:: Set running to true (Run)
		quest::SetRunning(1);
		#:: Start pathing grid 283
		quest::start(283);
	}
}

sub EVENT_WAYPOINT_ARRIVE {
	if ($wp==28) {
		#:: Set running to false (Walk)
		quest::SetRunning(0);
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_SPAWN {
	#:: Create a timer 'despawn' that triggers every 1 second
	quest::settimer("despawn", 1);
}

sub EVENT_TIMER {
	#:: Match the timer 'despawn'
	if ($timer eq "despawn") {
		if ($x == 1970 && $y == 2593) {
			quest::setglobal("kerafyrm", 3, 7, "F");
			#:: Stop the timer 'despawn'
			quest::stoptimer("despawn");
			#:: Depop without spawn timer
			quest::depop();
		}
	}
}

sub EVENT_SLAY {
	quest::shout("Begone insect, I have much slaying yet to do!");
}

sub EVENT_NPC_SLAY {
	quest::shout("Begone insect, I have much slaying yet to do!");
}

sub EVENT_DEATH {
	quest::setglobal("kerafyrm", 3, 7, "F");
	#:: Stop the timer 'despawn'
	quest::stoptimer("despawn");
	#:: Depop without spawn timer
	quest::depop();
}

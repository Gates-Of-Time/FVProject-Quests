sub EVENT_SPAWN {
	#:: Create a timer 'gdivide5min' that triggers every 300 seconds (5 min 0 sec).
	quest::settimer("gdivide5min", 300);
}

sub EVENT_TIMER {
	if ($timer eq "gdivide5min") {
		#:: Stop the timer 'gdivide5min'.
		quest::stoptimer("gdivide5min");
		quest::say("The portal to Luclin will become active in five minutes. Please begin gathering at the Spires if you wish to travel.");
		#:: Create a timer 'gdivide3min' that triggers every 120 seconds (2 min 0 sec).
		quest::settimer("gdivide3min", 120);
	}
	elsif ($timer eq "gdivide3min") {
		#:: Stop the timer 'gdivide3min'.
		quest::stoptimer("gdivide3min");
		quest::say("As a reminder, the portal will become active in three minutes.");
		#:: Create a timer 'gdivide2min' that triggers every 60 seconds (1 min 0 sec).
		quest::settimer("gdivide2min", 60);
	}
	elsif ($timer eq "gdivide2min") {
		#:: Stop the timer 'gdivide2min'.
		quest::stoptimer("gdivide2min");
		quest::say("Two minutes till teleportation. Please be prepared to step inside the circle of Spires.");
		#:: Create a timer 'gdivide1min' that triggers every 60 seconds (1 min 0 sec).
		quest::settimer("gdivide1min", 60);
	}
	elsif ($timer eq "gdivide1min") {
		#:: Stop the timer 'gdivide1min'.
		quest::stoptimer("gdivide1min");
		quest::say("One minute till teleportation. Please be prepared to step inside the circle of Spires.");
		#:: Create a timer 'gdividetimer' that triggers every 60 seconds (1 min 0 sec).
		quest::settimer("gdividetimer", 60);
	}
	elsif ($timer eq "gdividetimer") {
		#:: Stop the timer 'gdividetimer'.
		quest::stoptimer("gdividetimer");
		quest::say("The portal to Luclin is about to become active. Please stand inside the circle of Spires and have a shard upon your person.");
		quest::setglobal(nexus_gd, 1, 3, "S60");
		#:: Create a timer 'gdivide5min' that triggers every 900 seconds (15 min 0 sec).
		quest::settimer("gdivide5min", 900);
		#:: Send a signal "101" to Great Divide >> Velious_Spires (118058) with no delay.
		quest::signalwith(118058, 101, 0);
	}
}
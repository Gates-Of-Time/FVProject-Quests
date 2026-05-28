sub EVENT_SPAWN {
	if (!defined $qglobals{kerafyrm} || $qglobals{kerafyrm} != 3) {
		#:: Create a timer 'kerafyrma' that triggers every 30 seconds
		quest::settimer("kerafyrma", 30);
	}
	elsif ($qglobals{kerafyrm} == 3) {
		#:: Create a timer 'depop' that triggers every 1 second
		quest::settimer("depop", 1);
	}
}

sub EVENT_TIMER {
	#:: Match the timer 'kerafyrma'
	if ($timer eq "kerafyrma") {
		if (defined $qglobals{kerafyrm} && $qglobals{kerafyrm} == 1) {
			#:: Send a signal "66" to Skyshrine >> #kerafyrm_trigger (114508) with no delay
			quest::signalwith(114508, 66, 0);
			#:: Send a signal "66" to Skyshrine >> #Ralgyn (114435) with a one second delay
			quest::signalwith(114435, 66, 1);
			#:: Stop the timer 'kerafyrma'
			quest::stoptimer("kerafyrma");
			#:: Create a timer 'kerafyrmb' that triggers every 30 seconds
			quest::settimer("kerafyrmb", 30);
		}
		elsif (defined $qglobals{kerafyrm} && $qglobals{kerafyrm} == 2) {
			#:: Spawn one NPC ID 114583 at (1197.73, 1257.63, 3.752) with heading 0
			quest::spawn2(114583, 20, 0, 1197.73, 1257.63, 3.752, 0);
			#:: Stop the timer 'kerafyrma'
			quest::stoptimer("kerafyrma");
			#:: Create a timer 'kerafyrmc' that triggers every 1 second
			quest::settimer("kerafyrmc", 1);
		}
	}
	#:: Match the timer 'kerafyrmb'
	elsif ($timer eq "kerafyrmb" && defined $qglobals{kerafyrm} && $qglobals{kerafyrm} == 2) {
		#:: Spawn one NPC ID 114583 at (1, 1, 1) with heading 0
		quest::spawn2(114583, 0, 0, 1, 1, 1, 0);
		#:: Stop the timer 'kerafyrmb'
		quest::stoptimer("kerafyrmb");
		#:: Create a timer 'kerafyrmc' that triggers every 1 second
		quest::settimer("kerafyrmc", 1);
	}
	#:: Match the timer 'kerafyrmc'
	elsif ($timer eq "kerafyrmc" && defined $qglobals{kerafyrm} && $qglobals{kerafyrm} == 3) {
		#:: Stop the timer 'kerafyrmc'
		quest::stoptimer("kerafyrmc");
		#:: Depop with spawn timer
		quest::depop_withtimer();
	}
	#:: Match the timer 'depop'
	elsif ($timer eq "depop") {
		#:: Stop the timer 'depop'
		quest::stoptimer("depop");
		#:: Depop with spawn timer
		quest::depop_withtimer();
	}
}

sub EVENT_DEATH {
	#:: Stop the timers 'kerafyrma', 'kerafyrmb', 'kerafyrmc', and 'depop'
	quest::stoptimer("kerafyrma");
	quest::stoptimer("kerafyrmb");
	quest::stoptimer("kerafyrmc");
	quest::stoptimer("depop");
}

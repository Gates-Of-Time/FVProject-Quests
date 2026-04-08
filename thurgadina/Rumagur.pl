sub EVENT_SIGNAL {
	#:: Match signal "1" from Thurgadin >> Horasug (115013)
	if ($signal == 1) {
		quest::say("Hey Fronden, I want a double of whatever you've been serving him!");
		#:: Send a signal "1" to Thurgadin >> Horasug (115013) with a 9000 ms (9 second) delay
		quest::signalwith(115013,1,9000);
	}
	#:: Match signal "2" from Thurgadin >> Horasug (115013)
	elsif ($signal == 2) {
		#:: Set running to enabled
		quest::SetRunning(1);
		#:: Start grid 7
		quest::start(7);
	}
	#:: Match signal "3" from Thurgadin >> Saramor (115010)
	elsif ($signal == 3) {
		quest::say("Aye Sara, much better indeed. With the help of good Fronden here I think I've finally figured out what was causing the alarming condition under me left arm. I must admit it was givin me quite a scare for a while, not to mention the pain was drivin me to drink.");
		#:: Send a signal "4" to Thurgadin >> Saramor (115010) with a 8000 ms (8 second) delay
		quest::signalwith(115010,4,8000);
	}
	#:: Match signal "4" from Thurgadin >> Loremaster_Fronden (115014)
	elsif ($signal == 4) {
		quest::say("Every day I come here to wet me whistle and I stand in the same spot, facin' the same way. As yer good wares take effect on me I lean more and more upon the bar here. The constant pressure was causin' me to develop... well... barsores. So I'll just have to face the other way from now on.");
		#:: Send a signal "2" to Thurgadin >> Loremaster_Fronden (115014) with a 8000 ms (8 second) delay
		quest::signalwith(115014,2,8000);
	}
	#:: Match signal "5" from Thurgadin >> Horasug (115013)
	elsif ($signal == 5) {
		#:: Send a signal "3" to Thurgadin >> Loremaster_Fronden (115014) with no delay
		quest::signalwith(115014,3);
	}
	#:: Match signal "6" from Thurgadin >> Horasug (115013)
	elsif ($signal == 6) {
		#:: Send a signal "4" to Thurgadin >> Loremaster_Fronden (115014) with a 50000 ms (50 second) delay
		quest::signalwith(115014,4,50000);
	}
	#:: Match signal "7" from Thurgadin >> Horasug (115013)
	elsif ($signal == 7) {
		#:: Send a signal "5" to Thurgadin >> Loremaster_Fronden (115014) with a 50000 ms (50 second) delay
		quest::signalwith(115014,5,50000);
	}
	#:: Match signal "8" from Thurgadin >> Loremaster_Fronden (115014)
	elsif ($signal == 8) {
		quest::say("Say, Fronden, ya got anything stronger lyin' around back there?");
		#:: Send a signal "6" to Thurgadin >> Loremaster_Fronden (115014) with a 8000 ms (8 second) delay
		quest::signalwith(115014,6,8000);
	}
	#:: Match signal "9" from Thurgadin >> Loremaster_Fronden (115014)
	elsif ($signal == 9) {
		quest::say("I'd be honored to try your family recipe. Thank ye.");
		#:: Send a signal "7" to Thurgadin >> Loremaster_Fronden (115014) with a 8000 ms (8 second) delay
		quest::signalwith(115014,7,8000);
	}
	#:: Match signal "10" from Thurgadin >> Loremaster_Fronden (115014)
	elsif ($signal == 10) {
		quest::emote("looks at Fronden through crossed eyes and whispers hoarsely, 'Smooth'.");
	}
}

sub EVENT_WAYPOINT_ARRIVE {
	#:: Match waypoint 4
	if ($wp == 4) {
		#:: Set running to disabled
		quest::SetRunning(0);
	}
	#:: Match waypoint 9
	elsif ($wp == 9) {
		#:: Stop current movement
		quest::stop();
	}
}


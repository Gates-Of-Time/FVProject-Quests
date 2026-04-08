sub EVENT_WAYPOINT_ARRIVE {
	if ($wp == 1) {
		quest::say("My beloved brethren! Hear me now, I have seen a sacred vision...");
		#:: Send a signal "1" to Thurgadin >> Rumagur (115011) with no delay
		quest::signalwith(115011,1);
		#:: Send a signal "1" to Thurgadin >> Rumagur (115187) with no delay
		quest::signalwith(115187,1);
	}
	elsif ($wp == 2) {
		quest::say("Uh oh");
		quest::SetRunning(1);
		#:: Send a signal "2" to Thurgadin >> Rumagur (115011) with no delay
		quest::signalwith(115011,2);
		#:: Send a signal "2" to Thurgadin >> Rumagur (115187) with no delay
		quest::signalwith(115187,2);
		#:: Send a signal "3" to Thurgadin >> Saramor (115010) with no delay
		quest::signalwith(115010,3);
		#:: Send a signal "2" to Thurgadin >> Jorumin (115012) with no delay
		quest::signalwith(115012,2);
		#:: Send a signal "2" to Thurgadin >> Jorumin (115188) with no delay
		quest::signalwith(115188,2);
	}
	elsif ($wp == 19) {
		quest::SetRunning(0);
		quest::say("Whew, that was a close one!");
		#:: Send a signal "1" to Thurgadin >> Doogle_McBanick (115142) with no delay
		quest::signalwith(115142,1);
	}
	elsif ($wp == 42) {
		#:: Set appearance to Sit
		$npc->SetAppearance(1);
	}
}

sub EVENT_SIGNAL {
	#:: Match if signal from thurgadina/Rumagur.pl is "1"
	if ($signal == 1) {
		quest::say("In my vision, Brell himself spoke to me! He indicated that the path to true enlightenment could only be found through sobriety. Substances such as alcohol only serve to cloud the mind and keep us from our true destiny!");
		#:: Send a signal "1" to Thurgadin >> Saramor (115010) with no delay
		quest::signalwith(115010,1);
		#:: Send a signal "1" to Thurgadin >> Loremaster_Fronden (115014) with no delay
		quest::signalwith(115014,1);
	}
	#:: Match if signal from thurgadina/Loremaster_Fronden.pl is "2"
	elsif ($signal == 2) {
		quest::say("Mock me if you will brothers, I am off to seek audience with the Dain where I will convince him of the evils of liquor. I am sure he will have our taverns serving only water and juice by day's end.");
		#:: Send a signal "2" to Thurgadin >> Saramor (115010) with no delay
		quest::signalwith(115010,2);
		#:: Send a signal "1" to Thurgadin >> Jorumin (115012) with no delay
		quest::signalwith(115012,1);
		#:: Send a signal "1" to Thurgadin >> Jorumin (115188) with no delay
		quest::signalwith(115188,1);
	}
	#:: Match if signal from thurgadina/Doogle_McBanick.pl is "3"
	elsif ($signal == 3) {
		quest::say("I had a sacred vision from Brell himself!");
		#:: Send a signal "2" to Thurgadin >> Doogle_McBanick (115142) with no delay
		quest::signalwith(115142,2);
	}
	#:: Match if signal from thurgadina/Doogle_McBanick.pl is "4"
	elsif ($signal == 4) {
		quest::emote("thinks for a moment, looking at the roomful of rugged patrons,");
		#:: Send a signal "3" to Thurgadin >> Doogle_McBanick (115142) with no delay
		quest::signalwith(115142,3);
	}
	#:: Match if signal from thurgadina/Doogle_McBanick.pl is "5"
	elsif ($signal == 5) {
		quest::say("Heh, I saw meself here at Doogie's Drinks partaking of the finest Coldain ale in the land, of course!");
		#:: Send a signal "4" to Thurgadin >> Doogle_McBanick (115142) with no delay
		quest::signalwith(115142,4);
	}
}
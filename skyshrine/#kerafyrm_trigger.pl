sub EVENT_SIGNAL {
	#:: Match if signal from skyshrine/A_Guardian_of_the_Shrine.pl is "66"
	if ($signal == 66) {
		quest::shout("BEWARE! BEWARE! The Sleeper has been awakened! He means death for all who remain here! Time is short, flee the Skyshrine now if you value your life!");
	}
}

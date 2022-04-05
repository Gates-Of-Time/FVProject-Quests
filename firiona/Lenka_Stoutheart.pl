sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("sips on her ale, 'Look what we have here, Bronto! A would be hero!");
		#:: Send a signal '1' to Firiona Vie >> Bronto_Thudfoot (84129) with a one second delay
		quest::signalwith(84129, 1, 1);
	}
	elsif ($text=~/see something interesting/i) {
		quest::emote("akes a jagged scimitar out of a wrap and lets you hold it. You feel as though it is linked to the spirit world. Lenka grabs it back. 'No, no! You cant keep it. But I can tell you there are plenty more weopons and armor like this. Just have to do a little dragon slaying.'");
		#:: Send a signal '2' to Firiona Vie >> Bronto_Thudfoot (84129) with a one second delay
		quest::signalwith(84129, 2, 1);
	}
	elsif ($text=~/lizardtown/i) {
		quest::say("The trackers of Firiona Vie have come back with reports that the Iksar are back in force and have a city somewhere in the heart of Kunark. There goes the neighborhood...again.");
	}
}

sub EVENT_SIGNAL {
	#:: Match a signal '1' from /firiona/Bronto_Thudfoot.pl
	if ($signal == 1) {
		quest::say("Yes! Those accursed scum of the high seas. And that kid who didn't know how to forge a simple beacon. Kinda looked like you! Nah. Must be the grog.");
	}
	#:: Match a signal '2' from /firiona/Bronto_Thudfoot.pl
	elsif ($signal == 2) {
		quest::say("We're just kidding with you, kid. Although they are making heroes kind of small these days. Hey you [want to see something interesting]?");
	}
	#:: Match a signal '3' from /firiona/Bronto_Thudfoot.pl
	elsif ($signal == 3) {
		quest::say("I hear they sell the stuff in only two places. Lizardtown and Neriak. Hmmm. Now, why is that?");
	}
}

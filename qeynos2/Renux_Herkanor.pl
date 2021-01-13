sub EVENT_WAYPOINT_ARRIVE {
	#:: Match waypoint 3
	if ($wp == 3) {
		quest::say("When is Lomarc getting back from Odus? He was supposed to be back three nights ago. Have you heard anything?");
		#:: Send a signal "3" to North Qeynos >> Hanns_Krieghor (2074) with no delay
		quest::signalwith(2074, 3, 0);
	}
	#:: Match waypoint 4
	elsif ($wp == 4) {
		quest::say("Hanns, you are not going to want to hear this, but one of our boys in Donovan's gang swears he saw Stanos in the Karanas a week ago. And we still haven't cornered Malka Rale.");
		#:: Send a signal "4" to North Qeynos >> Hanns_Krieghor (2074) with no delay
		quest::signalwith(2074, 4, 0);
	}
}

sub EVENT_SIGNAL {
	#:: Match a signal "1" from /qeynos2/Hanns_Krieghor.pl
	if ($signal == 1) {
		quest::say("Ok, I'll send someone out to meet [Lomarc] behind the [Mermaid's Lure] tonight.");
	}
	#:: Match a signal "1" from /qeynos2/Hanns_Krieghor.pl
	elsif ($signal == 2) {
		quest::say("Very well, Father is as good as dead. Did I ever mention that I really hate family reunions? <chuckle>. I am gone!");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("You need something, or are you just browsing?");
	}
	elsif ($text=~/lomarc/i) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("Lomarc? He's a small time smuggler who runs from here to Odus. He got sloppy on his last run, and now the guards are on to him. We need to have someone [meet him behind the Mermaid's Lure] tonight to pick up a package.");
		}
		else {
			quest::say("Heh... With all you've done, I'm surprised you're still alive.");
		}
	}
	elsif ($text=~/mermaid's lure/i) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("Hmm, you think you can handle it? Eh, Lomarc is nothing but a two-bit smuggler anyway. Take this payment to him for the package, and don't let him give you any grief. Got it?");
			#:: Give a 18793 - Lomarc's Payment
			quest::summonitem(18793);
		}
		else {
			quest::say("Heh... With all you've done, I'm surprised you're still alive.");
		}
	}
}

sub EVENT_ITEM {
	#:: Match a 13716 - Kerran Doll
	if (plugin::takeItems(13716 => 1)) {
		quest::say("Yes, I see you aim to please. I hope you gave Lomarc the payment that he deserved? Heh, that punk had no idea of the value of this shipment. The emerald inside this doll will fetch a pretty penny from those greedy merchants.");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(223, 30);		#:: + Circle of Unseen Hands
		quest::faction(291, -4);		#:: - Merchants of Qeynos
		quest::faction(230, 4);			#:: + Corrupt Qeynos Guards
		quest::faction(262, -4);		#:: - Guards of Qeynos
		quest::faction(273, 4);			#:: + Kane Bayle
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

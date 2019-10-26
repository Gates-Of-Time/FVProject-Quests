sub EVENT_WAYPOINT_ARRIVE {
	#:: Match waypoint 10
	if ($wp == 10) {
		quest::say("Hey Hanns.. Have you gotten word from Prak about the spy in Carson's guards?");
		#:: Send a signal "1" to North Qeynos >> Hanns_Krieghor (2074) with no delay
		quest::signalwith(2074, 1, 0);
	}
}

sub EVENT_SIGNAL {
	#:: Match signal "1" from /qeynos2/Knargon_Lanenda.pl
	if (($signal == 1) && ($x == 163) && ($y == 144)) {
		quest::say("Yeah, whatever, Knarg. If I were you, I wouldn't mess around with [Renux]. She's in tight with [Hanns], and you know how he is.");
	}
	#:: Match a signal "2" from /qeynos2/Hanns_Krieghor.pl
	elsif ($signal == 2) {
		quest::say("[Rujahn] Tahslek, huh? I've never heard of him, but those bandits seem to have a new leader every month or so.");
		#:: Send a signal "2" to North Qeynos >> Hanns_Krieghor (2074) with no delay
		quest::signalwith(2074, 2, 0);
	}
	#:: Match a signal "3" from /qeynos2/Hanns_Krieghor.pl
	elsif ($signal == 3) {
		quest::say("I'll send one of our best men to Highpass and eliminate [Rujahn]'s spy.");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hey..  My name's Zannsin, but you can call me [Zan].");
	}
	elsif ($text=~/zan/i) {
		quest::say("That's what they call me. Now quit bugging me, I have work to do.");
	}
	elsif ($text=~/renux/i) {
		quest::say("She is second in command around here. She and [Hanns] go way back, from what I hear.. Renux is probably the only person Hanns trusts.");
	}
	elsif ($text=~/hanns/i) {
		quest::say("Hanns, he runs things around here. Years ago, Hanns took over Ghil's old ring and started up the Circle of Unseen Hands. The Circle quickly took any market opposition out of Qeynos. We currently have connections in Erudin, Highpass and even Freeport.");
	}
	elsif ($text=~/rujahn/i) {
		#:: Not found
	}
	elsif ($text=~/men to prak in highpass/i) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("Hmm, I see. Maybe you can help us out with this, $name, huh? I think it'd be a perfect opportunity for you to prove just how valuable you are to our little organization. Take this letter to Prak at Golden Rooster in Highpass, and see what you can do to help him out.");
			#:: Give a 18795 - Letter for Prak
			quest::summonitem(18795);
		}
		else {
			quest::say("The Circle has recognized your deeds and contributions, but I think you need to prove your worth to us a little more.");
		}
	}
}

sub EVENT_ITEM {
	#:: Match a 18028 - Message to Zannsin
	if (plugin::takeItems(18028 => 1)) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("Great work, $name... The Circle is very pleased with your performance of late, and as a small reward for our most trusted members, I give you this... the cloak of the Unseen Hands. It's good to know that we can count on you to get the job done... here, $name, go relax and have some wine, on me.");
			#:: Give a 1048 - Black Leather Cloak
			quest::summonitem(1048);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(223, 125);		#:: + Circle Of Unseen Hands
			quest::faction(291, -18);		#:: - Merchants of Qeynos
			quest::faction(230, 18);		#:: + Corrupt Qeynos Guards
			quest::faction(262, -18);		#:: - Guards of Qeynos
			quest::faction(273, 12);		#:: + Kane Bayle
			#:: Grant a small amount of experience
			quest::exp(500);
			#:: Create a hash for storing cash - 2000 to 2500cp
			my %cash = plugin::RandomCash(2000,2500);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
		else {
			quest::say("The Circle has recognized your deeds and contributions, but I think you need to prove your worth to us a little more.");
			#:: Return a 18028 - Message to Zannsin
			quest::summonitem(18028);
		}								
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

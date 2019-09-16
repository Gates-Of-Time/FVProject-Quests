my $following;
my $wenbie;

sub EVENT_WAYPOINT_ARRIVE {
	if ($following == 1) {
		quest::stop();
	}
}

sub EVENT_WAYPOINT_DEPART {
	if ($following == 1) {
		if ($wenbie == 47) {
			quest::moveto(-18.6621, 63.5473, 3.127);
			$wenbie == 46;
		}
		elsif ($wenbie == 46) {
			quest::moveto(-104.226, 62.8267, 4.127);
			$wenbie == 45;
		}
		elsif ($wenbie == 45) {
			quest::moveto(-143.754, 104.344, 4.127);
			$wenbie == 44;
		}
		elsif ($wenbie == 44) {
			quest::moveto(-93.2402, 156.449, 3.127);
			$wenbie == 43;
		}
		elsif ($wenbie == 43) {
			quest::moveto(-90.5985, 183, 3.127);
			$wenbie == 42;
		}
		elsif ($wenbie == 42) {
			quest::moveto(-65, 183, 2.128);
			$wenbie == 41;
		}
		elsif ($wenbie == 41) {
			quest::moveto(-86.9175, 188.289, 3.127);
			$wenbie == 40;
		}
		elsif ($wenbie == 40) {
			quest::moveto(-87.2607, 216.142, 3.127);
			$wenbie == 39;
		}
		elsif ($wenbie == 39) {
			quest::moveto(-48.3101, 217.746, 3.127);
			$wenbie == 38;
		}
		elsif ($wenbie == 38) {
			quest::moveto(-43.5563, 376.734, 3.127);
			$wenbie == 37;
		}
		elsif ($wenbie == 37) {
			quest::moveto(-36.2987, 390.133, 3.127);
			$wenbie == 36;
		}
		elsif ($wenbie == 36) {
			quest::moveto(-34.7944, 440.757, 3.127);
			$wenbie == 35;
		}
		elsif ($wenbie == 35) {
			quest::moveto(-84.9884, 440.999, 3.127);
			$wenbie == 34;
		}
		elsif ($wenbie == 34) {
			quest::moveto(-102.52, 428.333, 3.127);
			$wenbie == 33;
		}
		elsif ($wenbie == 33) {
			quest::moveto(-152.239, 431.63, 2.127);
			$wenbie == 32;
		}
		elsif ($wenbie == 32) {
			quest::moveto(-157.816, 480.877, 3.127);
			$wenbie == 31;
		}
		elsif ($wenbie == 31) {
			quest::moveto(-179.053, 525.125, 3.127);
			$wenbie == 30;
		}
		elsif ($wenbie == 30) {
			quest::moveto(-223.565, 523.491, 3.127);
			$wenbie == 29;
		}
		elsif ($wenbie == 29) {
			quest::moveto(-222.995, 460.239, 3.127);
			$wenbie == 28;
		}
		elsif ($wenbie == 28) {
			quest::moveto(-276.677, 458.924, 3.127);
			$wenbie == 27;
		}
		elsif ($wenbie == 27) {
			quest::moveto(-291, 454, 3.128);
			$wenbie == 26;
		}
		elsif ($wenbie == 26) {
			quest::moveto(-314.255, 458.695, 3.127);
			$wenbie == 25;
		}
		elsif ($wenbie == 25) {
			quest::moveto(-350.804, 445.46, 3.127);
			$wenbie == 24;
		}
		elsif ($wenbie == 24) {
			quest::moveto(-368.259, 409.417, 3.127);
			$wenbie == 23;
		}
		elsif ($wenbie == 23) {
			quest::moveto(-344.203, 348.401, 3.127);
			$wenbie == 22;
		}
		elsif ($wenbie == 22) {
			quest::moveto(-340.721, 303.88, 3.127);
			$wenbie == 21;
		}
		elsif ($wenbie == 21) {
			quest::moveto(-283.859, 302.487, 3.127);
			$wenbie == 20;
		}
		elsif ($wenbie == 20) {
			quest::moveto(-269.706, 313.806, 2.127);
			$wenbie == 19;
		}
		elsif ($wenbie == 19) {
			quest::moveto(-224.199, 311.876, 3.127);
			$wenbie == 18;
		}
		elsif ($wenbie == 18) {
			quest::moveto(-223.795, 250.975, 3.127);
			$wenbie == 17;
		}
		elsif ($wenbie == 17) {
			quest::moveto(-203.535, 196.464, 3.127);
			$wenbie == 16;
		}
		elsif ($wenbie == 16) {
			quest::moveto(-224.146, 147.187, 3.127);
			$wenbie == 15;
		}
		elsif ($wenbie == 15) {
			quest::moveto(-502.326, 147.408, 3.127);
			$wenbie == 14;
		}
		elsif ($wenbie == 14) {
			quest::moveto(-515.715, 157.424, 3.127);
			$wenbie == 13;
		}
		elsif ($wenbie == 13) {
			quest::moveto(-569.423, 158.13, 3.127);
			$wenbie == 12;
		}
		elsif ($wenbie == 12) {
			quest::moveto(-610.661, 152.93, 18.755);
			$wenbie == 11;
		}
		elsif ($wenbie == 11) {
			quest::moveto(-653, 126, 3.99704);
			$wenbie == 10;
		}
		elsif ($wenbie == 10) {
			quest::moveto(-637.501, 141.806, 3.127);
			$wenbie == 9;
		}
		elsif ($wenbie == 9) {
			quest::moveto(-613.674, 157.296, 19.1266);
			$wenbie == 8;
		}
		elsif ($wenbie == 8) {
			quest::moveto(-509.769, 159.783, 3.127);
			$wenbie == 7;
		}
		elsif ($wenbie == 7) {
			quest::moveto(-500.324, 146.372, 3.127);
			$wenbie == 6;
		}
		elsif ($wenbie == 6) {
			quest::moveto(-225.235, 146.372, 3.127);
			$wenbie == 5;
		}
		elsif ($wenbie == 5) {
			quest::moveto(-150.4, 103.496, 4.127);
			$wenbie == 4;
		}
		elsif ($wenbie == 4) {
			quest::moveto(-97.4342, 60.0285, 4.127);
			$wenbie == 3;
		}
		elsif ($wenbie == 3) {
			quest::moveto(-133.0100, -12.1300, 3.127);
			$wenbie == 2;
		}
		elsif ($wenbie == 2) {
			quest::moveto(-71.1500, -85.6500, 3.127);
			$wenbie == 1;
		}
		elsif ($wenbie == 1) {
			quest::moveto(-145.8400, -224.0500, 4.130);
			$wenbie == 0;
		}
		elsif ($wenbie == 0) {
			quest::moveto(-223.1500, -226.2400, 3.127, 509, 1);
			$following = 0;
		}
	}
}

sub EVENT_COMBAT {
	if ($combat_state == 1) {
		quest::say("Time to die $name!");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello, $name. What brings you to Qeynos? Must be the mighty fine muffins over at [" . quest::saylink("Voleen's Bakery") . "]. I just love those muffins!");
	}
	elsif ($text=~/voleen/i) {
		quest::say("Oh, it will be easier for us both if I just show you where it is. Follow me. But be quick about it, because I have to get back to my patrol.");
		$following = 1;
		$wenbie = $wp;
	}
}

sub EVENT_ITEM {
	#:: Match a 13014 - Muffin
	if (plugin::takeItems(13014 => 1)) {
		quest::say("Oh, thank you so much. I do get hungry on patrol. Here, please take this reward for your kindness.");
		#:: Ding!
		quest::ding();
		my $randomchance = (quest::ChooseRandom(1,2,3,4,5));
		if ($randomchance < 5) {
			#:: Set factions
			quest::faction(262, 1);		#:: + Guards of Qeynos
			quest::faction(219, 1);		#:: + Antonius Bayle
			quest::faction(230, -1);	#:: - Corrupt Qeynos Guards
			quest::faction(223, -1);	#:: - Circle Of Unseen Hands
			quest::faction(291, 1);		#:: + Merchants of Qeynos
			#:: Grant a small amount of experience
			quest::exp(15);
			#:: Create a hash for storing cash - 1 to 10cp
			my %cash = plugin::RandomCash(1,10);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
		elsif ($randomchance > 4) {
			#:: Give a 13053 - Brass Ring
			quest::summonitem(13053);
			#:: Set factions
			quest::faction(262, 1);		#:: + Guards of Qeynos
			quest::faction(219, 1);		#:: + Antonius Bayle
			quest::faction(230, -1);	#:: - Corrupt Qeynos Guards
			quest::faction(223, -1);	#:: - Circle Of Unseen Hands
			quest::faction(291, 1);		#:: + Merchants of Qeynos
			#:: Grant a small amount of experience
			quest::exp(15);
			#:: Create a hash for storing cash - 1 to 10cp
			my %cash = plugin::RandomCash(1,10);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

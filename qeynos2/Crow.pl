sub EVENT_SAY {
	if ($text=~/hail/i) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("Welcome to Crow's! If you're thirsty, we have a fine selection of brews and ales.");
		}
		else {
			quest::say("Heh... With all you've done, I'm surprised you're still alive.");
		}
	}
}

sub EVENT_SIGNAL {
	#:: Match a signal "1" from qeynos2/Sabnie_Blagard.pl
	if ($signal == 1) {
		quest::say("You ok Sabs?");
		#:: Send a signal "2" to North Qeynos >> Sabnie_Blagard (2083) with no delay
		quest::signalwith(2083, 2, 0);
	}
	#:: Match a signal "2" from qeynos2/Sabnie_Blagard.pl
	elsif ($signal == 2) {
		quest::say("Anything you say, my love.");
		#:: Send a signal "5" to North Qeynos >> Sabnie_Blagard (2083) with no delay
		quest::signalwith(2083, 5, 0);
	}
	#:: Match a signal "3" from qeynos2/Sabnie_Blagard.pl
	elsif ($signal == 3) {
		quest::say("Excellent. To think that he thought he could stroll in here from Highpass and take over my action. He will learn the hard way what happens to merchants who think they can operate here without our support and protection.");
	}
	#:: Match a signal "4" from qeynos2/Flynn_Merrington.pl
	elsif ($signal == 4) {
		quest::say("Bwah! Ha! Ha! I love it when he does that! HA HA HA! You are too much, Flynn!");
	}
}

sub EVENT_ITEM {
	#:: Match a 17600 - Tattered Leather Pouch
	if (plugin::takeItems(17600 => 1)) {
		quest::say("What are you? The Rat's new bag man? Peh, he is useless. That bum drinks any gold he gets. Here ya go, kid!");
		#:: Give a 13901 - Crow's Special Brew
		quest::summonitem(13901);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(223, 2);			#:: + Circle Of Unseen Hands
		quest::faction(291, -1);		#:: - Merchants of Qeynos
		quest::faction(230, 1);			#:: + Corrupt Qeynos Guards
		quest::faction(262, -1);		#:: - Guards of Qeynos
		quest::faction(273, 1);			#:: + Kane Bayle
		#:: Grant a small amount of experience
		quest::exp(250);
		#:: Create a hash for storing cash - 200 to 500cp
		my %cash = plugin::RandomCash(200,500);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_DEATH_COMPLETE {
	quest::say("You can't break the Circle.. kill one, and.. there will always be another to take his place.. and.. take revenge.");
}

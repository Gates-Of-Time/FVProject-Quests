sub EVENT_SPAWN {
	quest::settimer("depop",1800000);
}

sub EVENT_TIMER {
	#:: Use eq for string comparison to match timer "depop"
	if ($timer eq "depop") {
		# Stop timer "depop" from looping
		quest::stoptimer("depop"); 
		quest::depop(); 
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, traveller! I am Karg of Clan Icebear, lone hunter of the Everfrost Peaks. Have you seen any polar bears about?");
	}
	if ($text=~/yes/i) {
		quest::say("I hunt polar bears and furnish cloaks from their [" . quest::saylink("pelts") . "]. They keep you warm in this cold weather.");
	}
	if ($text=~/pelts/i) {
		quest::say("Have you some polar bear pelts? You know I can furnish warm cloaks from them, and for you I will do it for the measly sum of 5 platinum pieces.");
	}
	if ($text=~/werewolf/i) {
		quest::say("Werewolf?! I have not seen a werewolf in years. Have you slain one and collected its [" . quest::saylink("skin") . "] or [" . quest::saylink("claws") . "]?");
	}
	if ($text=~/skin/i) {
		quest::say("You have managed to procure a werewolf skin?? Amazing! Well then, I will let you know that for a fee of 100 platinum, I can craft a hearty cloak for you if you leave the skin and the coin with me.");
	}
	if ($text=~/claws/i) {
		quest::say("Oh, a werewolf claw? If you were to give me the claw and 75 platinum, I could craft excellent gauntlets.");
	}
}

sub EVENT_ITEM {
	#:: Set a scalar variable to convert currency
	my $cash = $copper + $silver * 10 + $gold * 100 + $platinum * 1000;
	#:: Match 13761 - Polar Bear Skin and 5pp
	if ($cash >= 5000) {
		if (plugin::check_handin(\%itemcount, 13761 => 1)) {
			quest::emote("It has been a long time since I crafted items from polar bears. I hope this aids you in your journeys. Farewell, friend, until we meet again");
			#:: Give a 2912 - Polar Bear Cloak
			quest::summonitem(2912);
			quest::ding();
			#:: Despawn with timer
			quest::depop_withtimer();
		}
	}
	#:: Match 13715 - Werewolf Claws and 75pp
	elsif ($cash >= 75000) {
		if (plugin::check_handin(\%itemcount, 13715 => 1)) {
			quest::say("It has been a long time since I crafted items from werewolves. I hope this aids you in your journeys. Farewell, friend, until we meet again");
			#:: Give a 2402 - Lupine Claw Gauntlets
			quest::summonitem(2402); # Lupine Claw Gauntlets
			quest::ding();
			#:: Despawn with timer
			quest::depop_withtimer();
		}
	}
	#:: Match 13714 - Werewolf Pelt and 100pp
	elsif ($cash >= 100000) {
		if (plugin::check_handin(\%itemcount, 13714 => 1)) {
			quest::say("It has been a long time since I crafted items from werewolves. I hope this aids you in your journeys. Farewell, friend, until we meet again");
			#:: Give a 2401 - Werewolf Skin Cloak
			quest::summonitem(2401);
			quest::ding();
			#:: Despawn with timer
			quest::depop_withtimer();
		}
	}
	else {
		#:: Return unused cash
		quest::givecash($copper, $silver, $gold, $platinum);
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}

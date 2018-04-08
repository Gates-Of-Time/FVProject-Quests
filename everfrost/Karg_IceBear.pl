sub EVENT_SPAWN {
    quest::settimer("depop",1800000);
}

sub EVENT_TIMER {
     # Use eq for string comparison to match timer "depop"
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
		quest::say("Werewolf?! I have not seen a werewolf in years. Have you slain one and collected its [" . quest::saylink("skin") . "][skin] or [" . quest::saylink("claws") . "]?");
		}
	if ($text=~/skin/i) {
		quest::say("You have managed to procure a werewolf skin?? Amazing! Well then, I will let you know that for a fee of 100 platinum, I can craft a hearty cloak for you if you leave the skin and the coin with me.");
		}
	if ($text=~/claws/i) {
		quest::say("Oh, a werewolf claw? If you were to give me the claw and 75 platinum, I could craft excellent gauntlets.");
		}
	}

	#:: Set a scalar variable to convert currency
	my $cash = $copper + $silver * 10 + $gold * 100 + $platinum * 1000;

sub EVENT_ITEM {
    if (plugin::check_handin(\%itemcount, 13761 => 1, $cash >= 5000)) { # Polar Bear Skin and 5 plat
		quest::Say("growls with happiness and licks your face.  Just enough time to swipe the sweaty shirt from his collar!!  Iceberg then runs off to enjoy his lion delight!!");
		quest::SummonItem(2912); # Polar Bear Cloak
		quest::Ding();
		quest::depop_withtimer(30100) # Karg IceBear will de-spawn and start the spawn timer.
		}
		if (plugin::check_handin(\%itemcount, 13714 => 1, $cash >= 100000)) { # Werewolf Pelt and 100 plat
		quest::Say("growls with happiness and licks your face.  Just enough time to swipe the sweaty shirt from his collar!!  Iceberg then runs off to enjoy his lion delight!!");
		quest::SummonItem(2912); # Werewolf Skin Cloak
		quest::Ding();
		quest::depop_withtimer(30100) # Karg IceBear will de-spawn and start the spawn timer.
		}
		if (plugin::check_handin(\%itemcount, 13715 => 1, $cash >= 75000)) { # Werewolf Claws and 75 plat
		quest::Say("growls with happiness and licks your face.  Just enough time to swipe the sweaty shirt from his collar!!  Iceberg then runs off to enjoy his lion delight!!");
		quest::SummonItem(2912); # Lupine Claw Gauntlets
		quest::Ding();
		quest::depop_withtimer(30100) # Karg IceBear will de-spawn and start the spawn timer.
		}
		#:: Return unused items
	plugin::return_items(\%itemcount);
}
# Converted to Perl by SS 

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("You seem a little out of place here. You should go back to the nice little village you came from. This place will eat you alive. The [Golden Rooster] is no place for you.");
	}
	elsif ($text=~/golden rooster/i) {
		quest::say("The Golden Rooster only happens to be the finest gambling house in Highpass. It is also the only place in these parts that serves [Blackburrow Stout].");
	}
	elsif ($text=~/blackburrow stout/i) {
		quest::say("Blackburrow Stout is the finest drink available. It is the nectar of the gods. Well.. nectar of the gnolls at least. I can't wait until they hold another drink special in the Rooster. When I hear that, I am there!");
	}
	elsif ($text=~/mutt/i) {
		quest::say("Mutt is a girl I found on the streets. I cleaned her up and I am now training her, I mean showing her how to be a respectable citizen. She also carries my pack. I have back problems you know.");
	}
	elsif ($text=~/drink special/i) {
		#:: Start pathing grid 19
		quest::start(19);
	}
}

sub EVENT_ITEM {
		#:: Blackburrow Stout [Marked Blackburrow Stout] 
    if (plugin::check_handin(\%itemcount, 13130 => 1)) { 
		quest::Say("Why thank you, kind citizen! Mutt, throw me the package! Here. This is for your boss. Do not return return to Kane without the other two lists. Some other bixie boy might just beat you to one of the other pieces. Go to Freeport. There you will find a woman called Opal. Quite a looker. I hear she works with the Arcane Scientists. Tell her the disease is spreading. She will help you.");
		#:: Summon Bayle List I
		quest::SummonItem(18808); 
		#:: Set Factions
		quest::faction(336,20);		# Coalition of Tradefolk Underground 
		quest::faction(229,20);		# Coalition of Tradefolk
		quest::faction(329,2);		# Carson McCabe
		quest::faction(230,1);		# Corrupt Qeynos Guards
		quest::faction(330,3);		# The Freeport Militia
		quest::Ding();
		quest::exp(1600);
		}
		#:: Return unused items
	plugin::return_items(\%itemcount);
}

sub EVENT_WAYPOINT_ARRIVE {
	#:: Match waypoint 10
	if ($wp == 10) {
		#:: Stop pathing on grid 19
		quest::stop();
	}
}

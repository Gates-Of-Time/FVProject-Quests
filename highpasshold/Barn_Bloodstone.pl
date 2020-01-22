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
		#:: Path to the Golden Rooster
		quest::moveto(-197, 383, 3.75, 43, 1);
		#:: Set a timer 'drink' to loop every 300 seconds (5 min)
		quest::settimer("drink", 300);
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_TIMER {
	#:: Match timer 'drink'
	if ($timer eq "drink") {
		#:: Stop the timer 'drink'
		quest::stoptimer("drink");
		#:: Return to spawn point and guard
		quest::moveto(-60, 422, 3.75, 283, 1);
	}
}

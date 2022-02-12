sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("I hope you have come to assist in the defense of the gate. We have had numerous assaults by the goblins. No doubt it is due to those [goblin watchers].");
	}
	elsif ($text=~/goblin watchers/i) {
		quest::say("Goblin Watchers are rumored to be the communication link between goblin outposts and patrols. We have found Goblin Watcher Signal Torches on a few of them. You bring me back no less than three and I will reward you.");
	}
}

sub EVENT_ITEM {
	#:: Match three 12441 - Watcher Signal Torch
	if (plugin::takeItems(12441 => 3)) {
		quest::say("Good work, $name. You are on your way to becoming a respected ally of the Iksar Empire. Keep up the good work. Take this reward for a job well done.");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(441, 3);		#:: + Legion of Cabilis
		quest::faction(440, 1);		#:: + Cabilis Residents
		quest::faction(445, 1);		#:: + Scaled Mystics
		quest::faction(442, 1);		#:: + Crusaders of Greenmist
		quest::faction(444, 1);		#:: + Swifttails
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Create a hash for storing cash - 20 to 100cp
		my %cash = plugin::RandomCash(20, 100);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

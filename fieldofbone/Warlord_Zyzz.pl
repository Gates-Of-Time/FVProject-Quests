sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("There is little time for talk. There are plenty of [tiny invaders]. Do your part and exterminate as many as you can. All of Cabilis shall look favorably upon you in the long run.");
	}
	elsif ($text=~/tiny invaders/i) {
		quest::say("The small scorpions have been turning up everywhere!! One can hardly sleep when thinking of the little monsters. Please crush as many as you can for the greater good. I will even pay a bounty for every four Scorpion Pincers you return.");
	}
}

sub EVENT_ITEM {
	#:: Match four 12650 - Scorpion Pincer
	if (plugin::takeItems(12650 => 4)) {
		quest::say("Magnificent!! The more pincers I get the lesser scorpions there are. Here. Take the bounty.");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(441, 3);		#:: + Legion of Cabilis
		quest::faction(440, 1);		#:: + Cabilis Residents
		quest::faction(445, 1);		#:: + Scaled Mystics
		quest::faction(442, 1);		#:: + Crusaders of Greenmist
		quest::faction(444, 1);		#:: + Swifttails
		#:: Grant a moderate amount of experience
		quest::exp(2500);
		#:: Create a hash for storing cash - 10 to 40cp
		my %cash = plugin::RandomCash(10, 40);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match a 18213 - Note to Iksar Lord
  	elsif (plugin::takeItems(18213 => 1)) {
		quest::say("Ah!! Good to have you on board. We lack strong young recruits such as yourself. Take this box. Your task is to seek milita skeletons near this gate. Apparently, someone or something has been raising militia corpses and they now walk the land not knowing the difference between friend or foe. They even continue using their old call, 'Halt Who goes there?'. Fill and combine within the box their charred bone shards and return the filled box to me for your geozite tool.");
		#:: Give a 17996 - Charred Bone Box
		quest::summonitem(17996);
	}
	#:: Match a 12668 - Full Charred Bone Box
	elsif (plugin::takeItems(12668 => 1)) {
		quest::say("Great work!! You have helped keep the gate safe. I reward you with the geozite tool. You may find its purpose within Cabils' warriors guild. A true Iksar warrior should always have one.");  #text not from live
		#:: Give a 12657 - Geozite Tool
		quest::summonitem(12657);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

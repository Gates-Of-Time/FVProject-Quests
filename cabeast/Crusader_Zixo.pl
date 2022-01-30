sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Do you come to me empty handed, knave? Did you lose your pike?");
	}
	elsif ($text=~/no/i) {
		#:: Made up
		quest::say("Ah... Yes... very good! Continue to work at this pace and the enemies of the Legion of Cabilis will fall beneath the blades of Cazic-Thule! Now move out... To Victory!");
	}
	elsif ($text=~/yes/i) {
		quest::emote("roars at you, heat pouring into his dead eyes. 'Do you know what this means, wretch? I will give you one chance to prevent your floating near my feet. Take this tome and go speak to the Toilmaster. MOVE, while you still have breath.");
		#:: Give a 18271 - Ragged Book
		quest::summonitem(18271);
	}
}

sub EVENT_ITEM {
	if (plugin::takeItems(18272 => 1, 24770 => 1)) { 
		quest::emote("takes the bag and tome from you and in return gives you the item that you have been thinking of all of this time.");
		quest::say("Lucky you. You have earned a second chance. Praise Cazic-Thule!");
		#:: Give a 5130 - Partisan's Pike
		quest::summonitem(5130);
		#:: Ding!
		quest::ding();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

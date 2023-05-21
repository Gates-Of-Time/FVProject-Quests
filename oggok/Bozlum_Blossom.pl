#:: Test of Illusion - Enchanter Epic 1.0 - Snow Blossoms
#:: Items: 10628, 10629, 10630, 10609

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("heaves a great sigh.");
	}
	if ($text=~/wrong/i) {
		quest::say("Boz like to grow perty flowers in her garden. But garden no more.");
	}
	if ($text=~/garden/i) {
		quest::say("Boz not know what happen. Only see der biggins footprints in it. Me perty sure my puppy not smash garden. He has tiny feets. Right, puppy?");
		quest::me("Bozlum Blossom's pet wags his tail.");
	}
}

sub EVENT_ITEM {
	if (plugin::takeItems(10628 => 1)) {
		quest::emote("writes something down on a piece of parchment.");
		quest::say("You go tell dat Brokk dat he owe me big for smushing garden. Make him read dis.");
		#:: Give item 10629 - Scribbled Parchment
		quest::summonitem(10629);
	}
	elsif (plugin::takeItems(10630 => 1)) {
		quest::say("'Oh, dat silly Brokk. He sent me too many of these perty flowers. Me not know where put them all. Here, you take some cause you help Bozlum. Me like you. Flowers make you smell perty, too.");
		quest::exp(100);
		#:: Give Item 10609 - Snow Blossoms
		quest::summonitem(10609);
	}
	
	#:: Return unused items
	plugin::returnUnusedItems();
}

# EOF Zone: oggok ID: 49023 NPC: Bozlum_Blossom
